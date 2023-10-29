Imports System.Data.SqlClient
Imports System.Globalization
Imports System.Threading
Imports CapaDatos

Public Class cls_Metodos
    '-------------------------Procedimiento para predeterminar idioma del programa-------------------------------------------
    Public Shared Sub culture_info()
        Dim culture As CultureInfo
        culture = CultureInfo.CreateSpecificCulture("es-PE")
        Thread.CurrentThread.CurrentCulture = culture
        Thread.CurrentThread.CurrentUICulture = culture
    End Sub

    '---------------ACTUALIZAR LIBRO ----------------
    Public Shared Function Actualizar_Libro(ByVal titulo As String, ByVal codNumericoLibro As String, ByVal Edicion As String, ByVal anio As String,
                                    ByVal Autor As String, ByVal codClasif As String, ByVal categoria As String, ByVal detalles As String, ByVal idioma As String,
                                    ByVal nroEjempl As String, ByVal modo As String, ByVal pie_imprenta As String, ByVal tipo As String, ByVal nro_edicion As String, ByVal lugar As String,
                                    ByVal precioS As String, ByVal precioD As String, ByVal materias As String, ByVal estado As String, ByVal nro_IP As String,
                                    ByVal usuarioSist As String, ByVal nroPaginas As String, ByVal isbn As String, ByVal CD As String, ByVal mesAnnoCompraLibro As String)

        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_modificar_Libro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroTitulo, titulo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodNum, codNumericoLibro)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroEdicion, Edicion)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroAnio, anio)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroAutor, Autor)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodClasif, codClasif)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCateg, categoria)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroDetalles, detalles)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroIdioma, idioma)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroEjem, nroEjempl)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroModo, modo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroPieImp, pie_imprenta)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroTipo, tipo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroEdic, nro_edicion)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroLugar, lugar)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroPrecioS, precioS)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroPrecioD, precioD)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroMaterias, materias)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroEstado, estado)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroIp, nro_IP)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroUsuarioSist, usuarioSist)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroPag, nroPaginas)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroISBN, isbn)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCD, CD)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroMesAnioCompra, mesAnnoCompraLibro)

            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function

    '---------------BUSCAR LIBRO POR TODOS, COD_REGISTRO, COD_CLASIFICACION, MATERIA, TITULO, AUTOR----------------
    Public Shared Function BuscarLibro(ByVal vBusqueda As String, ByVal vBandera As String) As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Buscar_Libro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_busqueda, SqlDbType.VarChar).Value = vBusqueda
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_bandera, SqlDbType.VarChar).Value = vBandera
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try

    End Function

    '---------------INSERTAR NUEVO LIBRO----------------
    Public Shared Function Registrar_Libro(ByVal FechaRegistro As String, ByVal HoraRegistro As String, ByVal titulo As String, ByVal codNumericoLibro As String, ByVal Edicion As String, ByVal anio As String,
                                    ByVal Autor As String, ByVal codClasif As String, ByVal categoria As String, ByVal detalles As String, ByVal idioma As String,
                                    ByVal nroEjempl As String, ByVal modo As String, ByVal pie_imprenta As String, ByVal tipo As String, ByVal nro_edicion As String, ByVal lugar As String,
                                    ByVal precioS As String, ByVal precioD As String, ByVal materias As String, ByVal estado As String, ByVal nro_IP As String,
                                    ByVal usuarioSist As String, ByVal nroPaginas As String, ByVal isbn As String, ByVal CD As String, ByVal mesAnnoCompraLibro As String)
        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_registra_Libro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure


            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_LibroFechaRegistro, SqlDbType.SmallDateTime, 4).Value = FechaRegistro
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroHoraRegistro, HoraRegistro)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroTitulo, titulo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodNum, codNumericoLibro)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroEdicion, Edicion)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroAnio, anio)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroAutor, Autor)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodClasif, codClasif)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCateg, categoria)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroDetalles, detalles)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroIdioma, idioma)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroEjem, nroEjempl)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroModo, modo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroPieImp, pie_imprenta)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroTipo, tipo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroEdic, nro_edicion)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroLugar, lugar)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroPrecioS, precioS)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroPrecioD, precioD)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroMaterias, materias)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroEstado, estado)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroIp, nro_IP)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroUsuarioSist, usuarioSist)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroNroPag, nroPaginas)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroISBN, isbn)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCD, CD)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroMesAnioCompra, mesAnnoCompraLibro)

            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function

    Public Shared Function Actualizar_Movimiento(ByVal vTituloLibro As String, ByVal vCodNumerico As String)
        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_modificar_Libro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroTitulo, vTituloLibro)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodNum, vCodNumerico)
            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function

    'Funcion para listar en los campos de texto el ultimo registro de libro o el registro seleccionado
    Public Shared Function ListarFormLibro(ByVal tipoLista As String, ByVal vCodNumerico As String)
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarFormLibro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodNum, vCodNumerico)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_tipoLista, tipoLista)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function ListarFormLibroGridView(ByVal tipoLista As String, ByVal vCodNumerico As String)
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarFormLibro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LibroCodNum, vCodNumerico)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_tipoLista, tipoLista)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function ListarLibros()
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarLibros50, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function validacionContadorCodLibro()
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ContadorLibro, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos

            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            'df.Clear()
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function Listar_Movimiento() As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarLibros50, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function


    '---------------------------------------------PRESTAMOS------------------------------------------------------------------------------------------
    Public Shared Function validacionContadorIdPrestamo()
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ContadorPrestamo, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    '---------------LISTA LOS 50 ULTIMOS REGISTROS DE PRESTAMO ORDENADOS DE MANERA DESCENDEMENTE POR ID PRESTAMO----------------
    Public Shared Function Listar_Movimiento_Prestamo() As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarPrestamos50, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    '---------------BUSCAR LECTOR POR COD_EMPLEADO, DNI, APELLIDO O NOMBRE----------------
    Public Shared Function BuscarLector(ByVal vBusqueda As String, ByVal vBandera As String) As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexionPersonal()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Buscar_Lector, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_BusquedaLector, SqlDbType.VarChar).Value = vBusqueda
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_BanderaLector, SqlDbType.VarChar).Value = vBandera
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function ListarFormLectorGridVieW(ByVal vCodNumerico As String)
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexionPersonal()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarFormLector, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_CodLector, vCodNumerico)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function


    '---------------BUSCAR PRESTAMO POR COD_EMPLEADO, DNI, APELLIDO O NOMBRE, COD REGISTRO DE LIBRO----------------
    Public Shared Function BuscarPestamo(ByVal vBusqueda As String, ByVal vBandera As String) As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Buscar_Prestamo, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_BusquedaMovimiento, SqlDbType.VarChar).Value = vBusqueda
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_BanderaMovimiento, SqlDbType.VarChar).Value = vBandera
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    '---------------REGISTRAR MOVIMIENTO ----------------
    Public Shared Function Registrar_Prestamo(ByVal vLectorCodEmpleado As String, ByVal vLectorNombre As String,
                                              ByVal vLibroCodRegistro As String, ByVal vLibroTitulo As String, ByVal vCodClasif As String,
                                              ByVal vFechaPrestamo As String, ByVal vHoraPrestamo As String, ByVal vFechaDevolucion As String,
                                              ByVal vTipoOperacion As String,
                                              ByVal vPrestProvincia As String, ByVal vPrestEspecial As String)
        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_registra_Prestamo, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_Cod_Empleado, vLectorCodEmpleado)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_Nombre_Lector, vLectorNombre)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_CodNumLibro, vLibroCodRegistro)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_Titulo_Libro, vLibroTitulo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_CodClasif_Libro, vCodClasif)

            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_PRESTAMO_FechaPrestamo, SqlDbType.SmallDateTime, 4).Value = vFechaPrestamo
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_HoraPrestamo, vHoraPrestamo)
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_PRESTAMO_FechaDevolucion, SqlDbType.SmallDateTime, 4).Value = vFechaDevolucion

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_TipoOperacion, vTipoOperacion)

            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_PrestamoProvincia, vPrestProvincia)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_PrestamoEspecial, vPrestEspecial)

            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function

    '---------------ACTUALIZAR MOVIMIENTO ----------------
    Public Shared Function Actualizar_Prestamo(ByVal vIdPrestamo As String, ByVal vLibroCodRegistro As String,
                                               ByVal vFechaPrestamo As String, ByVal vFechaDevolucion As String,
                                               ByVal vTipoOperacion As String, vFechaAnulacion As String)
        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Modificar_Prestamo, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_IdMovimiento, vIdPrestamo)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_CodNumLibro, vLibroCodRegistro)
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_PRESTAMO_FechaPrestamo, SqlDbType.SmallDateTime, 4).Value = vFechaPrestamo
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_PRESTAMO_FechaDevolucion, SqlDbType.SmallDateTime, 4).Value = vFechaDevolucion
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_PRESTAMO_FechaAnulacion, SqlDbType.SmallDateTime, 4).Value = vFechaAnulacion
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_TipoOperacion, vTipoOperacion)
            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function


    Public Shared Function ListarFormPrestamoGridVieW(ByVal vCodPrestamo As String)
        culture_info()
        Dim df As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_ListarFormPrestamo, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_PRESTAMO_IdMovimiento, vCodPrestamo)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(df)
            Return df
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            df = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function PrestamosPendientes(ByVal vBandera As String)
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Prestamos_Vencidos, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_bandera, vBandera)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function Reservas(ByVal vBandera As String)
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Reservas, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_bandera, vBandera)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function


    '---------------------------------------------REPORTES------------------------------------------------------------------------------------------
    Public Shared Function ConsultaRptLibroLista(ByVal v_cTipoFecha As String, ByVal v_cFechaDesde As String, ByVal v_cFechaHasta As String,
                                                    ByVal v_cBandera_Tipo As String, ByVal v_cAutor As String) As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Rpt_Libro_Lista, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_TipoFecha, SqlDbType.VarChar).Value = v_cTipoFecha
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_RPT_FechaDesde, SqlDbType.SmallDateTime, 4).Value = v_cFechaDesde
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_RPT_FechaHasta, SqlDbType.SmallDateTime, 4).Value = v_cFechaHasta
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_Bandera_Tipo, SqlDbType.VarChar).Value = v_cBandera_Tipo
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_Autor, SqlDbType.VarChar).Value = v_cAutor
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos

            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function InventarioLibro() As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Rpt_Libro_Inventario, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function


    Public Shared Function ConsultaRptPrestamoLista(ByVal v_cTipoFecha As String, ByVal v_cFechaDesde As String, ByVal v_cFechaHasta As String,
                                                    ByVal v_cBandera_Tipo As String) As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Rpt_Prestamo_Lista, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_TipoFecha, SqlDbType.VarChar).Value = v_cTipoFecha
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_RPT_FechaDesde, SqlDbType.SmallDateTime, 4).Value = v_cFechaDesde
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_RPT_FechaHasta, SqlDbType.SmallDateTime, 4).Value = v_cFechaHasta
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_Bandera_Tipo, SqlDbType.VarChar).Value = v_cBandera_Tipo
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos

            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function



    Public Shared Function ConsultaRptHccListaV2(ByVal v_cTipoFecha As String, ByVal v_cFechaDesde As String, ByVal v_cFechaHasta As String,
                                                 ByVal v_Bandera_Tipo As String) As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Rpt_Hcc_ListaV2, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_TipoFecha, SqlDbType.VarChar).Value = v_cTipoFecha
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_RPT_FechaDesde, SqlDbType.SmallDateTime, 4).Value = v_cFechaDesde
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_RPT_FechaHasta, SqlDbType.SmallDateTime, 4).Value = v_cFechaHasta
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_RPT_Bandera_Tipo, SqlDbType.VarChar).Value = v_Bandera_Tipo
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function ConsultaRptHccListaBusqWeb() As DataSet
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Rpt_BusqWeb_Lista, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function


    Public Shared Function MostrarParrafo(ByVal vBandera As String, ByVal vParrafo As String)
        culture_info()
        Dim ds As New DataSet()
        Try
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Configuracion, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_Conf_Bandera, vBandera)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_Conf_CParrafo, vParrafo)
            cls_ConexionBD.adaptador = New SqlDataAdapter(cls_ConexionBD.comando)
            cls_ConexionBD.adaptador.Fill(ds)
            Return ds
        Catch ex1 As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.adaptador.Dispose() 'libera memoria
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
            cls_ConexionBD.adaptador = Nothing
            ds = Nothing
            SqlConnection.ClearAllPools()
        End Try
    End Function

    Public Shared Function Actualizar_Parrafo(ByVal vBandera As String, ByVal vParrafo As String)
        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_Configuracion, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_Conf_Bandera, vBandera)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_Conf_CParrafo, vParrafo)
            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function

    '-------------------REGISTRO LOG----------------------------------
    Public Shared Function RegistrarLog(ByVal cUser_Fecha As String, ByVal cUser_Hora As String,
                                        ByVal cUser_quien_consulta As String, ByVal cUser_DireccionIP As String,
                                        ByVal cUser_Accion As String, ByVal cUser_TemaBuscado As String, ByVal cUser_Modulo As String)
        Try
            culture_info()
            cls_ConexionBD.AbrirConexion()
            cls_ConexionBD.Cnn.Open()
            cls_ConexionBD.comando = New SqlCommand(cls_NombresSP.sp_LOG_registrar_log, cls_ConexionBD.Cnn)
            cls_ConexionBD.comando.CommandType = CommandType.StoredProcedure
            cls_ConexionBD.comando.Parameters.Add(cls_NombresSP.v_LOG_User_Fecha, SqlDbType.SmallDateTime, 4).Value = cUser_Fecha
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LOG_User_Hora, cUser_Hora)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LOG_User_quien_consulta, cUser_quien_consulta)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LOG_User_DireccionIP, cUser_DireccionIP)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LOG_User_Accion, cUser_Accion)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LOG_User_TemaBuscado, cUser_TemaBuscado)
            cls_ConexionBD.comando.Parameters.AddWithValue(cls_NombresSP.v_LOG_User_Modulo, cUser_Modulo)
            cls_ConexionBD.comando.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Throw 'Manda la excepción al siguiente punto de control de excepciones
        Finally
            cls_ConexionBD.comando.Dispose() 'libera memoria supuestamente
            cls_ConexionBD.Cnn.Close() 'cierra conexion a la base datos
        End Try
    End Function
End Class
