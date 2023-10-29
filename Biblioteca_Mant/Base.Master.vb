Imports System.Data.SqlClient

Public Class MasterInicio
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If validarSesion() Then
            Dim btn_menu = Session("menu")
            If btn_menu = "frmPrestamoLibro" Then
                frmPrestamoLibro.Attributes.Add("class", "btnSeleccionado")
                Session("frm_reserva") = "0"
            ElseIf btn_menu = "frm_mantenimiento" Then
                frm_mantenimiento.Attributes.Add("class", "btnSeleccionado")
            ElseIf btn_menu = "frm_reportes" Then
                frm_reportes.Attributes.Add("class", "btnSeleccionado")
            ElseIf btn_menu = "frm_Configuracion" Then
                frm_configuracion.Attributes.Add("class", "btnSeleccionado")
            ElseIf btn_menu = "frm_contacto" Then
                frm_contacto.Attributes.Add("class", "btnSeleccionado")
            End If

            lbl_WS_CodEmpl.Text = Session("s_CodEmpleado")
            lbl_WS_UserAplic.Text = Session("s_CodUsuario")
            lbl_WS_NombreCompleto.Text = Session("s_NomUsuario")
            lbl_WS_Localidad.Text = Session("s_NomOficina")

        Else
            Response.Write("<script>parent.location.href='frmLogin.aspx?expiro=Su sesión a expirado,porfavor ingrese de nuevo';</script>")
        End If
    End Sub

    '==============BOTON INICIO=====================================
    Private Sub linkbtn_Inicio_Click(sender As Object, e As EventArgs) Handles linkbtn_Inicio.Click
        Try
            Response.Redirect("frm_inicio.aspx")
        Catch ex As Exception
        End Try
    End Sub


    Protected Sub lnkcerrarSesion_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lnkcerrarSesion.Click
        CerrarSesion()
        Response.Write("<script>parent.location.href='frmLogin.aspx';</script>")
    End Sub

    Sub CerrarSesion()
        Session.RemoveAll()
    End Sub

    Public Function validarSesion() As Boolean
        If Session("s_CodUsuario") Is Nothing Then
            Return False
        End If
        Return True
    End Function

End Class