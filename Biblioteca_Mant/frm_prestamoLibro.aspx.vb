Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
Imports CapaNegocio
Imports Microsoft.Reporting.WebForms

Public Class frm_prestamoLibro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("menu") = "frmPrestamoLibro"

        If f_validarSesion() = True Then
            If Not Page.IsPostBack Then
                Try
                    'Para saber si viene del frmInicio
                    If Session("frm_reserva") = "1" Then
                        cls_Metodos.culture_info()
                        Validacion("frm_inicio")
                        cargarLista50()
                    Else
                        cls_Metodos.culture_info()
                        Validacion("Page_Load")
                        cargarLista50()
                    End If
                Catch ex As Exception
                    lbl_LectorNoSeEncontro.Text = ex.Message 'Muestra mensaje original del error.
                    lbl_LectorNoSeEncontro.ForeColor = System.Drawing.Color.Red
                End Try
            End If
        Else
            Session("Expiro") = "1"
            Response.Redirect("frmLogin.aspx?Id_expiro=Su sesión ha expirado, ingrese nuevamente sus accesos")
        End If
    End Sub

    '=====================FUNCION PARA VALIDAR SESION====================================
    Public Function f_validarSesion() As Boolean
        If Session("s_CodUsuario") Is Nothing Then
            Return False
        End If
        Return True
    End Function

    Private Sub Validacion(ByVal Validacion As String) 'Valida Botones, campos, radiobuttons
        Dim tupla_FechaHora As Tuple(Of String, String) = Formato_Fecha_Hora()
        Dim dtHora As Date = Date.Now
        Dim hora As String = dtHora.Hour.ToString("00")
        Dim minuto As String = dtHora.Minute.ToString("00")
        Dim segundo As String = dtHora.Second.ToString("00")
        lbl_horaPrestamo.Text = hora & ":" & minuto & ":" & segundo

        'Validaciones de los botones de acción
        If Validacion = "Gdv_Lista_Select" Then
            'Buttons
            btnCancelar.Enabled = True
            btnGrabar2.Enabled = False
            btnGrabar2.Visible = True
            btnGrabar.Visible = False
            btnModificar.Enabled = True
            btn_BuscarPrestamo.Enabled = False
            btnModificar.Visible = True
            btnGrabar.Visible = False
            btnVerFicha2.Enabled = True
            'txt
            txt_FechaPrestamo.ReadOnly = True
            txt_FechaDevolucion.ReadOnly = True
            txt_FechaReserva.ReadOnly = True
            'cbox
            cbox_EstadoPrestamo.Enabled = False
        ElseIf Validacion = "Agregar" Then
            'Buttons
            btnCancelar.Enabled = True
            btnGrabar.Enabled = True
            btnGrabar.Visible = True
            btnGrabar2.Enabled = False
            btnGrabar2.Visible = False
            btnModificar.Enabled = False
            btn_BuscarPrestamo.Enabled = False
            btnGrabar.Enabled = True
            btnCancelar.Enabled = True
            btn_BuscarPrestamo.Enabled = False
            'txt
            txt_FechaPrestamo.Text = (tupla_FechaHora.Item1)

        ElseIf Validacion = "Modificar" Then

            If rdb_devolucion.Checked Then
                btnModificar.Enabled = False
                btnCancelar.Enabled = True
                btnGrabar2.Enabled = True
                btnGrabar2.Visible = True
                btnGrabar.Enabled = False
                btnGrabar.Visible = False
                btn_BuscarPrestamo.Enabled = False

                txt_FechaPrestamo.ReadOnly = False
                txt_FechaDevolucion.ReadOnly = False
                txt_FechaReserva.ReadOnly = False

                cbox_EstadoPrestamo.Enabled = True

            ElseIf rdb_PrestarReservasAnul.Checked Then
                btnModificar.Enabled = False
                btnCancelar.Enabled = True
                btnGrabar2.Enabled = True
                btnGrabar2.Visible = True
                btnGrabar.Enabled = False
                btnGrabar.Visible = False
                btn_BuscarPrestamo.Enabled = False
                btnMas8.Enabled = True
                txt_FechaPrestamo.ReadOnly = False
                txt_FechaDevolucion.ReadOnly = False
                txt_FechaDevolucion.Enabled = True
                txt_FechaReserva.ReadOnly = False
                cbox_EstadoPrestamo.Enabled = True
            End If

        ElseIf Validacion = "Page_Load" Then
            txt_valorLector.MaxLength = 8
            txt_valorLector.Attributes.Add("onKeyup", "onKeyup = verifPrest(this);")
            txt_ValorLibro.MaxLength = 5
            txt_ValorLibro.Attributes.Add("onKeyup", "onKeyup = verificarBusqLibro(this);")
            txt_FechaPrestamo.Text = (tupla_FechaHora.Item1) 'Formato de fecha

            Session("sBusqueda") = "0"
            Session("vBusqueda") = ""
            Session("vBandera") = ""

            txt_A_apeYNombres.Disabled = True
            txt_A_tituloLibro.Disabled = True
            txt_codEmpleado.Enabled = False
            txt_A_NombreEmpleado.Disabled = True
            txt_codRegistroLibro.Enabled = False
            txt_A_Librotitulo.Disabled = True
            txt_FechaReserva.ReadOnly = True
            txt_FechaReserva.Visible = False
            lbl_fechaReserva.Visible = False

            chk_PProvincia.Enabled = False
            chk_PEspecial.Enabled = False

            cbox_EstadoPrestamo.SelectedValue = "1"
            cbox_EstadoPrestamo.Enabled = False

            btn_Limpiar_BusquedaLector.Disabled = False
            btn_BuscarLector.Enabled = True
            btn_HistorialLector.Enabled = False
            btn_historialLibro.Enabled = False

            fs_lector.Visible = False
            fs_libro.Visible = True
            fs_seleccionados.Visible = True
            fs_prestLector.Visible = False
            fs_prestLibro.Visible = False
            fs_prestamo.Visible = False
            fs_botones.Visible = False
            fs_buscar.Visible = False
            fs_gvPrestamos.Visible = False

            btn_Libro.Attributes.Add("Style", "border-bottom:none; z-index:0;")
            btn_Lector.Attributes.Remove("Style")
            btn_Lector.Disabled = False
            btn_Libro.Disabled = True
            btn_Prestamo.Disabled = False
            btn_Devolver.Visible = False
            btn_ReservasOAnular.Visible = False
            btnGrabar2.Visible = False
            btnVerFicha.Enabled = False
            btnModificar.Visible = False

            pnl_Visor.Visible = False

        ElseIf Validacion = "frm_inicio" Then
            Busqueda("prestamo")
            rdb_PrestarReservasAnul.Checked = True
            txt_codEmpleado.Enabled = False
            txt_codEmpleado.Text = Session("frm_reserva_codEmpl")
            txt_A_NombreEmpleado.Disabled = True
            txt_A_NombreEmpleado.InnerText = Session("frm_reserva_nomEmpl")
            txt_codRegistroLibro.Enabled = False
            txt_codRegistroLibro.Text = Session("frm_reserva_codLibro")
            txt_A_Librotitulo.Disabled = True
            txt_A_Librotitulo.InnerText = Session("frm_reserva_tituloLib")

            txt_CodPrestamo2.Text = Session("frm_reserva_id")
            lbl_IdPrestamo.Text = Session("frm_reserva_id")
            txt_CodPrestamo2.Enabled = False
            txt_FechaPrestamo.Text = (tupla_FechaHora.Item1) 'Formato de fecha
            txt_FechaPrestamo.Enabled = False
            txt_FechaDevolucion.Text = ""
            txt_FechaDevolucion.Enabled = True
            txt_FechaReserva.Enabled = False
            txt_FechaReserva.Text = Session("frm_reserva_fechaReser")

            btnMas8.Enabled = True

            lbl_Busqueda.Text = ""
            lbl_Valida.Text = ""
            lblNomDia.Text = ""

            chk_PEspecial.Enabled = False
            chk_PEspecial.Checked = False
            chk_PProvincia.Enabled = False
            chk_PProvincia.Checked = False

            cbox_EstadoPrestamo.SelectedIndex = -1
            cbox_EstadoPrestamo.Items.FindByValue("1").Selected = True

            fs_lector.Visible = False
            fs_libro.Visible = False
            fs_seleccionados.Visible = True
            fs_prestLector.Visible = True
            fs_prestLibro.Visible = True
            fs_prestamo.Visible = True
            fs_botones.Visible = True
            fs_gvPrestamos.Visible = True
            fs_buscar.Visible = True
            fs_botones.Visible = False
            fs_seleccionados.Visible = False

            btn_Lector.Visible = False
            btn_Libro.Visible = False
            btn_Prestamo.Visible = False
            btn_Devolver.Visible = False
            btn_ReservasOAnular.Visible = True
            btn_BuscarPrestamo.Enabled = True
            btn_BuscarPrestamo.Visible = True
            btnModificar.Visible = False
            btnGrabar2.Visible = True
            btnVerFicha2.Visible = True
            btnVerFicha2.Enabled = False
            btn_Prestamo.Disabled = True
            btn_Lector.Disabled = True
            btn_Libro.Disabled = True
            btn_ReservasOAnular.Disabled = True
            btn_ReservasOAnular.Attributes.Add("Style", "border-bottom:none; z-index:0;")
            cbox_EstadoPrestamo.Enabled = False
            lbl_TituloPrestamo.Text = "Devolver"
            txt_FechaPrestamo.Enabled = False

        ElseIf Validacion = "Grabado" Then
            txt_codEmpleado.ReadOnly = True
            txt_A_NombreEmpleado.Disabled = True
            txt_codRegistroLibro.ReadOnly = True
            txt_A_Librotitulo.Disabled = True
            txt_FechaPrestamo.ReadOnly = True
            txt_FechaDevolucion.ReadOnly = True

            btn_BuscarLector.Enabled = True
            btn_HistorialLector.Enabled = False

            fs_lector.Visible = False
            fs_libro.Visible = False
            fs_seleccionados.Visible = True
            fs_prestLector.Visible = True
            fs_prestLibro.Visible = True
            fs_prestamo.Visible = True
            fs_botones.Visible = True

        ElseIf Validacion = "Modificado" Then
            txt_A_apeYNombres.Disabled = True
            txt_A_tituloLibro.Disabled = True
            txt_codEmpleado.ReadOnly = True
            txt_A_NombreEmpleado.Disabled = True
            txt_codRegistroLibro.ReadOnly = True
            txt_A_Librotitulo.Disabled = True

            btn_BuscarLector.Enabled = True
            btn_HistorialLector.Enabled = False

            fs_lector.Visible = False
            fs_libro.Visible = False
            fs_seleccionados.Visible = True
            fs_prestLector.Visible = True
            fs_prestLibro.Visible = True
            fs_prestamo.Visible = True
            fs_gvPrestamos.Visible = True

            btn_Lector.Attributes.Add("Style", "border-bottom:none; z-index:0;")
            btn_Lector.Disabled = True
            btn_Libro.Disabled = False
            btn_Prestamo.Disabled = False
        End If
    End Sub



    Private Function Formato_Fecha_Hora() As Tuple(Of String, String)
        'Formato de fecha
        Dim dd As String = Day(Now)
        If Len(dd) = 1 Then dd = "0" & dd
        Dim mm As String = Month(Now)
        If Len(mm) = 1 Then mm = "0" & mm

        Dim aaaa As String = Year(Now)
        Dim formato_Fecha = dd & "/" & mm & "/" & aaaa

        'Formato de hora
        Dim hor As String = Hour(Now)
        Dim min As String = Minute(Now)
        Dim seg As String = Second(Now)

        If Len(hor) = 1 Then hor = "0" & hor
        If Len(min) = 1 Then min = "0" & min
        If Len(seg) = 1 Then seg = "0" & seg

        Dim formato_hora = hor & ":" & min & ":" & seg
        Return New Tuple(Of String, String)(formato_Fecha, formato_hora)
    End Function

    '=====================FUNCIONES DE LOS BOTONES TAB==============================
    Private Sub btn_Lector_ServerClick(sender As Object, e As EventArgs) Handles btn_Lector.ServerClick
        fs_lector.Visible = True
        fs_libro.Visible = False
        fs_seleccionados.Visible = True
        fs_prestLector.Visible = False
        fs_prestLibro.Visible = False
        fs_prestamo.Visible = False
        fs_botones.Visible = False
        fs_gvPrestamos.Visible = False

        btn_Lector.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_Libro.Attributes.Remove("Style")
        btn_Prestamo.Attributes.Remove("Style")
        btn_Lector.Disabled = True
        btn_Libro.Disabled = False
        btn_Prestamo.Disabled = False
    End Sub

    Private Sub btn_Libro_ServerClick(sender As Object, e As EventArgs) Handles btn_Libro.ServerClick
        fs_lector.Visible = False
        fs_libro.Visible = True
        fs_seleccionados.Visible = True
        fs_prestLector.Visible = False
        fs_prestLibro.Visible = False
        fs_prestamo.Visible = False
        fs_botones.Visible = False
        fs_gvPrestamos.Visible = False

        btn_Lector.Attributes.Remove("Style")
        btn_Libro.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_Prestamo.Attributes.Remove("Style")
        btn_Lector.Disabled = False
        btn_Libro.Disabled = True
        btn_Prestamo.Disabled = False
    End Sub

    Private Sub btn_Prestamo_ServerClick(sender As Object, e As EventArgs) Handles btn_Prestamo.ServerClick
        If Len(Trim(txt_A_apeYNombres.InnerText)) = 0 Or Len(Trim(txt_A_tituloLibro.InnerText)) = 0 Then
            lbl_validaLibro.Visible = True
            lbl_validaLibro.ForeColor = System.Drawing.Color.Red
            lbl_validaLibro.Text = "Seleccione el Titulo de libro"
        Else
            fs_lector.Visible = False
            fs_libro.Visible = False
            fs_seleccionados.Visible = True
            fs_prestamo.Visible = True
            fs_prestLector.Visible = True
            fs_prestLibro.Visible = True
            fs_botones.Visible = True
            fs_buscar.Visible = False
            fs_gvPrestamos.Visible = False

            btn_Lector.Attributes.Remove("Style")
            btn_Libro.Attributes.Remove("Style")
            btn_Prestamo.Attributes.Add("Style", "border-bottom:none; z-index:0;")
            btn_Lector.Disabled = False
            btn_Libro.Disabled = False
            btn_Prestamo.Disabled = True

            Dim dt_NumReg As DataTable = cls_Metodos.validacionContadorIdPrestamo.Tables(0) 'lleno el datatable "dt"
            Dim vValor_Maximo As String = Val(dt_NumReg.Rows(0)("Num_Reg")).ToString()

            txt_CodPrestamo2.Text = vValor_Maximo + 1
            chk_PProvincia.Enabled = True
            chk_PEspecial.Enabled = True
        End If
    End Sub

    '=====================RADIOBUTTON NUEVO PRÉSTAMO==============================
    Protected Sub rdb_NuevoPrestamo_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_NuevoPrestamo.CheckedChanged
        Response.Redirect("frm_prestamoLibro.aspx")
    End Sub

    '=====================RADIOBUTTON DEVOLUCIÓN==============================
    Protected Sub rdb_devolucion_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_devolucion.CheckedChanged

        txt_CodPrestamo2.Text = ""
        txt_FechaPrestamo.Text = ""
        txt_FechaDevolucion.Text = ""
        lbl_Busqueda.Text = ""
        lbl_Valida.Text = ""
        lblNomDia.Text = ""

        chk_PEspecial.Enabled = False
        chk_PEspecial.Checked = False
        chk_PProvincia.Enabled = False
        chk_PProvincia.Checked = False

        cbox_EstadoPrestamo.SelectedIndex = -1
        cbox_EstadoPrestamo.Items.FindByValue("4").Selected = True

        fs_lector.Visible = False
        fs_libro.Visible = False
        fs_seleccionados.Visible = True
        fs_prestLector.Visible = True
        fs_prestLibro.Visible = True
        fs_prestamo.Visible = True
        fs_botones.Visible = True
        fs_gvPrestamos.Visible = True
        fs_buscar.Visible = True
        fs_botones.Visible = False
        fs_seleccionados.Visible = False

        btn_Lector.Visible = False
        btn_Libro.Visible = False
        btn_Prestamo.Visible = False
        btn_Devolver.Visible = True
        btn_ReservasOAnular.Visible = False
        btn_BuscarPrestamo.Enabled = True
        btn_BuscarPrestamo.Visible = True
        btnModificar.Visible = False
        btnGrabar2.Visible = False
        btnVerFicha2.Visible = True
        btnVerFicha2.Enabled = False
        btn_Prestamo.Disabled = True
        btn_Lector.Disabled = True
        btn_Libro.Disabled = True
        btn_Devolver.Disabled = True
        btn_Devolver.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_Lector.Attributes.Remove("Style")
        btn_Libro.Attributes.Remove("Style")

        cbox_EstadoPrestamo.Enabled = False

        lbl_TituloPrestamo.Text = "Devolver"

        txt_FechaPrestamo.Text = ""
        txt_FechaPrestamo.Enabled = False
        txt_FechaDevolucion.Text = ""
        txt_FechaDevolucion.Enabled = False
        btnMas8.Enabled = False
        txt_codEmpleado.Text = ""
        txt_A_NombreEmpleado.InnerText = ""
        txt_codRegistroLibro.Text = ""
        txt_A_Librotitulo.InnerText = ""
        txt_A_apeYNombres.InnerText = ""
        txt_A_tituloLibro.InnerText = ""
        cargarLista50()
    End Sub
    '=====================RADIOBUTTON PRESTAR RESERVAS Y ANULACIÓN==============================
    Protected Sub rdb_PrestarReservasAnul_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_PrestarReservasAnul.CheckedChanged
        txt_CodPrestamo2.Text = ""
        txt_FechaPrestamo.Text = ""
        txt_FechaDevolucion.Text = ""
        lbl_Busqueda.Text = ""
        lbl_Valida.Text = ""
        lblNomDia.Text = ""

        chk_PEspecial.Enabled = False
        chk_PEspecial.Checked = False
        chk_PProvincia.Enabled = False
        chk_PProvincia.Checked = False

        fs_lector.Visible = False
        fs_libro.Visible = False
        fs_seleccionados.Visible = True
        fs_prestLector.Visible = True
        fs_prestLibro.Visible = True
        fs_prestamo.Visible = True
        fs_botones.Visible = True
        fs_gvPrestamos.Visible = True
        fs_buscar.Visible = True
        fs_botones.Visible = False
        fs_seleccionados.Visible = False

        btn_Lector.Visible = False
        btn_Libro.Visible = False
        btn_Prestamo.Visible = False
        btn_Devolver.Visible = False
        btn_ReservasOAnular.Visible = True
        btn_BuscarPrestamo.Enabled = True
        cbox_EstadoPrestamo.SelectedValue = "-1"
        cbox_EstadoPrestamo.Enabled = False
        txt_FechaPrestamo.Enabled = False
        txt_FechaDevolucion.Enabled = False
        btnMas8.Enabled = False
        btnGrabar2.Visible = False
        btnModificar.Visible = False
        btnVerFicha2.Enabled = False
        btnVerFicha2.Visible = True
        btn_Prestamo.Disabled = True
        btn_Lector.Disabled = True
        btn_Libro.Disabled = True
        btn_ReservasOAnular.Disabled = True
        btn_ReservasOAnular.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_Lector.Attributes.Remove("Style")
        btn_Libro.Attributes.Remove("Style")

        lbl_TituloPrestamo.Text = "Prestar reservas"

        txt_codEmpleado.Text = ""
        txt_A_NombreEmpleado.InnerText = ""
        txt_codRegistroLibro.Text = ""
        txt_A_Librotitulo.InnerText = ""
        txt_A_apeYNombres.InnerText = ""
        txt_A_tituloLibro.InnerText = ""
        cargarLista50()
    End Sub


    '==============BOTON BUSCAR LECTOR====================================='
    Protected Sub btn_BuscarLector_Click(sender As Object, e As EventArgs) Handles btn_BuscarLector.Click 'Realiza la busqueda
        Session("sBusqueda") = "1"
        Session("vBusqueda") = ""
        Session("vBandera") = ""
        Dim tipoBusqueda As String = "lector"
        Try
            Busqueda(tipoBusqueda)
            lbl_Busqueda.Text = txt_valorLector.Text
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btn_BuscarLector.Visible = False
        End Try
    End Sub

    '==============BOTON BUSCAR LIBRO====================================='
    Protected Sub btn_BuscarLibro_Click(sender As Object, e As EventArgs) Handles btn_BuscarLibro.Click 'Realiza la busqueda
        Dim tipoBusqueda As String = "libro"
        Try
            Busqueda(tipoBusqueda)
            lbl_Busqueda.Text = txt_valorLector.Text
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btn_BuscarLector.Visible = False
        End Try
    End Sub

    '==============BOTON BUSCAR LECTOR====================================='
    Protected Sub btn_BuscarPrestamo_Click(sender As Object, e As EventArgs) Handles btn_BuscarPrestamo.Click 'Realiza la busqueda
        Session("sBusqueda") = "1"
        Session("vBusqueda") = ""
        Session("vBandera") = ""
        Dim tipoBusqueda As String = "prestamo"
        Try
            Busqueda(tipoBusqueda)
            lbl_Busqueda.Text = txt_valorLector.Text
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btn_BuscarLector.Visible = False
        End Try
    End Sub

    '==============BOTON GRABAR PRESTAMO=====================================
    Protected Sub btnGrabar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnGrabar.Click
        Try
            Call grabar("Grabar1")
        Catch ex As Exception
            lbl_validaNuevoPrest.Text = ex.Message
            lbl_validaNuevoPrest.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    '==============BOTON GRABAR2 PRESTAMO=====================================
    Protected Sub btnGrabar2_Click(sender As Object, e As EventArgs) Handles btnGrabar2.Click 'ACTUALIZA EL MOVIMIENTO
        Try
            Call grabar("Grabar2")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btn_BuscarPrestamo.Visible = False
        End Try
    End Sub

    '==============BOTON MODIFICAR===================================='
    Private Sub btn_Modificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange
            lbl_Valida.Text = "Modificando registro..."
            Validacion("Modificar")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btn_BuscarPrestamo.Visible = False
        End Try
    End Sub

    '==============BOTON CANCELAR====================================='
    Private Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click 'Recarga la pagina desde cero
        Try
            Response.Redirect("frm_prestamoLibro.aspx")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btnCancelar2_Click(sender As Object, e As EventArgs) Handles btnCancelar2.Click 'Recarga la pagina desde cero
        Try
            Response.Redirect("frm_prestamoLibro.aspx")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_HistorialLector_Click(sender As Object, e As EventArgs) Handles btn_HistorialLector.Click
        Try
            Dim v_FormatoReporte As String = "PDF"
            Exportar_Reporte(v_FormatoReporte, "rptFichaHistoriaLectorPrest")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_historialLibro_Click(sender As Object, e As EventArgs) Handles btn_historialLibro.Click
        Try
            Dim v_FormatoReporte As String = "PDF"
            Exportar_Reporte(v_FormatoReporte, "rptFichaHistoriaLibroPrest")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_validaLibro.Text = ex.Message 'Muestra mensaje original del error.
            lbl_validaLibro.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub


    Private Sub btnVerFicha_Click(sender As Object, e As EventArgs) Handles btnVerFicha.Click
        Try
            Dim v_FormatoReporte As String = "PDF"
            Exportar_Reporte(v_FormatoReporte, "rptFichaPrestamo")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btnVerFicha2_Click(sender As Object, e As EventArgs) Handles btnVerFicha2.Click
        Try
            Dim v_FormatoReporte As String = "PDF"
            Exportar_Reporte(v_FormatoReporte, "rptFichaPrestamo")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btnMas8_ServerClick(sender As Object, e As EventArgs) Handles btnMas8.Click

        Dim año As String = Right((txt_FechaPrestamo.Text), 4)
        Dim mes As String = Trim(txt_FechaPrestamo.Text).Substring(3, 2)
        Dim dia As String = Left(Trim(txt_FechaPrestamo.Text), 2)
        Dim fecha As String = dia & "/" & mes & "/" & año

        Try
            Dim fechadevo As Date = DateAdd(DateInterval.Day, +8, DateValue(fecha)) 'aumentar 8 días a la fecha obtenida 
            txt_FechaDevolucion.Text = fechadevo
            Dim nombDia As String = UCase(WeekdayName(Weekday(fechadevo)))
            Select Case nombDia
                Case "MONDAY"
                    lblNomDia.Text = "LUNES"
                Case "TUESDAY"
                    lblNomDia.Text = "MARTES"
                Case "WEDNESDAY"
                    lblNomDia.Text = "MIÉRCOLES"
                Case "THURSDAY"
                    lblNomDia.Text = "JUEVES"
                Case "FRIDAY"
                    lblNomDia.Text = "VIERNES"
                Case "SATURDAY"
                    lblNomDia.Text = "SÁBADO"
                Case "SUNDAY"
                    lblNomDia.Text = "DOMINGO"
                Case Else
                    lblNomDia.Text = nombDia
            End Select

            If nombDia = "SÁBADO" Or nombDia = "DOMINGO" Then
                lblNomDia.ForeColor = Drawing.Color.Red
            Else
                lblNomDia.ForeColor = Drawing.Color.Blue
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message
        End Try
    End Sub

    Protected Sub cBox_BusquedaLectorVAL(ByVal sender As Object, ByVal e As EventArgs) Handles cBox_BusquedaLector.SelectedIndexChanged
        txt_valorLector.Text = ""
        If cBox_BusquedaLector.SelectedIndex = 0 Then              'BÚSQUEDA POR COD EMPLEADO
            txt_valorLector.MaxLength = 8
            txt_valorLector.MaxLength = 8
            txt_valorLector.Attributes.Add("onKeyup", "onKeyup = verifPrest(this);")
            txt_valorLector.Attributes.Add("placeholder", "(Buscar por Cód de empleado)")
        ElseIf cBox_BusquedaLector.SelectedIndex = 1 Then          'BÚSQUEDA POR DNI
            txt_valorLector.MaxLength = 8
            txt_valorLector.Attributes.Add("onKeyup", "onKeyup = verifPrest(this);")
            txt_valorLector.Attributes.Add("placeholder", "(Buscar por DNI)")
        ElseIf cBox_BusquedaLector.SelectedIndex = 2 Then          'BÚSQUEDA POR APELLIDO O NOMBRE
            txt_valorLector.MaxLength = 20
            txt_valorLector.Attributes.Add("onKeyup", "onKeyup = verifPrest(this);")
            txt_valorLector.Attributes.Add("placeholder", "(Buscar por Apellido o Nombre)")
        End If
    End Sub

    Protected Sub txt_FechaDevolucion_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles txt_FechaDevolucion.TextChanged
        Try
            Dim nombDia As String = UCase(WeekdayName(Weekday(Trim(txt_FechaDevolucion.Text))))
            Select Case nombDia
                Case "MONDAY"
                    lblNomDia.Text = "LUNES"
                Case "TUESDAY"
                    lblNomDia.Text = "MARTES"
                Case "WEDNESDAY"
                    lblNomDia.Text = "MIÉRCOLES"
                Case "THURSDAY"
                    lblNomDia.Text = "JUEVES"
                Case "FRIDAY"
                    lblNomDia.Text = "VIERNES"
                Case "SATURDAY"
                    lblNomDia.Text = "SÁBADO"
                Case "SUNDAY"
                    lblNomDia.Text = "DOMINGO"
                Case Else
                    lblNomDia.Text = nombDia
            End Select

            If nombDia = "SÁBADO" Or nombDia = "DOMINGO" Then
                lblNomDia.ForeColor = Drawing.Color.Red
            Else
                lblNomDia.ForeColor = Drawing.Color.Blue
            End If

        Catch ex As Exception
            lbl_Valida.Text = ex.Message
            lbl_Valida.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    '==========================================FUNCION/PROCESO BUSCAR================================================================='
    Private Sub Busqueda(ByVal tipoBusqueda As String)
        '============================= BÚSQUEDA DE LECTOR =============================
        If tipoBusqueda = "lector" Then
            'Para espacios vacios
            If Len(Trim(txt_valorLector.Text)) = 0 Then
                lbl_LectorNoSeEncontro.ForeColor = System.Drawing.Color.Red
                lbl_LectorNoSeEncontro.Text = "Ingrese la búsqueda"
                lbl_LectorSeEncontro.Text = ""
                txt_valorLector.Text = ""
                txt_valorLector.Focus()
                txt_A_apeYNombres.InnerText = ""
                txt_A_tituloLibro.InnerText = ""
                imgLector.ImageUrl = "Imagenes/img_usuario.jpg"
                grv_Lector.DataBind()
                Exit Sub
            End If

            If cBox_BusquedaLector.SelectedIndex = 0 Or cBox_BusquedaLector.SelectedIndex = 1 Then
                If Len(Trim(txt_valorLector.Text)) > 0 And Len(Trim(txt_valorLector.Text)) < 7 Then
                    lbl_LectorSeEncontro.ForeColor = System.Drawing.Color.Red
                    lbl_LectorSeEncontro.Text = "Digite mínimo 7 caracteres"
                    txt_valorLector.Text = "" ' si ingresa esapacions vacios con la barra espaciadora
                    txt_valorLector.Focus()
                    Exit Sub
                End If
            End If
            lbl_LectorNoSeEncontro.Text = ""

            Dim BusquedaLector As String = txt_valorLector.Text     'Variable que guardara la cadena ingresada en el campo de busqueda
            Dim vBandera As String                                  'Variable que nos permitira diferenciar el tipo de busqueda

            If cBox_BusquedaLector.SelectedIndex = 0 Then              'BÚSQUEDA POR COD EMPLEADO
                vBandera = "1"
            ElseIf cBox_BusquedaLector.SelectedIndex = 1 Then          'BÚSQUEDA POR DNI
                vBandera = "2"
            ElseIf cBox_BusquedaLector.SelectedIndex = 2 Then          'BÚSQUEDA POR APELLIDO O NOMBRE
                vBandera = "3"
            End If

            Session("vBusqueda") = BusquedaLector
            Session("vBandera") = vBandera

            'GRIDVIEW
            Dim ds As DataSet = cls_Metodos.BuscarLector(BusquedaLector, vBandera)
            grv_Lector.DataSource = ds
            grv_Lector.DataBind()

            'RESULTADO DE BÚSQUEDA
            lbl_LectorSeEncontro.Visible = True
            lbl_LectorSeEncontro.ForeColor = System.Drawing.Color.Green
            lbl_LectorSeEncontro.Text = "Se encontró: " & ds.Tables(0).Rows.Count & " registro(s), selecciónelo"
            btn_HistorialLector.Enabled = True

            'PARA CERO REGISTROS ENCONTRADOS
            If ds.Tables(0).Rows.Count = 0 Then
                txt_A_apeYNombres.InnerText = ""
                imgLector.ImageUrl = "Imagenes/img_usuario.jpg"
                txt_valorLector.Focus()
                grv_Lector.DataBind()
            End If

            '============================= BÚSQUEDA DE LIBRO =============================
        ElseIf tipoBusqueda = "libro" Then
            imgDisponible.Visible = False
            'Para espacios vacios
            If Len(Trim(txt_ValorLibro.Text)) = 0 Then
                lbl_validaLibro.ForeColor = System.Drawing.Color.Red
                lbl_validaLibro.Text = "No se encontró registros"
                lbl_LectorSeEncontro.Text = ""
                txt_ValorLibro.Text = ""
                imgLibro.Src = "Imagenes/img_02libro.jpg"
                txt_ValorLibro.Focus()
                txt_A_tituloLibro.InnerText = ""
                Exit Sub
            End If

            Session("sBusqueda") = "1"
            Session("vBusqueda") = ""
            Session("vBandera") = ""

            lbl_validaLibro.Text = ""

            Dim ValorLibro As String = txt_ValorLibro.Text.Trim     'Variable que guardara la cadena ingresada en el campo de busqueda
            Dim vBandera As String                                  'Variable que nos permitira diferenciar el tipo de busqueda

            If cbox_CodRegistroLibro.SelectedIndex = 0 Then              'BÚSQUEDA POR COD REGISTRO
                vBandera = "1"
            ElseIf cbox_CodRegistroLibro.SelectedIndex = 1 Then          'BÚSQUEDA POR TÍTULO
                vBandera = "3"
            ElseIf cbox_CodRegistroLibro.SelectedIndex = 2 Then          'BÚSQUEDA POR AUTOR
                vBandera = "4"
            End If

            Session("vBusqueda") = ValorLibro
            Session("vBandera") = vBandera

            'GridView
            Dim ds As DataSet = cls_Metodos.BuscarLibro(ValorLibro, vBandera)

            grv_Libro.DataSource = ds
            grv_Libro.DataBind()
            lbl_validaLibro.Visible = True
            lbl_validaLibro.ForeColor = System.Drawing.Color.Green
            lbl_validaLibro.Text = "N registros: " & ds.Tables(0).Rows.Count

            btn_historialLibro.Enabled = True

            '============================= BÚSQUEDA DE PRÉSTAMO =============================
        ElseIf tipoBusqueda = "prestamo" Then

            Dim ValorPrestamo As String = txt_ValorPrestamo.Text    'Variable que guardara la cadena ingresada en el campo de busqueda
            Dim vBandera As String                                  'Variable que nos permitira diferenciar el tipo de busqueda

            If cboxBusqueda.SelectedValue = "0" Then                'BUSQUEDA POR COD EMPLEADO
                vBandera = "1"
            ElseIf cboxBusqueda.SelectedValue = "1" Then            'BUSQUEDA POR DNI --NO FUNCIONA
                vBandera = "2"
            ElseIf cboxBusqueda.SelectedValue = "2" Then            'BUSQUEDA POR APELLIDO O NOMBRE
                vBandera = "3"
            ElseIf cboxBusqueda.SelectedValue = "3" Then            'BUSQUEDA POR COD REGISTRO DE LIBRO
                vBandera = "4"
            End If

            Session("vBusqueda") = ValorPrestamo
            Session("vBandera") = vBandera

            'GRIDVIEW
            Dim ds As DataSet = cls_Metodos.BuscarPestamo(ValorPrestamo, vBandera)
            grv_Prestamo.DataSource = ds
            grv_Prestamo.DataBind()
            lbl_Valida.Visible = True
            lbl_Valida.ForeColor = System.Drawing.Color.Green
            lbl_Valida.Text = "N registros: " & ds.Tables(0).Rows.Count
        End If

    End Sub
    '========================================== MOSTRAR LOS 50 ULTIMOS REGISTROS DE LA TABLA MOVIMIENTO ============================
    Private Sub cargarLista50()
        grv_Prestamo.DataSource = cls_Metodos.Listar_Movimiento_Prestamo()
        grv_Prestamo.DataBind()
    End Sub

    '==========================================FUNCION/PROCESO GRABAR================================================================='
    Private Sub grabar(ByVal TipoGrabar As String)

        Dim tupla_FechaHora As Tuple(Of String, String) = Formato_Fecha_Hora()
        Dim v_IdPrestamo As String = lbl_IdPrestamo.Text.Trim
        Dim v_LectorCodEmpleado As String = txt_codEmpleado.Text.Trim
        Dim v_LectorNombre As String = txt_A_NombreEmpleado.InnerText.Trim
        Dim v_LibroCodRegistro As String = txt_codRegistroLibro.Text
        Dim v_LibroTitulo As String = txt_A_Librotitulo.InnerText
        Dim v_CodClasif As String = lbl_codClasif.Text
        Dim v_FechaPrestamo As String = txt_FechaPrestamo.Text.Trim
        Dim v_HoraPrestamo As String = lbl_horaPrestamo.Text.Trim

        'Dim v_FechaDevolucion As String = txt_FechaDevolucion.Text.Trim
        Dim v_FechaDevolucion As String
        If (cbox_EstadoPrestamo.SelectedValue = "1") Or (cbox_EstadoPrestamo.SelectedValue = "4") Then
            v_FechaDevolucion = txt_FechaDevolucion.Text.Trim
        End If

        Dim v_FechaReserva As String = txt_FechaReserva.Text.Trim
        Dim v_TipoOperacion As String = cbox_EstadoPrestamo.SelectedValue

        'ddl Anulacion
        Dim v_FechaAnulacion As String
        If (cbox_EstadoPrestamo.SelectedValue = "5") Then
            lbl_FechaAnulacion.Text = (tupla_FechaHora.Item1)
            v_FechaAnulacion = lbl_FechaAnulacion.Text
        End If

        'checkbox de prestamo a provincia
        Dim v_PrestamoProvincia As String
        If (chk_PProvincia.Checked = True) Then
            v_PrestamoProvincia = "1"
        Else
            v_PrestamoProvincia = "0"
        End If

        'checkbox de prestamos especiales
        Dim v_PrestamoEspeciales As String
        If (chk_PEspecial.Checked = True) Then
            v_PrestamoEspeciales = "1"
        Else
            v_PrestamoEspeciales = "0"
        End If

        If cbox_EstadoPrestamo.SelectedValue = "0" Or cbox_EstadoPrestamo.SelectedValue = "1" Or cbox_EstadoPrestamo.SelectedValue = "0" Then
            If txt_FechaDevolucion.Text = "" Then
                lbl_Valida.Text = "Debe indicar la fecha de devolución en prestar Reserva"
                lbl_Valida.ForeColor = System.Drawing.Color.Red
                Exit Sub
            End If
        End If

        If TipoGrabar = "Grabar1" Then                      'NUEVO PRÉSTAMO
            cls_Metodos.Registrar_Prestamo(v_LectorCodEmpleado, v_LectorNombre,
                                           v_LibroCodRegistro, v_LibroTitulo, v_CodClasif,
                                           v_FechaPrestamo, v_HoraPrestamo, v_FechaDevolucion,
                                           v_TipoOperacion,
                                           v_PrestamoProvincia, v_PrestamoEspeciales)         'Se realiza el insert a la tabla Movimientos
            btnGrabar.Enabled = False
            Validacion("Grabado")
            lbl_validaNuevoPrest.ForeColor = System.Drawing.Color.Green
            lbl_validaNuevoPrest.Visible = True
            lbl_validaNuevoPrest.Text = "Registro agregado correctamente"
            btnVerFicha.Enabled = True
            btnVerFicha.Visible = True

        ElseIf TipoGrabar = "Grabar2" Then                      'MODIFICAR REGISTRO DEVOLUCION, RESERVA
            cls_Metodos.Actualizar_Prestamo(v_IdPrestamo, v_LibroCodRegistro, v_FechaPrestamo,
                                            v_FechaDevolucion, v_TipoOperacion, v_FechaAnulacion)   'Se realiza el update a la tabla Movimiento
            btnGrabar2.Enabled = False
            Validacion("Modificado")
            lbl_Valida.ForeColor = System.Drawing.Color.Green
            lbl_Valida.Visible = True
            lbl_Valida.Text = "Registro actualizado correctamente"
            cargarLista50()
        End If
    End Sub


    'IMAGEN DE LECTOR
    Public Function f_FormatoImagen(ByVal Foto As Byte()) As String 'Función para obtener imagen formateada
        Return "data:image/jpg;base64," + Convert.ToBase64String(Foto)
    End Function

    Private Function validarImagen(ByVal RowImagen As Object, ByVal Rowtype As String) 'Valida y formatea el campo imagen
        Dim imagen As String
        If RowImagen IsNot System.DBNull.Value Then
            If Rowtype = 1 Then
                imagen = f_FormatoImagen(RowImagen)
            ElseIf Rowtype = 2 Then
                imagen = Convert.ToBase64String(RowImagen)
            End If
        Else
            imagen = ""
        End If
        Return imagen
    End Function


    'IMAGEN DE LIBRO
    Public Function verificarArchivo(ByVal rutaFile As String) As Boolean
        Dim web_response As HttpWebResponse = Nothing
        Try
            Dim web_request As HttpWebRequest = HttpWebRequest.Create("http:" & rutaFile)
            web_response = DirectCast(web_request.GetResponse(), HttpWebResponse)
            Return True
        Catch ex As Exception
            Return False
        Finally
            If Not (web_response Is Nothing) Then web_response.Close()
        End Try
    End Function

    Private Sub Listar_RegistroLibro(ByVal v_CodRegistro As String) 'Funcion/procedimiento para listar movimiento sea el último o el Seleccionado
        Dim dt_Movimiento As DataTable

        '--------------Mostrará en las casillas el registro seleccionado de la grilla-----------
        dt_Movimiento = CapaNegocio.cls_Metodos.ListarFormLibroGridView("registroSeleccionado", v_CodRegistro).Tables(0) 'Cargo dt_Lista

        '-----------Variables que toman los datos del datatable para pasarlas a las casillas respectivas--------
        Dim c_cCodRegistro As String = dt_Movimiento.Rows(0)("cLibro_CodNumerico").ToString()
        Dim c_cTitulo As String = dt_Movimiento.Rows(0)("cLibro_Titulo").ToString()
        Dim c_cCodClasif As String = dt_Movimiento.Rows(0)("cLibro_CodClasificacion").ToString()
        Dim c_cEstadoMovimiento As String = dt_Movimiento.Rows(0)("cEstado_libro").ToString

        If c_cEstadoMovimiento = "4" Or c_cEstadoMovimiento = "" Then
            lbl_validaLibro.Visible = True
            lbl_validaLibro.ForeColor = System.Drawing.Color.Green
            lbl_validaLibro.Text = "Este libro se encuentra disponible"
            btn_Prestamo.Disabled = False
            imgDisponible.Src = "~/Imagenes/disponible_PC3.JPG"
        ElseIf c_cEstadoMovimiento = "1" Then
            lbl_validaLibro.Visible = True
            lbl_validaLibro.ForeColor = System.Drawing.Color.Red
            lbl_validaLibro.Text = "Este libro ya fue prestado"
            btn_Prestamo.Disabled = True
            imgDisponible.Src = "~/Imagenes/prestado_PC1.JPG"
        ElseIf c_cEstadoMovimiento = "0" Then
            lbl_validaLibro.Visible = True
            lbl_validaLibro.ForeColor = System.Drawing.Color.Red
            lbl_validaLibro.Text = "Este libro ya esta Reservado"
            btn_Prestamo.Disabled = False
            imgDisponible.Src = "~/Imagenes/SELLO_RESERVADO.JPG"
        End If

        If True Then
            imgLibro.Src = vRutaPortada & Trim(v_CodRegistro) & "/car.jpg"
        Else
            imgLibro.Src = noPortada & "9999_sinportada.jpg"
        End If

        txt_A_tituloLibro.InnerText = c_cTitulo.Trim
        lbl_codClasif.Text = c_cCodClasif.Trim
        txt_codRegistroLibro.Text = c_cCodRegistro.Trim
        txt_A_Librotitulo.InnerText = c_cTitulo.Trim
    End Sub


    Private Sub Listar_RegistroLector(ByVal v_CodEmpleado As String) 'Funcion/procedimiento para listar movimiento sea el último o el Seleccionado
        Dim dt_Movimiento As DataTable

        '--------------Mostrará en las casillas el registro seleccionado de la grilla-----------
        dt_Movimiento = CapaNegocio.cls_Metodos.ListarFormLectorGridVieW(v_CodEmpleado).Tables(0) 'Cargo dt_Lista

        Dim c_cApellidoPaterno As String = dt_Movimiento.Rows(0)("cApellido_Paterno").ToString()
        Dim c_cApellidoMaterno As String = dt_Movimiento.Rows(0)("cApellido_Materno").ToString()
        Dim c_cPrimerNombre As String = dt_Movimiento.Rows(0)("cPrimer_Nombre_min").ToString()
        Dim c_cSegundoNombre As String = dt_Movimiento.Rows(0)("cSegundo_Nombre_min").ToString()
        Dim c_cCodEmpleado As String = dt_Movimiento.Rows(0)("cCod_Empleado").ToString()
        Dim c_cFoto_imagen As String = validarImagen(dt_Movimiento.Rows(0)("cFoto_imagen"), 1)

        txt_A_apeYNombres.InnerText = c_cApellidoPaterno + " " + c_cApellidoMaterno + " " + c_cPrimerNombre + " " + c_cSegundoNombre
        txt_codEmpleado.Text = c_cCodEmpleado.Trim
        txt_A_NombreEmpleado.InnerText = c_cApellidoPaterno + " " + c_cApellidoMaterno + " " + c_cPrimerNombre + " " + c_cSegundoNombre
        imgLector.ImageUrl = c_cFoto_imagen
    End Sub

    Private Sub Listar_RegistroPrestamo(ByVal v_CodPrestamo As String) 'Funcion/procedimiento para listar movimiento sea el último o el Seleccionado
        Dim dt_Movimiento As DataTable

        '--------------Mostrará en las casillas el registro seleccionado de la grilla-----------
        dt_Movimiento = CapaNegocio.cls_Metodos.ListarFormPrestamoGridVieW(v_CodPrestamo).Tables(0) 'Cargo dt_Lista

        Dim c_cIdPrestamo As String = dt_Movimiento.Rows(0)("cId_Prestamo").ToString
        Dim c_cNombres As String = dt_Movimiento.Rows(0)("cLector_Nombre").ToString
        Dim c_cCodEmpleado As String = dt_Movimiento.Rows(0)("cLector_CodEmpleado").ToString()
        Dim c_cCodRegistroLibro As String = dt_Movimiento.Rows(0)("cLibro_CodNumerico").ToString()
        Dim c_cTituloLibro As String = dt_Movimiento.Rows(0)("cLibro_Titulo").ToString()
        Dim c_cFechaPrestamo As String = dt_Movimiento.Rows(0)("cMov_FechaPedido").ToString()
        Dim c_cFechaDevolucion As String = dt_Movimiento.Rows(0)("cMov_FechaDevolucion").ToString()
        Dim c_cFechaReserva As String = dt_Movimiento.Rows(0)("cMovReserva_fecha").ToString()
        Dim c_cEstado As String = dt_Movimiento.Rows(0)("cEstado_Mov").ToString()
        Dim c_cPrestProvincia As String = dt_Movimiento.Rows(0)("cPrest_a_Prov").ToString()
        Dim c_cPrestEspecial As String = dt_Movimiento.Rows(0)("cPrest_Especial").ToString()

        txt_codEmpleado.Text = c_cCodEmpleado.Trim
        txt_A_NombreEmpleado.InnerText = c_cNombres.Trim
        txt_codRegistroLibro.Text = c_cCodRegistroLibro.Trim
        txt_A_Librotitulo.InnerText = c_cTituloLibro.Trim

        If c_cPrestProvincia = "0" Then
            chk_PProvincia.Checked = False
        ElseIf c_cPrestProvincia = "1" Then
            chk_PProvincia.Checked = True
        End If

        If c_cPrestEspecial.Trim = "0" Then
            chk_PEspecial.Checked = False
        ElseIf c_cPrestEspecial.Trim = "1" Then
            chk_PEspecial.Checked = True
        End If

        If c_cEstado = "0" Then
            Dim tupla_FechaHora As Tuple(Of String, String) = Formato_Fecha_Hora()
            txt_FechaPrestamo.Text = (tupla_FechaHora.Item1)
        Else
            txt_FechaPrestamo.Text = c_cFechaPrestamo.Trim
            txt_FechaDevolucion.Text = c_cFechaDevolucion.Trim
        End If

        txt_FechaReserva.Text = c_cFechaReserva.Trim
        txt_CodPrestamo2.Text = c_cIdPrestamo
        lbl_IdPrestamo.Text = c_cIdPrestamo
        cbox_EstadoPrestamo.SelectedIndex = -1

        If IsDBNull(c_cEstado.ToString) Or c_cEstado.ToString = "" Then
            cbox_EstadoPrestamo.Items.FindByValue("0").Selected = True
        Else
            cbox_EstadoPrestamo.Items.FindByValue(Trim(Left(c_cEstado.ToString, 4))).Selected = True
        End If
    End Sub

    '======================================================GRIDVIEW LECTOR========================================================================'

    '====================CARGA DEL GRIDVIEW========================================='
    Protected Sub grv_Lector_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

                Dim c_cCodEmpleado As String
                If Not IsDBNull(dr("cCod_Empleado")) Then
                    c_cCodEmpleado = dr("cCod_Empleado")
                Else
                    c_cCodEmpleado = " "
                End If

                Dim c_cDniEmpleado As String
                If Not IsDBNull(dr("cDNI_Empleado")) Then
                    c_cDniEmpleado = dr("cDNI_Empleado")
                Else
                    c_cDniEmpleado = " "
                End If

                Dim c_cApellidoP As String
                If Not IsDBNull(dr("cApellido_Paterno")) Then
                    c_cApellidoP = dr("cApellido_Paterno")
                Else
                    c_cApellidoP = " "
                End If

                Dim c_cApellidoM As String
                If Not IsDBNull(dr("cApellido_Materno")) Then
                    c_cApellidoM = dr("cApellido_Materno")
                Else
                    c_cApellidoM = " "
                End If

                Dim c_cPrimerNombre As String
                If Not IsDBNull(dr("cPrimer_Nombre_min")) Then
                    c_cPrimerNombre = dr("cPrimer_Nombre_min")
                Else
                    c_cPrimerNombre = " "
                End If

                Dim c_cSegundoNombre As String
                If Not IsDBNull(dr("cSegundo_Nombre_min")) Then
                    c_cSegundoNombre = dr("cSegundo_Nombre_min")
                Else
                    c_cSegundoNombre = " "
                End If

                CType(e.Row.FindControl("lbl_codEmpleado"), WebControls.Label).Text = c_cCodEmpleado
                CType(e.Row.FindControl("lbl_DniEmpleado"), WebControls.Label).Text = c_cDniEmpleado
                CType(e.Row.FindControl("lbl_Apellidos"), WebControls.Label).Text = c_cApellidoP + " " + c_cApellidoM
                CType(e.Row.FindControl("lbl_PrimerNombre"), WebControls.Label).Text = c_cPrimerNombre
                CType(e.Row.FindControl("lbl_SegundoNombre"), WebControls.Label).Text = c_cSegundoNombre

            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub grv_Lector_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grv_Lector.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            grv_Lector.PageIndex = e.NewPageIndex

            If Session("sBusqueda") = "0" Then
                ' lbl_Valida.Text = Session("gdv_Lista")
            ElseIf Session("sBusqueda") = "1" Then
                Dim valor As String = Session("vBusqueda")
                Dim vBandera As String = Session("vBandera")
                'GridView
                grv_Lector.DataSource = cls_Metodos.BuscarLector(valor, vBandera)
                grv_Lector.DataBind()
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '=============================SELECCION DE UN REGISTRO DEL GRID VIEW========================================
    Protected Sub grv_Lector_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grv_Lector.SelectedIndexChanged ' Muestra en los campos la informacion del libro seleccionado
        Try
            Dim v_codEmpleado As String = TryCast(grv_Lector.SelectedRow.FindControl("lbl_codEmpleado"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Session("codEmpleado") = v_codEmpleado
            Listar_RegistroLector(v_codEmpleado)
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '======================================================GRIDVIEW LIBRO========================================================================'
    '====================CARGA DEL GRIDVIEW========================================='
    Protected Sub grv_Libro_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

                Dim c_cCodigoClasificacion As String
                If Not IsDBNull(dr("cLibro_CodClasificacion")) Then
                    c_cCodigoClasificacion = dr("cLibro_CodClasificacion")
                Else
                    c_cCodigoClasificacion = " "
                End If

                Dim c_cCodigoRegistro As String
                If Not IsDBNull(dr("cLibro_CodNumerico")) Then
                    c_cCodigoRegistro = dr("cLibro_CodNumerico")
                Else
                    c_cCodigoRegistro = " "
                End If

                Dim c_cTitulo As String
                If Not IsDBNull(dr("cLibro_Titulo")) Then
                    c_cTitulo = dr("cLibro_Titulo")
                Else
                    c_cTitulo = " "
                End If

                Dim c_cAutor As String
                If Not IsDBNull(dr("cLibro_Autor")) Then
                    c_cAutor = dr("cLibro_Autor")
                Else
                    c_cAutor = " "
                End If

                Dim c_cEstado As String
                If Not IsDBNull(dr("cEstado_libro")) Then
                    c_cEstado = dr("cEstado_libro")
                Else
                    c_cEstado = "4"
                End If

                CType(e.Row.FindControl("lbl_CodClasificacion"), WebControls.Label).Text = c_cCodigoClasificacion
                CType(e.Row.FindControl("lbl_CodRegistro"), WebControls.Label).Text = c_cCodigoRegistro
                CType(e.Row.FindControl("lbl_Titulo"), WebControls.Label).Text = c_cTitulo
                CType(e.Row.FindControl("lbl_Autor"), WebControls.Label).Text = c_cAutor
                CType(e.Row.FindControl("lbl_Estado"), WebControls.Label).Text = c_cEstado
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub grv_Libro_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grv_Libro.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            grv_Libro.PageIndex = e.NewPageIndex
            If Session("sBusqueda") = "0" Then
                ' lbl_Valida.Text = Session("gdv_Lista")
            ElseIf Session("sBusqueda") = "1" Then
                Dim valor As String = Session("vBusqueda")
                Dim vBandera As String = Session("vBandera")
                'GridView
                grv_Libro.DataSource = cls_Metodos.BuscarLibro(valor, vBandera)
                grv_Libro.DataBind()
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '=============================SELECCION DE UN REGISTRO DEL GRID VIEW========================================
    Protected Sub grv_Libro_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grv_Libro.SelectedIndexChanged ' Muestra en los campos la informacion del libro seleccionado
        Try
            Dim v_codRegistro As String = TryCast(grv_Libro.SelectedRow.FindControl("lbl_CodRegistro"), Label).Text 'Capturo el valor de lbl_codRegistro
            Session("codRegistroLibro") = v_codRegistro
            Listar_RegistroLibro(v_codRegistro)
            imgDisponible.Visible = True
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '======================================================GRIDVIEW PRESTAMO========================================================================'

    '====================CARGA DEL GRIDVIEW========================================='
    Protected Sub grv_Prestamo_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

                Dim c_cCodEmpleado As String
                If Not IsDBNull(dr("cLector_CodEmpleado")) Then
                    c_cCodEmpleado = dr("cLector_CodEmpleado")
                Else
                    c_cCodEmpleado = " "
                End If

                Dim c_cNombres As String
                If Not IsDBNull(dr("cLector_Nombre")) Then
                    c_cNombres = dr("cLector_Nombre")
                Else
                    c_cNombres = " "
                End If

                Dim c_cCodClasificacion As String
                If Not IsDBNull(dr("cLibro_CodClasificacion")) Then
                    c_cCodClasificacion = dr("cLibro_CodClasificacion")
                Else
                    c_cCodClasificacion = " "
                End If

                Dim c_cCodRegistroLibro As String
                If Not IsDBNull(dr("cLibro_CodNumerico")) Then
                    c_cCodRegistroLibro = dr("cLibro_CodNumerico")
                Else
                    c_cCodRegistroLibro = " "
                End If

                Dim c_cTituloLibro As String
                If Not IsDBNull(dr("cLibro_Titulo")) Then
                    c_cTituloLibro = dr("cLibro_Titulo")
                Else
                    c_cTituloLibro = " "
                End If

                Dim c_cFechaPrestamo As String
                If Not IsDBNull(dr("cMov_FechaPedido")) Then
                    c_cFechaPrestamo = dr("cMov_FechaPedido")
                Else
                    c_cFechaPrestamo = "--/--/--"
                End If

                Dim c_cFechaDevolucion As String
                If Not IsDBNull(dr("cMov_FechaDevolucion")) Then
                    c_cFechaDevolucion = dr("cMov_FechaDevolucion")
                Else
                    c_cFechaDevolucion = "--/--/--"
                End If

                Dim c_cFechaReserva As String
                If Not IsDBNull(dr("cMovReserva_fecha")) Then
                    c_cFechaReserva = dr("cMovReserva_fecha")
                Else
                    c_cFechaReserva = "--/--/--r"
                End If

                Dim c_cEstadoOperacionViejo As String
                If Not IsDBNull(dr("ctipo_operacion")) Then
                    c_cEstadoOperacionViejo = dr("ctipo_operacion")
                Else
                    c_cEstadoOperacionViejo = " "
                End If

                Dim c_cEstadoOperacion As String
                If Not IsDBNull(dr("cEstado_Mov")) Then
                    c_cEstadoOperacion = dr("cEstado_Mov")
                Else
                    c_cEstadoOperacion = " "
                End If

                Dim c_cIdPrestamo As String
                If Not IsDBNull(dr("cId_Prestamo")) Then
                    c_cIdPrestamo = dr("cId_Prestamo")
                Else
                    c_cIdPrestamo = " "
                End If

                CType(e.Row.FindControl("lbl_codEmpleado"), WebControls.Label).Text = c_cCodEmpleado
                CType(e.Row.FindControl("lbl_nombreEmpleado"), WebControls.Label).Text = c_cNombres
                CType(e.Row.FindControl("lbl_CodClasificacion"), WebControls.Label).Text = c_cCodClasificacion
                CType(e.Row.FindControl("lbl_CodRegistroLibro"), WebControls.Label).Text = c_cCodRegistroLibro
                CType(e.Row.FindControl("lbl_TituloLibro"), WebControls.Label).Text = c_cTituloLibro
                CType(e.Row.FindControl("lbl_FechaPrestamo"), WebControls.Label).Text = c_cFechaPrestamo
                CType(e.Row.FindControl("lbl_FechaDevolucion"), WebControls.Label).Text = c_cFechaDevolucion
                CType(e.Row.FindControl("lbl_FechaReserva"), WebControls.Label).Text = c_cFechaReserva
                CType(e.Row.FindControl("lbl_Estado"), WebControls.Label).Text = c_cEstadoOperacionViejo
                CType(e.Row.FindControl("lbl_EstadoN"), WebControls.Label).Text = c_cEstadoOperacion
                CType(e.Row.FindControl("lbl_CodPrestamo"), WebControls.Label).Text = c_cIdPrestamo
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub grv_Prestamo_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grv_Prestamo.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            grv_Prestamo.PageIndex = e.NewPageIndex
            If Session("sBusqueda") = "0" Then
                cargarLista50()
            ElseIf Session("sBusqueda") = "1" Then
                Dim valor As String = Session("vBusqueda")
                Dim vBandera As String = Session("vBandera")
                'GridView
                grv_Prestamo.DataSource = cls_Metodos.BuscarPestamo(valor, vBandera)
                grv_Prestamo.DataBind()
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btn_BuscarPrestamo.Visible = False
        End Try
    End Sub

    '=============================SELECCION DE UN REGISTRO DEL GRID VIEW========================================
    Protected Sub grv_Prestamo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grv_Prestamo.SelectedIndexChanged ' Muestra en los campos la informacion del libro seleccionado
        Try
            Dim v_codPrestamo As String = TryCast(grv_Prestamo.SelectedRow.FindControl("lbl_CodPrestamo"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Listar_RegistroPrestamo(v_codPrestamo)
            lbl_Valida.Text = "Ha seleccionado un registro de la grilla"
            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange

            If rdb_devolucion.Checked Then
                cbox_EstadoPrestamo.Items.FindByValue("4").Enabled = True
                cbox_EstadoPrestamo.Items.FindByValue("4").Selected = True
                cbox_EstadoPrestamo.Items.FindByValue("-1").Enabled = False
                cbox_EstadoPrestamo.Items.FindByValue("1").Enabled = False
                cbox_EstadoPrestamo.Items.FindByValue("0").Enabled = False
                cbox_EstadoPrestamo.Items.FindByValue("5").Enabled = False
            ElseIf rdb_PrestarReservasAnul.Checked Then
                cbox_EstadoPrestamo.Items.FindByValue("4").Enabled = False
                cbox_EstadoPrestamo.Items.FindByValue("1").Enabled = True
                cbox_EstadoPrestamo.Items.FindByValue("0").Enabled = True
                cbox_EstadoPrestamo.Items.FindByValue("5").Enabled = True
            End If
            Validacion("Gdv_Lista_Select")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub cboxBusqueda_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboxBusqueda.SelectedIndexChanged
        txt_ValorPrestamo.Text = ""
        If cboxBusqueda.SelectedIndex = 0 Then              'BÚSQUEDA POR COD DE EMPLEADO
            txt_ValorPrestamo.MaxLength = 8
            txt_ValorPrestamo.Attributes.Add("placeholder", "(Buscar por Cód de empleado)")
        ElseIf cboxBusqueda.SelectedIndex = 1 Then          'BÚSQUEDA POR DNI
            txt_ValorPrestamo.MaxLength = 8
            txt_ValorPrestamo.Attributes.Add("placeholder", "(Buscar por DNI)")
        ElseIf cboxBusqueda.SelectedIndex = 2 Then          'BÚSQUEDA POR APELLIDO O NOMBRE
            txt_ValorPrestamo.MaxLength = 30
            txt_ValorPrestamo.Attributes.Add("placeholder", "(Buscar por apellido o nombre)")
        ElseIf cboxBusqueda.SelectedIndex = 3 Then          'BÚSQUEDA POR COD DE REGISTRO DE LIBRO
            txt_ValorPrestamo.MaxLength = 6
            txt_ValorPrestamo.Attributes.Add("placeholder", "(Buscar por Cód Registro Libro)")
        End If
    End Sub

    Private Sub cbox_CodRegistroLibro_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbox_CodRegistroLibro.SelectedIndexChanged
        txt_ValorLibro.Text = ""
        If cbox_CodRegistroLibro.SelectedIndex = 0 Then              'BÚSQUEDA POR COD DE REGISTRO
            txt_ValorLibro.MaxLength = 5
            txt_ValorLibro.Attributes.Add("onKeyup", "onKeyup = verificarBusqLibro(this);")
            txt_ValorLibro.Attributes.Add("placeholder", "(Buscar por cód de registro)")
        ElseIf cbox_CodRegistroLibro.SelectedIndex = 1 Then          'BÚSQUEDA POR TITULO
            txt_ValorLibro.MaxLength = 30
            txt_ValorLibro.Attributes.Add("onKeyup", "onKeyup = verificarBusqLibro(this);")
            txt_ValorLibro.Attributes.Add("placeholder", "(Buscar por título)")
        ElseIf cbox_CodRegistroLibro.SelectedIndex = 2 Then          'BÚSQUEDA POR AUTOR
            txt_ValorLibro.MaxLength = 30
            txt_ValorLibro.Attributes.Add("onKeyup", "onKeyup = verificarBusqLibro(this);")
            txt_ValorLibro.Attributes.Add("placeholder", "(Buscar por autor)")
        End If
    End Sub

    Private Sub cbox_EstadoPrestamo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbox_EstadoPrestamo.SelectedIndexChanged
        If cbox_EstadoPrestamo.SelectedValue = "5" Then
            txt_FechaPrestamo.Enabled = False
            txt_FechaDevolucion.Enabled = False
            btnMas8.Enabled = False
        End If
    End Sub

    Private Sub Exportar_Reporte(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        Dim vValor As String
        Dim vBandera As String

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rptFichaHistoriaLectorPrest" Then

            vValor = Session("codEmpleado")
            vBandera = "7"

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarPestamo(vValor, vBandera)
            '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
            Dim dts_HistorialPrestLector As New dts_HistorialPrestLector() ' Crea un nuevo dataset tipo xsd

            For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
                dts_HistorialPrestLector.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
            Next

            rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer
            rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc
            Dim Movimiento_Rpt As New ReportDataSource("dt_HistPrestLector", dts_HistorialPrestLector.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
            rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
            rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

        ElseIf v_TipoReporte = "rptFichaHistoriaLibroPrest" Then

            vValor = Session("codRegistroLibro")
            vBandera = "6"

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarPestamo(vValor, vBandera)
            '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
            Dim dtsFichaPrestamo As New dtsFichaPrestamo() ' Crea un nuevo dataset tipo xsd

            For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
                dtsFichaPrestamo.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
            Next

            rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer
            rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc
            Dim Movimiento_Rpt As New ReportDataSource("dt_Ficha_Prestamo", dtsFichaPrestamo.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
            rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
            rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

        ElseIf v_TipoReporte = "rptFichaPrestamo" Then

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            vValor = txt_CodPrestamo2.Text.Trim
            vBandera = "5"

            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarPestamo(vValor, vBandera)

            '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
            Dim ds_Reporte01 As New dtsFichaPrestamo() ' Crea un nuevo dataset tipo xsd

            For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
                ds_Reporte01.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
            Next

            rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer
            rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc
            Dim parameters As New List(Of ReportParameter)() 'Creo una lista para llenar los parametros del RDLC con los sgtes datos
            rv_General.LocalReport.SetParameters(parameters) 'Luego de dar valores los setteo en el reportViewer
            Dim Movimiento_Rpt As New ReportDataSource("dt_Ficha_Prestamo", ds_Reporte01.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
            rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
            rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

        Else
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            lbl_Valida.Text = "El tipo de Reporte no existe o es incorrecto"
            Exit Sub
        End If

        '----Declaraciones de variables igualadas a Nothing----
        Dim warnings As Warning() = Nothing
        Dim streamids As String() = Nothing
        Dim mimeType As String = Nothing
        Dim contentType As String = Nothing
        Dim encoding As String = Nothing
        Dim extension As String = Nothing

        '----Exporta el reporte RDLC as un arreglo de bytes, rb_format es el formato elegido en la pagina ASPX
        Dim bytes As Byte() = rv_General.LocalReport.Render(FormatoReporte, Nothing, mimeType, contentType, encoding, extension, streamids, warnings)

        '----Descarga el reporte RDLC en formato word, Excel, PDF
        Response.Clear()
        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache) 'No guarda cache en la creacion del archivo
        Response.ContentType = contentType
        Response.AppendHeader("Content-Disposition", "attachment; filename=" & v_TipoReporte & "." & extension) 'El nombre del archivo de salida
        Response.BinaryWrite(bytes)
        Response.Flush()
        Response.End()
    End Sub


End Class