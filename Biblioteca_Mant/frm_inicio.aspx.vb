Imports System.Data.SqlClient
Imports CapaNegocio

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("IdUsuario") = "SOVERO"
        'Session("perfil") = "SUPERVISOR"

        If f_validarSesion() = True Then

            If Not Page.IsPostBack Then
                Try
                    CargarPrestamos()
                    CargarReservas()
                    CargaLista()
                    fs_grvReservas.Visible = False
                    fs_grvPrestamos.Visible = False
                Catch ex As Exception
                    lbl_valida.Text = ex.Message 'Muestra mensaje original del error.
                    lbl_valida.Visible = True
                    lbl_valida.ForeColor = System.Drawing.Color.Red
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


    '===========================PROC/FUNCION LISTAR LOS 50 ULTIMOS REGISTROS=================================
    Private Sub CargaLista() 'Funcion/Procedimiento Carga Lista en el gridview
        gdv_Lista_Reservas.DataSource = cls_Metodos.Reservas("2")
        gdv_Lista_Reservas.DataBind()
        gdv_Lista_Prestamos.DataSource = cls_Metodos.PrestamosPendientes("2")
        gdv_Lista_Prestamos.DataBind()
    End Sub

    'Private Function CargarPrestamos()

    '    Dim ds As DataTable = cls_Metodos.CantidadPrestamosVencidos().Tables(0)
    '    Dim vCantidad As String = Val(ds.Rows(0)("NumReg")).ToString()
    '    'lbl_prestamos.Text = vCantidad
    '    btn_prestamos.Text = vCantidad
    'End Function


    Private Sub CargarPrestamos()
        Dim ds As DataTable = cls_Metodos.PrestamosPendientes("1").Tables(0)    'CANTIDAD DE PRESTAMOS PENDIENTES	
        Dim vCantidad As String = Val(ds.Rows(0)("NumReg")).ToString()
        'lbl_prestamos.Text = vCantidad
        btn_prestamos.Text = vCantidad
    End Sub

    Private Sub CargarReservas()
        Dim ds As DataTable = cls_Metodos.Reservas("1").Tables(0)
        Dim vCantidad As String = Val(ds.Rows(0)("NumReg")).ToString()
        'lbl_reservas.Text = vCantidad
        btn_reservas.Text = vCantidad
    End Sub

    'Private Function CargarReservas()
    '    Dim ds As DataTable = cls_Metodos.CantidadReservas().Tables(0)
    '    Dim vCantidad As String = Val(ds.Rows(0)("NumReg")).ToString()
    '    'lbl_reservas.Text = vCantidad
    '    btn_reservas.Text = vCantidad
    'End Function


    '====================CARGA DEL GRIDVIEW PRESTAMOS========================================='
    Protected Sub gdv_Lista_Prestamos_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

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

                Dim c_cLectorNombre As String
                If Not IsDBNull(dr("cLector_Nombre")) Then
                    c_cLectorNombre = dr("cLector_Nombre")
                Else
                    c_cLectorNombre = " "
                End If

                Dim c_cLectorCodEmpleado As String
                If Not IsDBNull(dr("cLector_CodEmpleado")) Then
                    c_cLectorCodEmpleado = dr("cLector_CodEmpleado")
                Else
                    c_cLectorCodEmpleado = " "
                End If


                Dim c_cLibroTitulo As String
                If Not IsDBNull(dr("cLibro_Titulo")) Then
                    c_cLibroTitulo = dr("cLibro_Titulo")
                Else
                    c_cLibroTitulo = " "
                End If

                Dim c_cLibroCodClasificacion As String
                If Not IsDBNull(dr("cLibro_CodClasificacion")) Then
                    c_cLibroCodClasificacion = dr("cLibro_CodClasificacion")
                Else
                    c_cLibroCodClasificacion = " "
                End If

                Dim c_cLibroCodNumerico As String
                If Not IsDBNull(dr("cLibro_CodNumerico")) Then
                    c_cLibroCodNumerico = dr("cLibro_CodNumerico")
                Else
                    c_cLibroCodNumerico = " "
                End If

                CType(e.Row.FindControl("lbl_nombreLector"), WebControls.Label).Text = c_cLectorNombre
                CType(e.Row.FindControl("lbl_codEmpleado"), WebControls.Label).Text = c_cLectorCodEmpleado
                CType(e.Row.FindControl("lbl_tituloLibro"), WebControls.Label).Text = c_cLibroTitulo
                CType(e.Row.FindControl("lbl_codClasificacion"), WebControls.Label).Text = c_cLibroCodClasificacion
                CType(e.Row.FindControl("lbl_codRegistro"), WebControls.Label).Text = c_cLibroCodNumerico
                CType(e.Row.FindControl("lbl_fechaPrestamo"), WebControls.Label).Text = c_cFechaPrestamo
                CType(e.Row.FindControl("lbl_fechaDevolucion"), WebControls.Label).Text = c_cFechaDevolucion
            End If
        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            lbl_valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_valida.Visible = True
            lbl_valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub gdv_Lista_Prestamos_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gdv_Lista_Prestamos.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            gdv_Lista_Prestamos.PageIndex = e.NewPageIndex
            CargaLista()


        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            lbl_valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_valida.Visible = True
            lbl_valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub
    '=========================================FIN GRIDVIEW PRESTAMOS=======================================================
    '====================CARGA DEL GRIDVIEW RESERVAS========================================='
    Protected Sub gdv_Lista_Reservas_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

                Dim c_cFechaReserva As String
                If Not IsDBNull(dr("cMovReserva_fecha")) Then
                    c_cFechaReserva = dr("cMovReserva_fecha")
                Else
                    c_cFechaReserva = "--/--/--"
                End If

                'Dim c_cHora As String
                'If Not IsDBNull(dr("cHora")) Then
                '    c_cHora = dr("cHora")
                'Else
                '    c_cHora = " - -"
                'End If

                Dim c_cIdPrestamo As String
                If Not IsDBNull(dr("cId_Prestamo")) Then
                    c_cIdPrestamo = dr("cId_Prestamo")
                Else
                    c_cIdPrestamo = " "
                End If

                Dim c_cLectorCod As String
                If Not IsDBNull(dr("cLector_CodEmpleado")) Then
                    c_cLectorCod = dr("cLector_CodEmpleado")
                Else
                    c_cLectorCod = " "
                End If

                Dim c_cLectorNombre As String
                If Not IsDBNull(dr("cLector_Nombre")) Then
                    c_cLectorNombre = dr("cLector_Nombre")
                Else
                    c_cLectorNombre = " "
                End If

                Dim c_cOficina As String
                If Not IsDBNull(dr("cMovReserva_oficina")) Then
                    c_cOficina = dr("cMovReserva_oficina")
                Else
                    c_cOficina = " "
                End If

                Dim c_cAnexo As String
                If Not IsDBNull(dr("cAnexo_Empleado")) Then
                    c_cAnexo = dr("cAnexo_Empleado")
                Else
                    c_cAnexo = " "
                End If

                Dim c_cLibroTitulo As String
                If Not IsDBNull(dr("cLibro_Titulo")) Then
                    c_cLibroTitulo = dr("cLibro_Titulo")
                Else
                    c_cLibroTitulo = " "
                End If



                Dim c_cLibroCodNumerico As String
                If Not IsDBNull(dr("cLibro_CodNumerico")) Then
                    c_cLibroCodNumerico = dr("cLibro_CodNumerico")
                Else
                    c_cLibroCodNumerico = " "
                End If

                Dim c_cLibroCodClasificacion As String
                If Not IsDBNull(dr("cLibro_CodClasificacion")) Then
                    c_cLibroCodClasificacion = dr("cLibro_CodClasificacion")
                Else
                    c_cLibroCodClasificacion = " "
                End If

                Dim c_cUsuario As String
                If Not IsDBNull(dr("cUsuario_asigna")) Then
                    c_cUsuario = dr("cUsuario_asigna")
                Else
                    c_cUsuario = " "
                End If

                CType(e.Row.FindControl("lbl_codLector"), WebControls.Label).Text = c_cLectorCod
                CType(e.Row.FindControl("lbl_nombreLector"), WebControls.Label).Text = c_cLectorNombre
                CType(e.Row.FindControl("lbl_oficina"), WebControls.Label).Text = c_cOficina
                CType(e.Row.FindControl("lbl_anexo"), WebControls.Label).Text = c_cAnexo
                CType(e.Row.FindControl("lbl_tituloLibro"), WebControls.Label).Text = c_cLibroTitulo
                CType(e.Row.FindControl("lbl_codRegistro"), WebControls.Label).Text = c_cLibroCodNumerico
                CType(e.Row.FindControl("lbl_codClasificacion"), WebControls.Label).Text = c_cLibroCodClasificacion
                CType(e.Row.FindControl("lbl_idPrestamo"), WebControls.Label).Text = c_cIdPrestamo
                CType(e.Row.FindControl("lbl_fechaReserva"), WebControls.Label).Text = c_cFechaReserva
                CType(e.Row.FindControl("lbl_tipoReserva"), WebControls.Label).Text = c_cUsuario





            End If
        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            'lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            'lbl_Valida.ForeColor = System.Drawing.Color.Red
            'btnBuscar.Visible = False
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub gdv_Lista_Reservas_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gdv_Lista_Reservas.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            gdv_Lista_Reservas.PageIndex = e.NewPageIndex
            CargaLista()


        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            'lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            'lbl_Valida.ForeColor = System.Drawing.Color.Red
            'btnBuscar.Visible = False
        End Try
    End Sub


    '=============================SELECCION DE UN REGISTRO DEL GRID VIEW========================================
    Protected Sub grv_Prestamo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gdv_Lista_Reservas.SelectedIndexChanged ' Muestra en los campos la informacion del libro seleccionado
        Try
            Dim v_codPrestamo As String = TryCast(gdv_Lista_Reservas.SelectedRow.FindControl("lbl_idPrestamo"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Dim v_RcodEmpleado As String = TryCast(gdv_Lista_Reservas.SelectedRow.FindControl("lbl_codLector"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Dim v_RnombreEmpleado As String = TryCast(gdv_Lista_Reservas.SelectedRow.FindControl("lbl_nombreLector"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Dim v_RcodRegistro As String = TryCast(gdv_Lista_Reservas.SelectedRow.FindControl("lbl_codRegistro"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Dim v_RtituloLibro As String = TryCast(gdv_Lista_Reservas.SelectedRow.FindControl("lbl_tituloLibro"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Dim v_Rfechareserva As String = TryCast(gdv_Lista_Reservas.SelectedRow.FindControl("lbl_fechaReserva"), Label).Text 'Capturo el valor de lbl_codEmpleado


            Session("frm_reserva") = "1"
            Session("frm_reserva_id") = v_codPrestamo
            Session("frm_reserva_codEmpl") = v_RcodEmpleado
            Session("frm_reserva_nomEmpl") = v_RnombreEmpleado
            Session("frm_reserva_codLibro") = v_RcodRegistro
            Session("frm_reserva_tituloLib") = v_RtituloLibro
            Session("frm_reserva_fechaReser") = v_Rfechareserva


            Response.Redirect("frm_prestamoLibro.aspx")


        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            lbl_valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_valida.ForeColor = System.Drawing.Color.Red
            'btnBuscar.Visible = False
        End Try
    End Sub



    Private Sub btn_reservas_Click(sender As Object, e As EventArgs) Handles btn_reservas.Click
        fs_grvReservas.Visible = True
        fs_grvPrestamos.Visible = False
        fs_libro.Visible = False
    End Sub

    Private Sub btn_RHay_Click(sender As Object, e As EventArgs) Handles btn_RHay.Click
        fs_grvReservas.Visible = True
        fs_grvPrestamos.Visible = False
        fs_libro.Visible = False
    End Sub

    Private Sub btn_RlibrosReservados_Click(sender As Object, e As EventArgs) Handles btn_RlibrosReservados.Click
        fs_grvReservas.Visible = True
        fs_grvPrestamos.Visible = False
        fs_libro.Visible = False
    End Sub

    Private Sub btn_PHay_Click(sender As Object, e As EventArgs) Handles btn_PHay.Click
        fs_grvPrestamos.Visible = True
        fs_grvReservas.Visible = False
        fs_libro.Visible = False
    End Sub

    Private Sub btn_prestamos_Click(sender As Object, e As EventArgs) Handles btn_prestamos.Click
        fs_grvPrestamos.Visible = True
        fs_grvReservas.Visible = False
        fs_libro.Visible = False
    End Sub

    Private Sub btn_Plibrosprestados_Click(sender As Object, e As EventArgs) Handles btn_Plibrosprestados.Click
        fs_grvPrestamos.Visible = True
        fs_grvReservas.Visible = False
        fs_libro.Visible = False
    End Sub
End Class