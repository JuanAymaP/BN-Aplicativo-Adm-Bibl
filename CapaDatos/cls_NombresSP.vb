Public Class cls_NombresSP
    '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< PROCEDIMIENTOS ALMACENADOS BIBLIOTECA ROJO >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    '-------------------------------------------FRM_INICIO--------------------------------------------------------------
    'Public Shared sp_Cantidad_PrestamosRealizados As String = "sp_percy_PrestamosRealizados"    'Total de prestamos realizados
    'Public Shared sp_Cantidad_Reservas As String = "sp_percy_CantidadDeReservas"                'Reservas que estan activas
    'Public Shared sp_Listar_Reservas As String = "sp_PercyListarReservas"
    'Public Shared sp_Listar_Prestamos As String = "sp_PercyListarPrestamosVencidos"
    Public Shared sp_Prestamos_Vencidos As String = "sp_Prestamos_Pendientes"
    Public Shared sp_Reservas As String = "sp_Percy_Reservas"

    '----------------------------------------FRM_PRESTAMOS--------------------------------------------------------------
    Public Shared sp_Buscar_Lector As String = "sp_PercyBuscarLector"                           'Busca Lector por su cod de empleado, dni, apellidos o nombres, en la BD_PERSONAL
    Public Shared sp_ListarFormLector As String = "sp_PercyListarFormLector"                    'Busca Lector por su cod de empleado, dni, apellidos o nombres, en la BD_PERSONAL
    Public Shared sp_ContadorPrestamo As String = "sp_PercyContador_Prestamo"                   'Lo uso para obtener el máx numero de ID_Prestamo

    Public Shared sp_registra_Prestamo As String = "sp07_prestamo_registrar"                    'Registra un nuevo prestamo en la tabla movimientos
    Public Shared sp_Modificar_Prestamo As String = "sp08_prestamo_modificar"                   'Se actualiza el estado del préstamo
    Public Shared sp_Buscar_Prestamo As String = "sp09_prestamo_buscar"                         'Buscar préstamo por Cod de Empledo, Apellido y Cod de Registro

    Public Shared sp_ListarPrestamos50 As String = "sp_PercyListarPrestamos50"                  'Muestra en el gridview los 50 ultimos registros
    Public Shared sp_ListarFormPrestamo As String = "sp_PercyListarFormPrestamo"                'Muestra en el formulario de datos el ultimo registro o el registro seleccionado

    '------------------------------------FRM_MANTENIMIENTOLIBRO-------------------------------------------------------
    Public Shared sp_registra_Libro As String = "sp01_libro_registrar"                          'Para Registrar un nuevo libro
    Public Shared sp_modificar_Libro As String = "sp02_libro_modificar"                         'Actualiza los datos de un libro
    Public Shared sp_Buscar_Libro As String = "sp03_libro_buscar"                               'Buscar un libro por Todos, CodNumerico, codClasif, Materia, Titulo, Autor

    Public Shared sp_ContadorLibro As String = "sp_PercyContador_libro"                         'Para obtener el MAX ID_Libro
    Public Shared sp_ListarFormLibro As String = "sp_PercyListarFormLibro"                      'Para listar en el formulario ode registro de libro
    Public Shared sp_ListarLibros50 As String = "sp_PercyListarLibros50"                        'Para mostrar en el gridview los 50 ultimos registros

    '----------------------------------------FRM_HCC-------------------------------------------------------------------
    Public Shared sp_registra_Hcc As String = "sp04_hcc_registrar"                              'Registra un nuevo HCC
    Public Shared sp_modifica_Hcc As String = "sp05_hcc_modificar"                              'Actualizo los datos del HCC
    Public Shared sp_Buscar_Hcc As String = "sp06_hcc_buscar"                                   'Busco HCC por su num de hcc o num de factura

    Public Shared sp_ListarFormHcc As String = "sp_PercyListarFormHCC"                          'Muestra en el formulario de datos el ultimo registro o el registro seleccionado
    Public Shared sp_ListarHcc40 As String = "sp_PercyListarHcc40"                              'Muestra en el gridview los 40 ultimos registros

    '----------------------------------------FRM_REPORTES-------------------------------------------------------------------
    Public Shared sp_Rpt_Libro_Lista As String = "sp_PercyRptLibroLista"
    Public Shared sp_Rpt_Prestamo_Lista As String = "sp_PercyRptPrestamoLista"
    Public Shared sp_Rpt_Hcc_ListaV2 As String = "sp_PercyRptHccListaV2"

    Public Shared sp_Rpt_BusqWeb_Lista As String = "sp_PercyRptBusqWebLista"
    Public Shared sp_Rpt_Libro_Inventario As String = "sp_PercyRptInventarioLibro"

    '---------------------------------------FRM_CONFIGURACION-------------------------------------------------------
    Public Shared sp_Configuracion As String = "sp_Percy_Configuracion"                         'Muestra o modifica el contenido del parrafo

    '------------------------------------- LOG -----------------------------------------------------------------------
    Public Shared sp_LOG_registrar_log As String = "sp_Percy_Registrar_log"                     'Registro de LOG

    '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< VARIABLES DE LOS PROCEDIMIENTOS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    '-------------------------------------------------FRM_PRESTAMOS---------------------------------------------------------------
    Public Shared v_PRESTAMO_BusquedaLector As String = "@vBusqueda"            'Alojado en la BD PERSONAL
    Public Shared v_PRESTAMO_BanderaLector As String = "@vBandera"              'Alojado en la BD PERSONAL
    Public Shared v_PRESTAMO_CodLector As String = "@vCod_Empleado"             'Alojado en la BD PERSONAL

    Public Shared v_PRESTAMO_Cod_Empleado As String = "@vLector_CodEmpleado"
    Public Shared v_PRESTAMO_Nombre_Lector As String = "@vLector_Nombre"
    Public Shared v_PRESTAMO_CodNumLibro As String = "@vLibro_CodNumerico"
    Public Shared v_PRESTAMO_Titulo_Libro As String = "@vLibro_Titulo"
    Public Shared v_PRESTAMO_CodClasif_Libro As String = "@vLibro_CodClasificacion"
    Public Shared v_PRESTAMO_FechaPrestamo As String = "@vMov_FechaPedido"
    Public Shared v_PRESTAMO_HoraPrestamo As String = "@vMov_HoraPedido"
    Public Shared v_PRESTAMO_FechaDevolucion As String = "@vMov_FechaDevolucion"
    Public Shared v_PRESTAMO_FechaAnulacion As String = "@vMov_FechaAnulacion"
    'Public Shared v_PRESTAMO_TipoOperacion As String = "@vLibro_Estado"
    Public Shared v_PRESTAMO_TipoOperacion As String = "@vEstado_Mov"
    Public Shared v_PRESTAMO_PrestamoProvincia As String = "@vPrest_Provincia"
    Public Shared v_PRESTAMO_PrestamoEspecial As String = "@vPrest_Especial"
    Public Shared v_PRESTAMO_BusquedaMovimiento As String = "@vBusqueda"
    Public Shared v_PRESTAMO_BanderaMovimiento As String = "@vBandera"
    Public Shared v_PRESTAMO_IdMovimiento As String = "@vId_Prestamo"

    '---------------------------------------------------FRM_MANTENIMIENTO_LIBRO----------------------------------------------------------
    Public Shared v_LibroFechaRegistro As String = "@vLibro_FechaReg"
    Public Shared v_LibroHoraRegistro As String = "@vLibro_HoraReg"
    Public Shared v_LibroTitulo As String = "@vLibro_Titulo"
    Public Shared v_LibroCodNum As String = "@vLibro_CodNumerico"
    Public Shared v_LibroEdicion As String = "@vLibro_Edicion"
    Public Shared v_LibroAnio As String = "@vLibro_Anno"
    Public Shared v_LibroAutor As String = "@vLibro_Autor"
    Public Shared v_LibroCodClasif As String = "@vLibro_CodClasificacion"
    Public Shared v_LibroCateg As String = "@vLibro_Categoria"
    Public Shared v_LibroDetalles As String = "@vLibro_Detalles"
    Public Shared v_LibroIdioma As String = "@vLibro_Idioma"
    Public Shared v_LibroNroEjem As String = "@vLibro_NroEjemp"
    Public Shared v_LibroModo As String = "@vLibro_Modo"
    Public Shared v_LibroPieImp As String = "@vPie_Imprenta"
    Public Shared v_LibroTipo As String = "@vTipo"
    Public Shared v_LibroNroEdic As String = "@vLibro_Edicion_nro"
    Public Shared v_LibroLugar As String = "@vLibro_Lugar"
    Public Shared v_LibroPrecioS As String = "@vLibro_PrecioS"
    Public Shared v_LibroPrecioD As String = "@vLibro_PrecioD"
    Public Shared v_LibroMaterias As String = "@vMaterias"
    'Public Shared v_LibroEstado As String = "@vLibro_Estado"
    Public Shared v_LibroEstado As String = "@vEstado_Libro"
    Public Shared v_LibroNroIp As String = "@vLibro_NroIP"
    Public Shared v_LibroRevisado As String = "@vLibro_Revisado"
    Public Shared v_LibroUsuarioSist As String = "@vUsuario_Sist"
    Public Shared v_LibroNroPag As String = "@vNroPaginas"
    Public Shared v_LibroISBN As String = "@vLibro_ISBN"
    Public Shared v_LibroCD As String = "@vLibro_CD"
    Public Shared v_LibroMesAnioCompra As String = "@vMov_MesAnno_CompraLibro"
    Public Shared v_tipoLista As String = "@vLibro_TipoLista"          'Aqui voy a colocar el tipo de lista que  voy a mostrar
    Public Shared v_busqueda As String = "@vBusqueda"                  'Valor que se ingresa en el txtBusqueda
    Public Shared v_bandera As String = "@vBandera"                    'Dependiendo de su valor se hace cierto tipo de busqueda  (Todos, por autor, por titulo, etc)

    '----------------------------------------------------FRM_HCC----------------------------------------------------------
    Public Shared v_HCC_IdHCC As String = "@vId_HCC"
    Public Shared v_HccTipoLista As String = "@vHcc_TipoLista"
    Public Shared v_HCC_FechaCompra As String = "@vFechaCompra"
    Public Shared v_HCC_Hora As String = "@vHora"
    Public Shared v_HCC_NroHCC As String = "@vNroHCC"
    Public Shared v_HCC_Tipo As String = "@vTipo"
    Public Shared v_HCC_Anno As String = "@vAnno"
    Public Shared v_HCC_Documento As String = "@vDocumento"
    Public Shared v_HCC_Proveedor As String = "@vProveedor"
    Public Shared v_HCC_Publicacion As String = "@vPublicacion"
    Public Shared v_HCC_Observacion As String = "@vObservacion"
    Public Shared v_HCC_CodOficina As String = "@vCodOficina"
    Public Shared v_HCC_Dependencia As String = "@vDependencia"
    Public Shared v_HCC_ImporteSoles As String = "@vImporteSoles"
    Public Shared v_HCC_ImporteDolares As String = "@vImporteDolares"
    Public Shared v_HCC_NroIP As String = "@vNroIP"
    Public Shared v_HCC_Usuario As String = "@vUsuario"
    Public Shared v_HCC_NroLibros As String = "@vNroLibrosHCC"

    '----------------------------------------------------FRM_REPORTES----------------------------------------------------------
    Public Shared v_RPT_TipoFecha As String = "@vTipoFecha"
    Public Shared v_RPT_FechaDesde As String = "@vFechaInicio"
    Public Shared v_RPT_FechaHasta As String = "@vFechaFin"
    Public Shared v_RPT_Bandera_Tipo As String = "@vBandera_Tipo"
    Public Shared v_RPT_Autor As String = "@vAutor"

    '------------------------------------------------------------LOG----------------------------------------------------------
    Public Shared v_LOG_User_Fecha As String = "@cUser_Fecha"
    Public Shared v_LOG_User_Hora As String = "@cUser_Hora"
    Public Shared v_LOG_User_quien_consulta As String = "@cUser_quien_consulta"
    Public Shared v_LOG_User_DireccionIP As String = "@cUser_DireccionIP"
    Public Shared v_LOG_User_Accion As String = "@cUser_Accion"
    Public Shared v_LOG_User_TemaBuscado As String = "@cUser_TemaBuscado"
    Public Shared v_LOG_User_Modulo As String = "@cUser_Modulo"

    '------------------------------------------------FRM_CONFIGURACIÓN---------------------------------------------------------
    Public Shared v_Conf_Bandera As String = "@vBandera"
    Public Shared v_Conf_CParrafo As String = "@vParrafo"

End Class