Imports System.Data.SqlClient
Imports CapaNegocio
Imports Microsoft.Reporting.WebForms

Public Class frm_Reportes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("menu") = "frm_reportes"
        img_load.Visible = False
        If f_validarSesion() = True Then

            If Not Page.IsPostBack Then
                Try
                    cls_Metodos.culture_info()
                    Inicializacion_Reportes()
                    Validacion("Page_Load")
                Catch ex As Exception
                    lbl_validaLector1.Text = ex.Message 'Muestra mensaje original del error.
                    lbl_validaLector1.ForeColor = System.Drawing.Color.Red
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

    Private Sub Inicializacion_Reportes()

        fs_a1BusqCodEmpleado.Visible = True
        fs_a2BusqAvanzada.Visible = False

        fs_b1BusqPorNumReg.Visible = False
        fs_b2BusqAvanzada.Visible = False

        fs_c1BusqPorNum.Visible = False
        fs_c2BusqAvanzada.Visible = False

        fs_e1Otros.Visible = False

        btn_a1BusquedaCodEmpleado.Visible = True
        btn_a2BusquedaAvanzada.Visible = True

        btn_b1BusquedaNumeroRegistro.Visible = False
        btn_b2BusquedaAvanzada.Visible = False

        btn_c1BusquedaNumero.Visible = False
        btn_c2BusquedaAvanzada.Visible = False

        btn_e1SeguimientosWeb.Visible = False

        btn_a1BusquedaCodEmpleado.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_a1BusquedaCodEmpleado.Disabled = True

    End Sub

    Private Sub Validacion(ByVal Validacion As String) 'Valida Botones, campos, radiobuttons



        txt_ValorCodEmpleado.Attributes.Add("onKeyup", "onKeyup = verifCodLector(this);")
        txt_ValorCodEmpleado.MaxLength = 8
        txt_valorLibro1.Attributes.Add("onKeyup", "onKeyup = verifCodLibro(this);")
        txt_valorLibro1.MaxLength = 6
        txt_ValorPrestamo1.Attributes.Add("onKeyup", "onKeyup = verifCodPrestamo(this);")
        txt_ValorPrestamo1.MaxLength = 8

        'Validaciones de los botones de acción
        If Validacion = "Page_Load" Then
            btn_verHistorialEmpleado.Enabled = False

            btn_verFichaLibro1.Enabled = False
            btn_verHistorialLibro.Enabled = False
            btn_verFichaLibro2.Enabled = False

            btn_VerFichaPrestamo1.Enabled = False
            btn_verFichaPrestamo2.Enabled = False

            btn_verFichaBusqWeb.Enabled = False

        ElseIf Validacion = "A" Then


        End If

    End Sub

    Private Sub btn_a1BusquedaCodEmpleado_ServerClick(sender As Object, e As EventArgs) Handles btn_a1BusquedaCodEmpleado.ServerClick

        fs_a1BusqCodEmpleado.Visible = True
        fs_a2BusqAvanzada.Visible = False

        btn_a1BusquedaCodEmpleado.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_a2BusquedaAvanzada.Attributes.Remove("Style")

        btn_a1BusquedaCodEmpleado.Disabled = True
        btn_a2BusquedaAvanzada.Disabled = False

    End Sub

    Private Sub btn_a2BusquedaAvanzada_ServerClick(sender As Object, e As EventArgs) Handles btn_a2BusquedaAvanzada.ServerClick
        fs_a2BusqAvanzada.Visible = True
        fs_a1BusqCodEmpleado.Visible = False

        btn_a2BusquedaAvanzada.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_a1BusquedaCodEmpleado.Attributes.Remove("Style")

        btn_a1BusquedaCodEmpleado.Disabled = False
        btn_a2BusquedaAvanzada.Disabled = True

        btn_b1BusquedaNumeroRegistro.Disabled = False
        btn_b2BusquedaAvanzada.Disabled = False

        btn_c1BusquedaNumero.Disabled = False
        btn_c2BusquedaAvanzada.Disabled = True

        btn_e1SeguimientosWeb.Disabled = False
    End Sub

    Private Sub btn_b1BusquedaNumeroRegistro_ServerClick(sender As Object, e As EventArgs) Handles btn_b1BusquedaNumeroRegistro.ServerClick
        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = True
        fs_b2BusqAvanzada.Visible = False
        fs_c1BusqPorNum.Visible = False
        fs_c2BusqAvanzada.Visible = False
        fs_e1Otros.Visible = False

        btn_b1BusquedaNumeroRegistro.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_b2BusquedaAvanzada.Attributes.Remove("Style")

        btn_b1BusquedaNumeroRegistro.Disabled = True
        btn_b2BusquedaAvanzada.Disabled = False
    End Sub

    Private Sub btn_b2BusquedaAvanzada_ServerClick(sender As Object, e As EventArgs) Handles btn_b2BusquedaAvanzada.ServerClick
        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = False
        fs_b2BusqAvanzada.Visible = True
        fs_c1BusqPorNum.Visible = False
        fs_c2BusqAvanzada.Visible = False
        fs_e1Otros.Visible = False

        btn_b2BusquedaAvanzada.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_b1BusquedaNumeroRegistro.Attributes.Remove("Style")
        btn_a1BusquedaCodEmpleado.Attributes.Remove("Style")
        btn_a2BusquedaAvanzada.Attributes.Remove("Style")
        btn_c1BusquedaNumero.Attributes.Remove("Style")
        btn_c2BusquedaAvanzada.Attributes.Remove("Style")
        btn_e1SeguimientosWeb.Attributes.Remove("Style")

        btn_a1BusquedaCodEmpleado.Disabled = False
        btn_a2BusquedaAvanzada.Disabled = False
        btn_b1BusquedaNumeroRegistro.Disabled = False
        btn_b2BusquedaAvanzada.Disabled = True
        btn_c1BusquedaNumero.Disabled = False
        btn_c2BusquedaAvanzada.Disabled = False
        btn_e1SeguimientosWeb.Disabled = False
    End Sub

    Private Sub btn_c1BusquedaNumero_ServerClick(sender As Object, e As EventArgs) Handles btn_c1BusquedaNumero.ServerClick
        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = False
        fs_b2BusqAvanzada.Visible = False
        fs_c1BusqPorNum.Visible = True
        fs_c2BusqAvanzada.Visible = False
        fs_e1Otros.Visible = False

        btn_c1BusquedaNumero.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_c2BusquedaAvanzada.Attributes.Remove("Style")

        btn_c1BusquedaNumero.Disabled = True
        btn_c2BusquedaAvanzada.Disabled = False
    End Sub

    Private Sub btn_c2BusquedaAvanzada_ServerClick(sender As Object, e As EventArgs) Handles btn_c2BusquedaAvanzada.ServerClick
        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = False
        fs_b2BusqAvanzada.Visible = False
        fs_c1BusqPorNum.Visible = False
        fs_c2BusqAvanzada.Visible = True
        fs_e1Otros.Visible = False

        btn_c2BusquedaAvanzada.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_c1BusquedaNumero.Attributes.Remove("Style")

        btn_c1BusquedaNumero.Disabled = False
        btn_c2BusquedaAvanzada.Disabled = True
    End Sub

    Protected Sub rdb_Lector_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_Lector.CheckedChanged
        Response.Redirect("frm_Reportes.aspx")
    End Sub

    Protected Sub rdb_Libros_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_Libros.CheckedChanged
        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = True
        fs_b2BusqAvanzada.Visible = False
        fs_c1BusqPorNum.Visible = False
        fs_c2BusqAvanzada.Visible = False
        fs_e1Otros.Visible = False

        btn_b1BusquedaNumeroRegistro.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_a1BusquedaCodEmpleado.Attributes.Remove("Style")
        btn_a2BusquedaAvanzada.Attributes.Remove("Style")
        btn_b2BusquedaAvanzada.Attributes.Remove("Style")
        btn_c1BusquedaNumero.Attributes.Remove("Style")
        btn_c2BusquedaAvanzada.Attributes.Remove("Style")
        btn_e1SeguimientosWeb.Attributes.Remove("Style")

        btn_b1BusquedaNumeroRegistro.Disabled = True
        btn_b2BusquedaAvanzada.Disabled = False

        btn_a1BusquedaCodEmpleado.Visible = False
        btn_a2BusquedaAvanzada.Visible = False
        btn_b1BusquedaNumeroRegistro.Visible = True
        btn_b2BusquedaAvanzada.Visible = True
        btn_c1BusquedaNumero.Visible = False
        btn_c2BusquedaAvanzada.Visible = False
        btn_e1SeguimientosWeb.Visible = False
    End Sub

    Protected Sub rdb_Prestamo_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_Prestamo.CheckedChanged

        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = False
        fs_b2BusqAvanzada.Visible = False
        fs_c1BusqPorNum.Visible = True
        fs_c2BusqAvanzada.Visible = False
        fs_e1Otros.Visible = False

        btn_a1BusquedaCodEmpleado.Visible = False
        btn_a2BusquedaAvanzada.Visible = False
        btn_b1BusquedaNumeroRegistro.Visible = False
        btn_b2BusquedaAvanzada.Visible = False
        btn_c1BusquedaNumero.Visible = True
        btn_c2BusquedaAvanzada.Visible = True
        btn_e1SeguimientosWeb.Visible = False

        btn_c1BusquedaNumero.Attributes.Add("Style", "border-bottom:none; z-index:0;")
        btn_c2BusquedaAvanzada.Attributes.Remove("Style")

        btn_c1BusquedaNumero.Disabled = True
        btn_c2BusquedaAvanzada.Disabled = False

        btn_c1BusquedaNumero.Disabled = True
        btn_c2BusquedaAvanzada.Disabled = False
    End Sub

    Protected Sub rdb_Otros_Checked(ByVal sender As Object, ByVal e As EventArgs) Handles rdb_Otros.CheckedChanged
        fs_a1BusqCodEmpleado.Visible = False
        fs_a2BusqAvanzada.Visible = False
        fs_b1BusqPorNumReg.Visible = False
        fs_b2BusqAvanzada.Visible = False
        fs_c1BusqPorNum.Visible = False
        fs_c2BusqAvanzada.Visible = False
        fs_e1Otros.Visible = True

        btn_e1SeguimientosWeb.Attributes.Add("Style", "border-bottom:none; z-index:0;")

        btn_a1BusquedaCodEmpleado.Attributes.Remove("Style")
        btn_a2BusquedaAvanzada.Attributes.Remove("Style")
        btn_b1BusquedaNumeroRegistro.Attributes.Remove("Style")
        btn_b2BusquedaAvanzada.Attributes.Remove("Style")
        btn_c1BusquedaNumero.Attributes.Remove("Style")
        btn_c2BusquedaAvanzada.Attributes.Remove("Style")

        btn_a1BusquedaCodEmpleado.Visible = False
        btn_a2BusquedaAvanzada.Visible = False
        btn_b1BusquedaNumeroRegistro.Visible = False
        btn_b2BusquedaAvanzada.Visible = False
        btn_c1BusquedaNumero.Visible = False
        btn_c2BusquedaAvanzada.Visible = False
        btn_e1SeguimientosWeb.Visible = True

        btn_a1BusquedaCodEmpleado.Disabled = False
        btn_a2BusquedaAvanzada.Disabled = False

        btn_b1BusquedaNumeroRegistro.Disabled = False
        btn_b2BusquedaAvanzada.Disabled = False

        btn_c1BusquedaNumero.Disabled = False
        btn_c2BusquedaAvanzada.Disabled = False
        btn_e1SeguimientosWeb.Disabled = True
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

    Private Sub btn_CalcularLector1_Click(sender As Object, e As EventArgs) Handles btn_CalcularLector1.Click
        Try
            'Verificar vacios
            If Len(Trim(txt_ValorCodEmpleado.Text)) = 0 Then
                lbl_validaLector1.ForeColor = System.Drawing.Color.Red
                lbl_validaLector1.Text = "Ingrese el cód de lector"
                txt_ValorCodEmpleado.Text = "" ' si ingresa esapacions vacios con la barra espaciadora
                txt_ValorCodEmpleado.Focus()
                Exit Sub
            End If

            Dim Valor As String = txt_ValorCodEmpleado.Text.Trim
            Dim vBandera As String
            vBandera = "4"

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarLector(Valor, vBandera)

            Dim countLista = ds_Consulta_Reporte01.Tables(0).Rows.Count
            If (countLista = 0) Then
                lbl_validaLector1.ForeColor = System.Drawing.Color.Green
                lbl_validaLector1.Text = "N° Registros: " & countLista
                lbl_validaLector1.Focus()
                btn_verHistorialEmpleado.Enabled = False
                rb_FormatContrato.Enabled = False
            Else
                lbl_validaLector1.Visible = True
                lbl_validaLector1.ForeColor = System.Drawing.Color.Green
                lbl_validaLector1.Text = "N° Registros: " & countLista
                btn_verHistorialEmpleado.Enabled = True
                rb_FormatContrato.Enabled = False 'True

            End If
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaPrestamo1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_CalcularLibro_Click(sender As Object, e As EventArgs) Handles btn_CalcularLibro.Click
        Try
            'Verificar vacios
            If Len(Trim(txt_valorLibro1.Text)) = 0 Then
                lbl_validaLibro1.ForeColor = System.Drawing.Color.Red
                lbl_validaLibro1.Text = "Ingrese el cód de Libro"
                txt_valorLibro1.Text = "" ' si ingresa esapacions vacios con la barra espaciadora
                txt_valorLibro1.Focus()
                Exit Sub
            End If

            Dim Valor As String = txt_valorLibro1.Text.Trim
            Dim vBandera As String
            vBandera = "1"

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarLibro(Valor, vBandera)

            Dim countLista = ds_Consulta_Reporte01.Tables(0).Rows.Count
            If (countLista = 0) Then
                lbl_validaLibro1.ForeColor = System.Drawing.Color.Green
                lbl_validaLibro1.Text = "N° Registros: " & countLista
                lbl_validaLibro1.Focus()
                btn_verFichaLibro1.Enabled = False
                btn_verHistorialLibro.Enabled = False
                rb_FormatContrato.Enabled = False
            Else
                lbl_validaLibro1.Visible = True
                lbl_validaLibro1.ForeColor = System.Drawing.Color.Green
                lbl_validaLibro1.Text = "N° Registros: " & countLista

                btn_verFichaLibro1.Enabled = True
                btn_verHistorialLibro.Enabled = True
                rb_FormatContrato.Enabled = False 'True
            End If
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaPrestamo1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_CalcularListaLibro_Click(sender As Object, e As EventArgs) Handles btn_CalcularListaLibro.Click
        Try
            '---------Declaración de variables--------------------
            Dim v_cFechaDesde, v_cFechaHasta As Date
            Dim v_cTipoFecha, v_Bandera_Tipo As String
            Dim v_cAutor

            v_cTipoFecha = "fecha_Ing"
            v_cFechaDesde = txt_FechaDesdeLibro.Text
            v_cFechaHasta = txt_FechaHastaLibro.Text
            v_Bandera_Tipo = ""
            v_cAutor = txt_autor.Text

            If txt_autor.Text = "" Then
                v_cAutor = ""
            End If

            '------------Validación de campos fechas--------------
            If Not IsDate(v_cFechaDesde) Then
                lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaLibro2.Text = "Fecha Desde Incorrecta"
                Exit Sub
            End If

            If Not IsDate(v_cFechaHasta) Then
                lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaLibro2.Text = "Fecha Hasta Incorrecta"
                Exit Sub
            End If

            If Len(txt_FechaDesdeLibro.Text) = 0 Or Len(txt_FechaHastaLibro.Text) = 0 Then 'Las fechas no pueden estar en blanco.
                lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaLibro2.Text = "Las fechas desde y hasta no pueden estar en blanco, ingrese fecha correcta."
                Exit Sub
            ElseIf (DateTime.Compare(txt_FechaDesdeLibro.Text, txt_FechaHastaLibro.Text) > 0) Then 'fecha desde no puede ser mayor que la fecha hasta.
                lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaLibro2.Text = "La fecha desde no puede ser mayor que la fecha hasta"
                Exit Sub
            Else
                lbl_ValidaLibro2.Text = ""
            End If

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.ConsultaRptLibroLista(v_cTipoFecha, v_cFechaDesde, v_cFechaHasta, v_Bandera_Tipo, v_cAutor)

            Dim countLista = ds_Consulta_Reporte01.Tables(0).Rows.Count
            If (countLista = 0) Then
                lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Green
                lbl_ValidaLibro2.Text = "N° Registros: " & countLista
                lbl_ValidaLibro2.Focus()
                btn_verFichaLibro2.Enabled = False
            Else
                lbl_ValidaLibro2.Visible = True
                lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Green
                lbl_ValidaLibro2.Text = "N° Registros: " & countLista
                btn_verFichaLibro2.Enabled = True
            End If
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaLibro2.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_CalcularPrestamo1_Click(sender As Object, e As EventArgs) Handles btn_CalcularPrestamo1.Click
        Try
            'Verificar vacios
            If Len(Trim(txt_ValorPrestamo1.Text)) = 0 Then
                lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Red
                lbl_ValidaPrestamo1.Text = "Ingrese el Número de Préstamo"
                txt_ValorPrestamo1.Text = "" ' si ingresa esapacions vacios con la barra espaciadora
                txt_ValorPrestamo1.Focus()
                Exit Sub
            End If

            Dim Valor As String = txt_ValorPrestamo1.Text.Trim
            Dim vBandera As String
            vBandera = "5"

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarPestamo(Valor, vBandera)

            Dim countLista = ds_Consulta_Reporte01.Tables(0).Rows.Count
            If (countLista = 0) Then
                lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Green
                lbl_ValidaPrestamo1.Text = "N° Registros: " & countLista
                lbl_ValidaPrestamo1.Focus()
                btn_VerFichaPrestamo1.Enabled = False
                rb_FormatContrato.Enabled = False
            Else
                lbl_ValidaPrestamo1.Visible = True
                lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Green
                lbl_ValidaPrestamo1.Text = "N° Registros: " & countLista

                btn_VerFichaPrestamo1.Enabled = True
                rb_FormatContrato.Enabled = False
            End If
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaPrestamo1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub
    Private Sub btn_CalcularListaPrestamo_Click(sender As Object, e As EventArgs) Handles btn_CalcularListaPrestamo.Click
        Try
            '---------Declaración de variables--------------------
            Dim v_cFechaDesde, v_cFechaHasta As Date
            Dim v_cTipoFecha, v_Bandera_Tipo As String

            v_cTipoFecha = "fecha_Ing"
            v_cFechaDesde = txt_FechaDesdePrestamo.Text
            v_cFechaHasta = txt_FechaHastaPrestamo.Text
            v_Bandera_Tipo = cbox_EstadoPrestamo.SelectedValue

            '------------Validación de campos fechas--------------
            If Not IsDate(v_cFechaDesde) Then
                lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaPrestamo2.Text = "Fecha Desde Incorrecta"
                Exit Sub
            End If

            If Not IsDate(v_cFechaHasta) Then
                lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaPrestamo2.Text = "Fecha Hasta Incorrecta"
                Exit Sub
            End If

            If Len(txt_FechaDesdePrestamo.Text) = 0 Or Len(txt_FechaHastaPrestamo.Text) = 0 Then 'Las fechas no pueden estar en blanco.
                lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaPrestamo2.Text = "Las fechas desde y hasta no pueden estar en blanco, ingrese fecha correcta."
                Exit Sub
            ElseIf (DateTime.Compare(txt_FechaDesdePrestamo.Text, txt_FechaHastaPrestamo.Text) > 0) Then 'fecha desde no puede ser mayor que la fecha hasta.
                lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Red
                lbl_ValidaPrestamo2.Text = "La fecha desde no puede ser mayor que la fecha hasta"
                Exit Sub
            Else

            End If

            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.ConsultaRptPrestamoLista(v_cTipoFecha, v_cFechaDesde, v_cFechaHasta, v_Bandera_Tipo)
            Dim countLista = ds_Consulta_Reporte01.Tables(0).Rows.Count

            If (countLista = 0) Then
                lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Green
                lbl_ValidaPrestamo2.Text = "N° Registros: " & countLista
                lbl_ValidaPrestamo2.Focus()
                btn_verFichaPrestamo2.Enabled = False
            Else
                lbl_ValidaPrestamo2.Visible = True
                lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Green
                lbl_ValidaPrestamo2.Text = "N° Registros: " & countLista
                btn_verFichaPrestamo2.Enabled = True
            End If
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaPrestamo2.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaPrestamo2.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_CalcularListaBusqWeb_Click(sender As Object, e As EventArgs) Handles btn_CalcularListaBusqWeb.Click
        Try
            '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
            Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.ConsultaRptHccListaBusqWeb()
            Dim countLista = ds_Consulta_Reporte01.Tables(0).Rows.Count

            If (countLista = 0) Then
                lbl_ValidaBusqWeb.ForeColor = System.Drawing.Color.Green
                lbl_ValidaBusqWeb.Text = "N° Registros: " & countLista
                lbl_ValidaBusqWeb.Focus()
                btn_verFichaBusqWeb.Enabled = False
            Else
                lbl_ValidaBusqWeb.Visible = True
                lbl_ValidaBusqWeb.ForeColor = System.Drawing.Color.Green
                lbl_ValidaBusqWeb.Text = "N° Registros: " & countLista
                btn_verFichaBusqWeb.Enabled = True
            End If
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaBusqWeb.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaBusqWeb.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_verFichaLibro1_Click(sender As Object, e As EventArgs) Handles btn_verFichaLibro1.Click
        Try
            Dim v_FormatoReporte As String = rdb_Libro1Formato.SelectedItem.Value
            Exportar_Reporte_Libro(v_FormatoReporte, "rptFichaDetalleLibro")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_validaLibro1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_validaLibro1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_verHistorialLibro_Click(sender As Object, e As EventArgs) Handles btn_verHistorialLibro.Click
        Try
            Dim v_FormatoReporte As String = rdb_Libro1Formato.SelectedItem.Value
            Exportar_Reporte_LibroHistorial(v_FormatoReporte, "rptFichaHistoriaLibroPrest")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_validaLibro1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_validaLibro1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_verFichaLibro2_Click(sender As Object, e As EventArgs) Handles btn_verFichaLibro2.Click
        Try
            Dim v_TipoReporte As String = cbox_TipoListaLibro.SelectedItem.Value
            Dim v_FormatoReporte As String = cbox_FormatoListaLibro.SelectedItem.Value
            Exportar_Reporte_ListaLibro(v_FormatoReporte, v_TipoReporte)
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaLibro2.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub
    Private Sub btn_VerFichaPrestamo1_Click(sender As Object, e As EventArgs) Handles btn_VerFichaPrestamo1.Click
        Try
            Dim v_FormatoReporte As String = rb_FormatContrato.SelectedItem.Value
            Exportar_Reporte_Prestamo(v_FormatoReporte, "rptFichaPrestamo")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_ValidaPrestamo1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Private Sub btn_verFichaPrestamo2_Click(sender As Object, e As EventArgs) Handles btn_verFichaPrestamo2.Click
        Try
            Dim v_TipoReporte As String = cbox_TipoListaPrestamo.SelectedItem.Value
            Dim v_FormatoReporte As String = cbox_FormatoListaPrestamo.SelectedItem.Value
            Exportar_Reporte_ListaPrestamo(v_FormatoReporte, v_TipoReporte)
        Catch ex As Exception ' En caso no se pueda exportar el archivo

        End Try
    End Sub

    Private Sub btn_verFichaBusqWeb_Click(sender As Object, e As EventArgs) Handles btn_verFichaBusqWeb.Click
        Try
            Dim v_TipoReporte As String = cbox_BusqWebTipo.SelectedItem.Value
            Dim v_FormatoReporte As String = cbox_BusqWebFormato.SelectedItem.Value
            Exportar_Reporte_ListaBusqWeb(v_FormatoReporte, v_TipoReporte)
        Catch ex As Exception ' En caso no se pueda exportar el archivo

        End Try
    End Sub

    Private Sub btn_VerInventario_Click(sender As Object, e As EventArgs) Handles btn_VerInventario.Click
        Try
            img_load.Visible = True
            Dim v_TipoReporte As String = cbox_FormatoListaLibro.SelectedItem.Value
            Exportar_Reporte_InventarioLibro(v_TipoReporte)
        Catch ex As Exception ' En caso no se pueda exportar el archivo

        End Try
    End Sub

    Private Sub Exportar_Reporte_Libro(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        Dim vLibro As String
        Dim vBandera As String

        vLibro = txt_valorLibro1.Text.Trim
        vBandera = "7"

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rptFichaDetalleLibro" Then
            v_TipoReporte = "rptFichaDetalleLibro" 'Elijo Lista de todos los contratos segun filtro
        ElseIf v_TipoReporte = "rptFichaHistorialLibroPrest" Then
            v_TipoReporte = "rptFichaHistorialLibroPrest" 'Muestra la lista de oficinas y cuantos registros tiene
        Else
            lbl_validaLibro1.ForeColor = System.Drawing.Color.Red
            lbl_validaLibro1.Text = "El tipo de Reporte no existe o es incorrecto"
            Exit Sub
        End If

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarLibro(vLibro, vBandera)

        '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
        Dim dtsFichaDetalle As New dtsFichaDetalle() ' Crea un nuevo dataset tipo xsd

        For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
            dtsFichaDetalle.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
        Next

        rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer
        rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc

        Dim Movimiento_Rpt As New ReportDataSource("dt_Ficha_Detalle_Libro", dtsFichaDetalle.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
        rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
        rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

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

    Private Sub Exportar_Reporte_LibroHistorial(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        Dim vLibro As String
        Dim vBandera As String

        vLibro = txt_valorLibro1.Text.Trim
        vBandera = "6"

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rptFichaHistoriaLibroPrest" Then
            v_TipoReporte = "rptFichaHistoriaLibroPrest" 'Elijo Lista de todos los contratos segun filtro
        ElseIf v_TipoReporte = "rptFichaHistorialLibroPrest" Then
            v_TipoReporte = "rptFichaHistorialLibroPrest" 'Muestra la lista de oficinas y cuantos registros tiene
        Else
            lbl_validaLibro1.ForeColor = System.Drawing.Color.Red
            lbl_validaLibro1.Text = "El tipo de Reporte no existe o es incorrecto"
            Exit Sub
        End If

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarPestamo(vLibro, vBandera)

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

    Private Sub Exportar_Reporte_ListaLibro(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        '---------Declaración de variables--------------------
        Dim v_cFechaDesde, v_cFechaHasta As Date
        Dim v_cTipoFecha, v_Bandera_Tipo As String
        Dim v_cAutor

        v_cTipoFecha = "fecha_Ing"
        v_cFechaDesde = txt_FechaDesdeLibro.Text
        v_cFechaHasta = txt_FechaHastaLibro.Text
        v_Bandera_Tipo = ""
        v_cAutor = txt_autor.Text

        '------------Validación de campos fechas--------------
        If Not IsDate(txt_FechaDesdeLibro.Text) Then
            lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
            lbl_ValidaLibro2.Text = "Fecha Desde Incorrecta"
            Exit Sub
        End If

        If Not IsDate(txt_FechaHastaLibro.Text) Then
            lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
            lbl_ValidaLibro2.Text = "Fecha Hasta Incorrecta"
            Exit Sub
        End If

        If Len(txt_FechaDesdeLibro.Text) = 0 Or Len(txt_FechaHastaLibro.Text) = 0 Then 'Las fechas no pueden estar en blanco.
            lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
            lbl_ValidaLibro2.Text = "Las fechas desde y hasta no pueden estar en blanco, ingrese fecha correcta."
            Exit Sub
        ElseIf (DateTime.Compare(txt_FechaDesdeLibro.Text, txt_FechaHastaLibro.Text) > 0) Then 'fecha desde no puede ser mayor que la fecha hasta.
            lbl_ValidaLibro2.ForeColor = System.Drawing.Color.Red
            lbl_ValidaLibro2.Text = "La fecha desde no puede ser mayor que la fecha hasta"
            Exit Sub
        Else
            lbl_ValidaLibro2.Text = ""
        End If

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rpt_Ficha_Lista_Libros" Then
            v_TipoReporte = "rpt_Ficha_Lista_Libros" 'Elijo Lista de todos los contratos segun filtro
        ElseIf v_TipoReporte = "rpt_Ficha_Lista_PrestamosxOficina" Then
            v_TipoReporte = "rpt_Ficha_Lista_PrestamosxOficina" 'Muestra la lista de oficinas y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumIFI" Then
            v_TipoReporte = "rpt_AcumuladoIFI" 'Muestra la IFI y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumDia" Then
            v_TipoReporte = "rpt_AcumuladoDia" 'Muestra la IFI y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumuladoCustodia" Then
            v_TipoReporte = "rpt_AcumuladoCustodia" 'Muestra la IFI y cuantos registros tiene
        Else
            'lbl_ValidaHcc2.ForeColor = System.Drawing.Color.Red
            'lbl_ValidaHcc2.Text = "El tipo de Reporte no existe o es incorrecto"
            Exit Sub
        End If

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.ConsultaRptLibroLista(v_cTipoFecha, v_cFechaDesde, v_cFechaHasta, v_Bandera_Tipo, v_cAutor)

        '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
        Dim dtsLibros As New dtsLibros() ' Crea un nuevo dataset tipo xsd

        For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
            dtsLibros.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
        Next
        rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer

        rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc

        Dim parameters As New List(Of ReportParameter)() 'Creo una lista para llenar los parametros del RDLC con los sgtes datos
        parameters.Add(New ReportParameter("Fecha_Desde", txt_FechaDesdeLibro.Text))
        parameters.Add(New ReportParameter("Fecha_Hasta", txt_FechaHastaLibro.Text))
        rv_General.LocalReport.SetParameters(parameters) 'Luego de dar valores los setteo en el reportViewer

        Dim Movimiento_Rpt As New ReportDataSource("dt_Lista_Libros", dtsLibros.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
        rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
        rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

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

    Private Sub Exportar_Reporte_ListaPrestamo(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        '---------Declaración de variables--------------------
        Dim v_cFechaDesde, v_cFechaHasta As Date
        Dim v_cTipoFecha, v_Bandera_Tipo As String

        v_cTipoFecha = "fecha_Ing"
        v_cFechaDesde = txt_FechaDesdePrestamo.Text
        v_cFechaHasta = txt_FechaHastaPrestamo.Text
        v_Bandera_Tipo = cbox_EstadoPrestamo.SelectedValue

        '------------Validación de campos fechas--------------
        If Not IsDate(txt_FechaDesdePrestamo.Text) Then
            btn_verFichaPrestamo2.ForeColor = System.Drawing.Color.Red
            btn_verFichaPrestamo2.Text = "Fecha Desde Incorrecta"
            Exit Sub
        End If

        If Not IsDate(txt_FechaHastaPrestamo.Text) Then
            btn_verFichaPrestamo2.ForeColor = System.Drawing.Color.Red
            btn_verFichaPrestamo2.Text = "Fecha Hasta Incorrecta"
            Exit Sub
        End If

        If Len(txt_FechaDesdePrestamo.Text) = 0 Or Len(txt_FechaHastaPrestamo.Text) = 0 Then 'Las fechas no pueden estar en blanco.
            btn_verFichaPrestamo2.ForeColor = System.Drawing.Color.Red
            btn_verFichaPrestamo2.Text = "Las fechas desde y hasta no pueden estar en blanco, ingrese fecha correcta."
            Exit Sub
        ElseIf (DateTime.Compare(txt_FechaDesdePrestamo.Text, txt_FechaHastaPrestamo.Text) > 0) Then 'fecha desde no puede ser mayor que la fecha hasta.
            btn_verFichaPrestamo2.ForeColor = System.Drawing.Color.Red
            btn_verFichaPrestamo2.Text = "La fecha desde no puede ser mayor que la fecha hasta"
            Exit Sub
        Else
            btn_verFichaPrestamo2.Text = ""
        End If

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rpt_Ficha_Lista_Prestamos" Then
            v_TipoReporte = "rpt_Ficha_Lista_Prestamos" 'Elijo Lista de todos los contratos segun filtro
        ElseIf v_TipoReporte = "rpt_Ficha_Lista_PrestamosxOficina" Then
            v_TipoReporte = "rpt_Ficha_Lista_PrestamosxOficina" 'Muestra la lista de oficinas y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumIFI" Then
            v_TipoReporte = "rpt_AcumuladoIFI" 'Muestra la IFI y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumDia" Then
            v_TipoReporte = "rpt_AcumuladoDia" 'Muestra la IFI y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumuladoCustodia" Then
            v_TipoReporte = "rpt_AcumuladoCustodia" 'Muestra la IFI y cuantos registros tiene
        Else
            Exit Sub
        End If

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------

        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.ConsultaRptPrestamoLista(v_cTipoFecha, v_cFechaDesde, v_cFechaHasta, v_Bandera_Tipo)
        '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
        Dim dtsFichaPrestamo As New dtsFichaPrestamo() ' Crea un nuevo dataset tipo xsd

        For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
            dtsFichaPrestamo.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
        Next
        rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer

        rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc

        Dim parameters As New List(Of ReportParameter)() 'Creo una lista para llenar los parametros del RDLC con los sgtes datos

        parameters.Add(New ReportParameter("Fecha_Desde", txt_FechaDesdePrestamo.Text))
        parameters.Add(New ReportParameter("Fecha_Hasta", txt_FechaHastaPrestamo.Text))
        rv_General.LocalReport.SetParameters(parameters) 'Luego de dar valores los setteo en el reportViewer

        Dim Movimiento_Rpt As New ReportDataSource("dt_Lista_Prestamos", dtsFichaPrestamo.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
        rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
        rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

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

    Private Sub Exportar_Reporte_ListaBusqWeb(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rpt_BusquedasWeb" Then
            v_TipoReporte = "rpt_BusquedasWeb" 'Elijo Lista de todos los contratos segun filtro
        ElseIf v_TipoReporte = "rpt_AcumOFI" Then
            v_TipoReporte = "rpt_AcumuladoOFI" 'Muestra la lista de oficinas y cuantos registros tiene
        Else
            lbl_ValidaBusqWeb.ForeColor = System.Drawing.Color.Red
            lbl_ValidaBusqWeb.Text = "El tipo de Reporte no existe o es incorrecto"
            Exit Sub
        End If

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.ConsultaRptHccListaBusqWeb()

        '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
        Dim dtsBusquedaWeb As New dtsBusquedaWeb() ' Crea un nuevo dataset tipo xsd

        For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
            dtsBusquedaWeb.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
        Next

        rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer
        rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & v_TipoReporte & ".rdlc") 'localiza la plantilla rdlc

        Dim parameters As New List(Of ReportParameter)() 'Creo una lista para llenar los parametros del RDLC con los sgtes datos

        rv_General.LocalReport.SetParameters(parameters) 'Luego de dar valores los setteo en el reportViewer

        Dim Movimiento_Rpt As New ReportDataSource("dt_BusquedaWeb", dtsBusquedaWeb.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
        rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
        rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

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

    Private Sub Exportar_Reporte_Prestamo(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        '---------Declaración de variables--------------------
        Dim v_cFechaDesde, v_cFechaHasta As Date
        Dim v_cTipoFecha, v_Bandera_OFI, v_cOficina, v_Bandera_IFI, v_cEntIFI, v_Bandera_Contrato, v_cCustodiaContrato,
            v_Bandera_Pagare, v_cCustodiaPagare, v_Bandera_Garantia, v_cCustodiaGarantia As String

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rptFichaPrestamo" Then
            v_TipoReporte = "rptFichaPrestamo" 'Elijo Lista de todos los contratos segun filtro
        ElseIf v_TipoReporte = "rptFichaDetalleHcc" Then
            v_TipoReporte = "rpt_AcumuladoOFI" 'Muestra la lista de oficinas y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumIFI" Then
            v_TipoReporte = "rpt_AcumuladoIFI" 'Muestra la IFI y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumDia" Then
            v_TipoReporte = "rpt_AcumuladoDia" 'Muestra la IFI y cuantos registros tiene
        ElseIf v_TipoReporte = "rpt_AcumuladoCustodia" Then
            v_TipoReporte = "rpt_AcumuladoCustodia" 'Muestra la IFI y cuantos registros tiene
        Else
            lbl_ValidaPrestamo1.ForeColor = System.Drawing.Color.Red
            lbl_ValidaPrestamo1.Text = "El tipo de Reporte no existe o es incorrecto"
            Exit Sub
        End If

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
        Dim Valor As String = txt_ValorPrestamo1.Text.Trim
        Dim vBandera As String = "5"

        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.BuscarPestamo(Valor, vBandera)

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

    Private Sub Exportar_Ficha(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO DIRECTO DEBIDO A QUE EL DATASET XSD YA ESTA CARGADO DESDE LA CONSULTA
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

    Private Sub Exportar_Reporte_InventarioLibro(ByVal FormatoReporte As String)

        '-----------REALIZA LA CONSULTA SEGUN LOS FILTROS UTILIZADOS-------
        Dim ds_Consulta_Reporte01 As DataSet = cls_Metodos.InventarioLibro()

        '-------SI EXISTEN REGISTROS, SE CARGA EL REPORTE--------
        Dim dtsInventarioLibro As New dtsInventarioLibro() ' Crea un nuevo dataset tipo xsd

        For Each dr_Consulta_Reporte01 As DataRow In ds_Consulta_Reporte01.Tables(0).Rows 'Puebla el dataset ds_Reporte01
            dtsInventarioLibro.Tables(0).Rows.Add(dr_Consulta_Reporte01.ItemArray) ' En base a la primera consulta realiza el llenado deds_Reporteo1
        Next
        rv_General.ProcessingMode = ProcessingMode.Local 'Invoca proceso del reportviewer

        rv_General.LocalReport.ReportPath = Server.MapPath("~/Reportes/" & "rpt_Ficha_Inventario_Libro" & ".rdlc") 'localiza la plantilla rdlc

        Dim Movimiento_Rpt As New ReportDataSource("dt_Inventario_Libros", dtsInventarioLibro.Tables(0)) 'se crea un datasource en base al dataset "ds_Movimiento" y busca el datatable "Movimiento"
        rv_General.LocalReport.DataSources.Clear() 'Inicia la carga de datasource
        rv_General.LocalReport.DataSources.Add(Movimiento_Rpt)

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
        Response.AppendHeader("Content-Disposition", "attachment; filename=" & "rpt_Ficha_Inventario_Libro" & "." & extension) 'El nombre del archivo de salida
        Response.BinaryWrite(bytes)
        Response.Flush()
        img_load.Visible = False
        Response.End()
    End Sub

    Private Sub btn_HistorialLector_Click(sender As Object, e As EventArgs) Handles btn_verHistorialEmpleado.Click
        Try
            Dim v_FormatoReporte As String = "PDF"
            Exportar_Reporte(v_FormatoReporte, "rptFichaHistoriaLectorPrest")
        Catch ex As Exception ' En caso no se pueda exportar el archivo
            lbl_validaLector1.Text = ex.Message 'Muestra mensaje original del error.
            lbl_validaLector1.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    Sub ExportarReporte_RDLCPrestamo(ByVal nombreReporte As String, ByVal tituloReporte As String, ByVal MydataSet As DataSet, ByVal strFile As String, ByVal subtituloRpt As String)
        Dim ds_Ficha_Prestamo As New DataSet()
        ds_Ficha_Prestamo = MydataSet

        Try
            Dim rds_Ficha_Prestamo As ReportDataSource
            ds_Ficha_Prestamo.Tables(0).TableName = "Ficha_Libro"
            rv_General.LocalReport.ReportPath = "Reportes\\" & nombreReporte
            rds_Ficha_Prestamo = New ReportDataSource("dt_Ficha_Prestamo", ds_Ficha_Prestamo.Tables(0))
            rv_General.LocalReport.DataSources.Clear()
            rv_General.LocalReport.DataSources.Add(rds_Ficha_Prestamo)
            rv_General.LocalReport.Refresh()
            Exportar_Ficha_RDLC(strFile, subtituloRpt)
        Catch ex As Exception
            Exit Sub
        Finally
            ds_Ficha_Prestamo = Nothing
        End Try
    End Sub

    Sub ExportarReporte_RDLCLibro(ByVal nombreReporte As String, ByVal tituloReporte As String, ByVal MydataSet As DataSet, ByVal strFile As String, ByVal subtituloRpt As String)
        Dim ds_Ficha_Prestamo As New DataSet()
        ds_Ficha_Prestamo = MydataSet
        Try
            Dim rds_Ficha_Prestamo As ReportDataSource
            ds_Ficha_Prestamo.Tables(0).TableName = "Ficha_Libro"
            rv_General.LocalReport.ReportPath = "Reportes\\" & nombreReporte
            rds_Ficha_Prestamo = New ReportDataSource("dt_Ficha_Detalle_Libro", ds_Ficha_Prestamo.Tables(0))
            rv_General.LocalReport.DataSources.Clear()
            rv_General.LocalReport.DataSources.Add(rds_Ficha_Prestamo)
            rv_General.LocalReport.Refresh()
            Exportar_Ficha_RDLC(strFile, subtituloRpt)
        Catch ex As Exception
            Exit Sub
        Finally
            ds_Ficha_Prestamo = Nothing
        End Try
    End Sub

    Sub ExportarReporte_RDLCHcc(ByVal nombreReporte As String, ByVal tituloReporte As String, ByVal MydataSet As DataSet, ByVal strFile As String, ByVal subtituloRpt As String)
        Dim ds_Ficha_Prestamo As New DataSet()
        ds_Ficha_Prestamo = MydataSet

        Try
            Dim rds_Ficha_Prestamo As ReportDataSource
            ds_Ficha_Prestamo.Tables(0).TableName = "Ficha_Libro"
            rv_General.LocalReport.ReportPath = "Reportes\\" & nombreReporte
            rds_Ficha_Prestamo = New ReportDataSource("dt_Ficha_Detalle_Hcc", ds_Ficha_Prestamo.Tables(0))
            rv_General.LocalReport.DataSources.Clear()
            rv_General.LocalReport.DataSources.Add(rds_Ficha_Prestamo)
            rv_General.LocalReport.Refresh()
            Exportar_Ficha_RDLC(strFile, subtituloRpt)
        Catch ex As Exception
            Exit Sub
        Finally
            ds_Ficha_Prestamo = Nothing
        End Try
    End Sub

    Private Sub Exportar_Ficha_RDLC(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO DIRECTO DEBIDO A QUE EL DATASET XSD YA ESTA CARGADO DESDE LA CONSULTA
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


    Private Sub Exportar_Reporte(ByVal FormatoReporte As String, ByVal v_TipoReporte As String)
        'AQUI EXPORTO UTILIZANDO DE NUEVO LOS FILTROS DEBIDO A QUE EL DATASET XSD RECIEN SE VA A CARGAR EN ESTE PROCESO.
        Dim vValor As String
        Dim vBandera As String

        vValor = txt_ValorCodEmpleado.Text.Trim
        vBandera = "7"

        '-----------CASO TIPO REPORTE RPT---------------------------
        If v_TipoReporte = "rptFichaHistoriaLectorPrest" Then

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

        ElseIf v_TipoReporte = "rptFichaHistorialLibroPrest" Then
            v_TipoReporte = "rptFichaHistorialLibroPrest" 'Muestra la lista de oficinas y cuantos registros tiene
        Else
            lbl_validaLector1.ForeColor = System.Drawing.Color.Red
            lbl_validaLector1.Text = "El tipo de Reporte no existe o es incorrecto"
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