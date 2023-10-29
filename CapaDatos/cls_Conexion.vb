Imports System.Web
Imports System.Data.SqlClient

Public Class cls_ConexionBD
    Public Shared adaptador As SqlClient.SqlDataAdapter
    Public Shared comando As SqlClient.SqlCommand
    Public Shared Cnn As SqlClient.SqlConnection

    Public Shared Sub AbrirConexion()
        Try
            'CASA
            Cnn = New SqlConnection("Data Source = HP-OMEN; Initial Catalog = BN_BIBLIOTECA; Integrated Security = True")

            'AWS
            'Cnn = New SqlConnection("Data Source = aws-bn-biblioteca.crvj9p6gdr4z.us-east-2.rds.amazonaws.com; Database = BN_BIBLIOTECA; user ID=; Password=;")
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        End Try
    End Sub

    Public Shared Sub AbrirConexionPersonal()
        Try
            'CASA
            Cnn = New SqlConnection("Data Source = HP-OMEN; Initial Catalog = BN_FOTOCHECK; Integrated Security = True")
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        End Try
    End Sub
End Class
