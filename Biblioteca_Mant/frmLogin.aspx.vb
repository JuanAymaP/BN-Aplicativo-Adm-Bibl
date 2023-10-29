Public Class FrmLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Expiro") = "1" Then
            lbl_Mensaje.Text = "Su sesión ha expirado, ingrese nuevamente sus accesos"
            Session("Expiro") = "0"
        Else
            If Not IsPostBack Then
                txt_Usuario.Focus()
            End If
        End If
    End Sub

    Protected Sub btn_Iniciar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_Iniciar.Click
        Try
            If varficarCampos() Then
                If ValidarLogin(UCase(Trim(txt_Usuario.Text)), UCase(Trim(txt_Clave.Text))) Then
                    Response.Redirect("frm_inicio.aspx")    'Descomentar cuando ya habilite el login
                Else
                    lbl_Mensaje.Text = "La clave y/o usuario es incorrecto, compruebe escribir en mayúsculas"
                End If
            End If
        Catch ex As Exception
            lbl_Mensaje.Text = ex.Message
        End Try
    End Sub
    Public Function ValidarLogin(ByVal user As String, ByVal pass As String) As Boolean
        Dim result As Boolean = False
        If user = "PERC" And pass = "PERC01" Then
            result = True
            Session("perfil") = "SUPERVISOR"
            Session("s_CodOficina") = "0001"
            Session("s_CodUsuario") = txt_Usuario.Text.Trim
            Session("s_CodEmpleado") = "3567319"
            Session("s_NomUsuario") = "Percy Alexander Ñaccha Rojas"
            Session("s_NomOficina") = "San Borja"

        ElseIf user = "JUAN" And pass = "JUAN01" Then
            result = True
            Session("perfil") = "OPERADOR"
            Session("s_CodOficina") = "0001"
            Session("s_CodUsuario") = txt_Usuario.Text.Trim
            Session("s_CodEmpleado") = "3458741"
            Session("s_NomUsuario") = "Juan Fidel Ayma Pumainca"
            Session("s_NomOficina") = "San Borja"

        ElseIf user = "HUMB" And pass = "HUMB01" Then
            result = True
            Session("perfil") = "CONSULTOR"
            Session("s_CodOficina") = "0001"
            Session("s_CodUsuario") = txt_Usuario.Text.Trim
            Session("s_CodEmpleado") = "5872348"
            Session("s_NomUsuario") = "Humberto Valentin Bayes Enriquez"
            Session("s_NomOficina") = "San Borja"
        End If

        Return result
    End Function

    Public Function varficarCampos() As Boolean
        If txt_Usuario.Text.Trim <> "" Then
            If txt_Clave.Text.Trim <> "" Then
                Return True
            Else
                lbl_Mensaje.Text = "Ingrese su clave"
                txt_Clave.Focus()
                Return False
            End If
        Else

            lbl_Mensaje.Text = "Ingrese su usuario"

            txt_Usuario.Focus()
            Return False
        End If
        Return False
    End Function
End Class