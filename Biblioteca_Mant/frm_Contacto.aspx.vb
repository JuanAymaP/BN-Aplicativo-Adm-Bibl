Public Class frm_Contacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("menu") = "frm_contacto"

        If f_validarSesion() = True Then


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

End Class