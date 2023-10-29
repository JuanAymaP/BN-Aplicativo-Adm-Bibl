Imports CapaNegocio

Public Class frm_Configuracion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("menu") = "frm_Configuracion"

        If f_validarSesion() = True Then

            If Not IsPostBack Then
                Try
                    cls_Metodos.culture_info()
                    Validacion("Page_Load")
                    txtParrafo.Attributes.Add("onkeydown", "count_caract(this)")
                    btnGrabar.Enabled = False
                    CargarDatos()
                Catch ex As Exception
                    lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
                    lbl_Valida.ForeColor = System.Drawing.Color.Red
                    'btnBuscar.Visible = False
                End Try
                txtParrafo.CssClass = "deshabilita"
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

        'Validaciones de los botones de acción
        If Validacion = "Gdv_Lista_Select" Then
            btnCancelar.Enabled = True
            btnGrabar.Visible = False
            btnModificar.Enabled = True
        ElseIf Validacion = "Modificar" Then
            txtParrafo.ReadOnly = False
            btnGrabar.Visible = True
            btnGrabar.Enabled = True
            btnModificar.Enabled = False
            btnCancelar.Enabled = True
        ElseIf Validacion = "Page_Load" Then
            txtParrafo.ReadOnly = True
            btnGrabar.Visible = True
            btnGrabar.Enabled = False
            btnModificar.Enabled = False
            btnCancelar.Enabled = True
        End If
    End Sub

    Sub CargarDatos()
        grv_parrafo.DataSource = cls_Metodos.MostrarParrafo("1", "")
        grv_parrafo.DataBind()
    End Sub

    '==============BOTON GRABAR=====================================
    Protected Sub btnGrabar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnGrabar.Click
        Try
            Call grabar()
        Catch ex As Exception
            'lblMsjMantLibro.Text = ex.Message
            'lblMsjMantLibro.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    '==============BOTON CANCELAR====================================='
    Private Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click 'Recarga la pagina desde cero
        Try
            Response.Redirect("frm_Configuracion.aspx")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '==============FUNCION/PROCESO GRABAR====================================='
    Private Sub grabar()

        Dim v_Parrafo As String = txtParrafo.Text.Trim
        cls_Metodos.Actualizar_Parrafo("2", v_Parrafo)   'Se realiza el update a la tabla
        btnGrabar.Enabled = False
        Validacion("Page_Load")
        lbl_Valida.ForeColor = System.Drawing.Color.Green
        lbl_Valida.Visible = True
        lbl_Valida.Text = "Registro actualizado correctamente"
        CargarDatos()

    End Sub

    '==============BOTON MODIFICAR===================================='
    Private Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            'Limpiar("Modificar")
            Session("TipoGrabar2") = "Modificar"

            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange
            lbl_Valida.Text = "Modificando registro..."
            Validacion("Modificar")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub

    '====================CARGA DEL GRIDVIEW========================================='
    Protected Sub grv_parrafo_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

                Dim c_cParrafo As String
                If Not IsDBNull(dr("cParrafo")) Then
                    c_cParrafo = dr("cParrafo")
                Else
                    c_cParrafo = " "
                End If

                Dim c_cIdParrafo As String
                If Not IsDBNull(dr("cConfiguracion_Id")) Then
                    c_cIdParrafo = dr("cConfiguracion_Id")
                Else
                    c_cIdParrafo = " "
                End If

                CType(e.Row.FindControl("lbl_id"), WebControls.Label).Text = c_cIdParrafo
                CType(e.Row.FindControl("lbl_parrafo"), WebControls.Label).Text = c_cParrafo

            End If
        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            'btnBuscar.Visible = False
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub grv_parrafo_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grv_parrafo.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            grv_parrafo.PageIndex = e.NewPageIndex
            If Session("sBusqueda") = "0" Then

                ' lbl_Valida.Text = Session("gdv_Lista")
            ElseIf Session("sBusqueda") = "1" Then
                Dim valor As String = Session("vBusqueda")

                Dim vBandera As String = Session("vBandera")

            End If



        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red

        End Try
    End Sub


    '=============================SELECCION DE UN REGISTRO DEL GRID VIEW========================================
    Protected Sub grv_parrrafo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grv_parrafo.SelectedIndexChanged ' Muestra en los campos la informacion del libro seleccionado
        Try
            Dim v_idParrafo As String = TryCast(grv_parrafo.SelectedRow.FindControl("lbl_id"), Label).Text 'Capturo el valor de lbl_codEmpleado
            Listar_RegistroParrafo(v_idParrafo)
            lbl_Valida.Text = "Ha seleccionado un registro de la grilla"
            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange

            Validacion("Gdv_Lista_Select")

        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
        End Try
    End Sub


    Private Sub Listar_RegistroParrafo(ByVal v_idParrafo As String)
        Dim dt_Movimiento As DataTable
        '--------------Mostrará en las casillas el registro seleccionado de la grilla-----------
        dt_Movimiento = CapaNegocio.cls_Metodos.MostrarParrafo("1", "").Tables(0) 'Cargo dt_Lista
        Dim c_cParrafo As String = dt_Movimiento.Rows(0)("cParrafo").ToString()
        txtParrafo.Text = c_cParrafo
    End Sub

End Class