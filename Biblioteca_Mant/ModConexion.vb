Module ModConexion
    '2019
    Public vConex_BDBiblioteca As String = "Data Source = HP-OMEN; Initial Catalog = BN_BIBLIOTECA; Integrated Security = True"
    Public vRutaPortada As String = "~/INDICE/libros/portadas/"
    Public noPortada As String = "~/INDICE/libros/"

    'AWS
    'Public vConex_BDBiblioteca As String = "Data Source = aws-bn-biblioteca.crvj9p6gdr4z.us-east-2.rds.amazonaws.com; Database = BN_BIBLIOTECA; user ID=; Password=;"

    '--------------------------------------------------------------
    '**nombre de las tablas
    Public tbLector_Externo As String = "tbLector_Externo"
    Public tbLibro As String = "tb02_libro_movimiento"   'Tabla usada actualmente   SEP 01-09-22
    Public tbLibro_ComprasReal As String = "tb03_hcc_movimiento" 'Tabla usada actualmente
    Public tbMovimientos As String = "tb01_movimiento"

End Module
