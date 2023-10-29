Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
Imports CapaNegocio
Imports Microsoft.Reporting.WebForms

Public Class frm_mantenimientoLibro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("menu") = "frm_mantenimiento"

        If f_validarSesion() = True Then
            If Not Page.IsPostBack Then
                Try
                    cls_Metodos.culture_info()
                    Validacion("Page_Load")
                    listar_ultimosCincuentaGV()
                Catch ex As Exception
                    lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
                    lbl_Valida.ForeColor = System.Drawing.Color.Red
                    btnBuscar.Visible = False
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

    '==============BOTON BUSCAR=====================================
    Protected Sub btn_Buscar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnBuscar.Click
        Try
            Limpiar("Buscar")
            Busqueda()
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    '==============BOTON GRABAR=====================================
    Protected Sub btnGrabar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnGrabar.Click
        Try
            Call grabar("Grabar1")
        Catch ex As Exception
            lblMsjMantLibro.Text = ex.Message
            lblMsjMantLibro.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    Protected Sub btnGrabar2_Click(sender As Object, e As EventArgs) Handles btnGrabar2.Click 'ACTUALIZA EMPLEADO
        Try
            grabar("Grabar2")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    '==============BOTON AGREGAR===================================='
    Private Sub btn_Agregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click
        Try
            Call Limpiar("Limpiar")
            Call Validacion("Agregar")

            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange
            lbl_Valida.Text = "Agregando registro..."
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    '==============BOTON MODIFICAR===================================='
    Private Sub btn_Modificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            Limpiar("Modificar")
            Session("TipoGrabar2") = "Modificar"

            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange
            lbl_Valida.Text = "Modificando registro..."
            Validacion("Modificar")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    '==============BOTON CANCELAR====================================='
    Private Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click 'Recarga la pagina desde cero
        Try
            Response.Redirect("frm_mantenimientoLibro.aspx")
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    Private Sub Validacion(ByVal Validacion As String) 'Valida Botones, campos, radiobuttons
        txt_LibroPrecioSoles.Attributes.Add("onKeyup", "onKeyup = verifPrecio(this);")
        txt_LibroPrecioSoles.MaxLength = 8
        txt_LibroprecioDolares.Attributes.Add("onKeyup", "onKeyup = verifPrecio(this);")
        txt_LibroprecioDolares.MaxLength = 8
        txt_numPaginas.Attributes.Add("onKeyup", "onKeyup = verif(this);")
        txt_numPaginas.MaxLength = 6
        txt_anioEdic.Attributes.Add("onKeyup", "onKeyup = verif(this);")
        txt_anioEdic.MaxLength = 4

        txt_FechaSist_Ing.ReadOnly = True
        txt_HoraSist_Ing.ReadOnly = True
        txt_UsActivo.ReadOnly = True
        txt_Usuario.ReadOnly = True
        txt_NoIP.ReadOnly = True

        Dim tupla_FechaHora As Tuple(Of String, String) = Formato_Fecha_Hora()
        Dim IPAdd As String = CapturaIP()
        txt_UsActivo.Text = Session("IdUsuario")

        'Validaciones de los botones de acción
        If Validacion = "Gdv_Lista_Select" Then
            btnVerFichaDet.Enabled = True
            btnVerFichaDet.Visible = True
            btnCancelar.Enabled = True
            btnGrabar2.Enabled = False
            btnGrabar2.Visible = True
            btnGrabar.Visible = False
            btnAgregar.Enabled = False
            btnModificar.Enabled = True
            btnBuscar.Enabled = False
            btn_Limpiar.Disabled = True
        ElseIf Validacion = "Agregar" Then

            Dim dt_NumReg As DataTable = cls_Metodos.validacionContadorCodLibro.Tables(0) 'lleno el datatable "dt"
            Dim vValor_Maximo As String = Val(dt_NumReg.Rows(0)("Num_Reg")).ToString()

            txt_codRegistro.Text = vValor_Maximo + 1

            'Limpieza de campos
            txt_TituloLibro.InnerText = ""
            txt_LibroPrecioSoles.Text = ""
            txt_codClasif.Text = ""
            txt_TituloLibro.InnerText = ""
            txt_lugar.Text = ""
            txt_autor.Text = ""
            txt_Editorial.Text = ""
            txt_Editorial.Text = ""
            txt_numEdicion.Text = ""
            txt_anioEdic.Text = ""
            txt_proveedor.InnerText = ""
            txt_numPaginas.Text = ""
            txt_numEjemplares.Text = ""
            txt_LibroprecioDolares.Text = ""
            txt_LibroPrecioSoles.Text = ""
            txt_materias.InnerText = ""
            txt_Detalles.InnerText = ""
            txt_ISBN.Text = ""
            txt_MesAnioCompraLibro.Text = ""
            txt_FechaSist_Ing.Text = (tupla_FechaHora.Item1) 'Formato de fecha
            txt_HoraSist_Ing.Text = (tupla_FechaHora.Item2) 'Formato de hora

            cboxLibro_Categoria.SelectedIndex = -1
            cboxTipo.SelectedIndex = -1
            cboxLibro_Modo.SelectedIndex = -1
            cboxLibro_Estado.Enabled = False
            cboxLibro_Estado.SelectedIndex = 1
            cboxLibro_Idioma.SelectedIndex = -1

            ckhLibro_CD.Checked = False

            'Habilitacion de los campos de texto
            txt_TituloLibro.Disabled = False
            txt_LibroPrecioSoles.Enabled = True
            txt_codClasif.Enabled = True
            txt_TituloLibro.Disabled = False
            txt_lugar.Enabled = True
            txt_autor.Enabled = True
            txt_Editorial.Enabled = True
            txt_Editorial.Enabled = True
            txt_numEdicion.Enabled = True
            txt_anioEdic.Enabled = True
            txt_proveedor.Disabled = False
            txt_numPaginas.Enabled = True
            txt_numEjemplares.Enabled = True
            txt_LibroprecioDolares.Enabled = True
            txt_LibroPrecioSoles.Enabled = True
            txt_materias.Disabled = False
            txt_Detalles.Disabled = False
            txt_ISBN.Enabled = True
            txt_MesAnioCompraLibro.Enabled = True

            'Habilitación de los ddl
            cboxLibro_Categoria.Enabled = True
            'cboxLibro_Estado.Enabled = True
            cboxLibro_Idioma.Enabled = True
            cboxLibro_Modo.Enabled = True
            cboxTipo.Enabled = True
            ckhLibro_CD.Enabled = True

            'BOTONES
            btnAgregar.Enabled = False
            btnCancelar.Enabled = True
            btnGrabar.Enabled = True
            btnGrabar2.Enabled = False
            btnModificar.Enabled = False
            btnBuscar.Enabled = False
            btnGrabar.Visible = True
            btnGrabar2.Visible = False
            btn_Limpiar.Disabled = False

        ElseIf Validacion = "Modificar" Then
            'Habilitacion de los campos de texto
            txt_TituloLibro.Disabled = False
            txt_LibroPrecioSoles.Enabled = True
            txt_codClasif.Enabled = True
            txt_TituloLibro.Disabled = False
            txt_lugar.Enabled = True
            txt_autor.Enabled = True
            txt_Editorial.Enabled = True
            txt_Editorial.Enabled = True
            txt_numEdicion.Enabled = True
            txt_anioEdic.Enabled = True
            txt_proveedor.Disabled = False
            txt_numPaginas.Enabled = True
            txt_numEjemplares.Enabled = True
            txt_LibroprecioDolares.Enabled = True
            txt_LibroPrecioSoles.Enabled = True
            txt_materias.Disabled = False
            txt_Detalles.Disabled = False
            txt_ISBN.Enabled = True
            txt_MesAnioCompraLibro.Enabled = True

            'Habilitación de los ddl
            cboxLibro_Categoria.Enabled = True
            cboxLibro_Estado.Enabled = True
            cboxLibro_Idioma.Enabled = True
            cboxLibro_Modo.Enabled = True
            cboxTipo.Enabled = True

            ckhLibro_CD.Enabled = True

            btnModificar.Enabled = False
            btnCancelar.Enabled = True
            btnGrabar2.Enabled = True
            btnGrabar2.Visible = True
            btnGrabar.Enabled = False
            btnGrabar.Visible = False
            btnAgregar.Enabled = False
            btnBuscar.Enabled = False
            btn_Limpiar.Disabled = True

        ElseIf Validacion = "Page_Load" Then

            TxtBusqueda.MaxLength = 8
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")

            Session("sBusqueda") = "0"
            Session("vBusqueda") = ""
            Session("vBandera") = ""

            txt_codRegistro.Enabled = False
            txt_codClasif.Enabled = False
            txt_TituloLibro.Disabled = True
            txt_lugar.Enabled = False
            txt_autor.Enabled = False
            txt_Editorial.Enabled = False
            txt_numEdicion.Enabled = False
            txt_anioEdic.Enabled = False
            txt_proveedor.Disabled = True
            txt_numPaginas.Enabled = False
            txt_numEjemplares.Enabled = False
            txt_LibroprecioDolares.Enabled = False
            txt_LibroPrecioSoles.Enabled = False
            txt_materias.Disabled = True
            txt_Detalles.Disabled = True
            txt_ISBN.Enabled = False
            txt_MesAnioCompraLibro.Enabled = False

            cboxLibro_Categoria.Enabled = False
            cboxLibro_Estado.Enabled = False
            cboxLibro_Idioma.Enabled = False
            cboxLibro_Modo.Enabled = False
            cboxTipo.Enabled = False

            ckhLibro_CD.Enabled = False

            btnVerFichaDet.Enabled = False
            btnVerFichaDet.Visible = False
            btnGrabar.Enabled = True
            btnGrabar.Visible = True
            btnGrabar.Enabled = False
            btnGrabar2.Visible = False
            btnGrabar2.Enabled = False
            btnModificar.Enabled = False
            btnCancelar.Enabled = True
            btnBuscar.Enabled = True
            btn_Limpiar.Disabled = False

            txt_NoIP.Text = IPAdd

            Listar_Registro("ultimoRegistro", "0")
        End If
    End Sub

    Private Sub listar_ultimosCincuentaGV()
        cargarLista()
    End Sub
    Private Sub cargarLista()
        gdv_Lista.DataSource = cls_Metodos.Listar_Movimiento
        gdv_Lista.DataBind()
    End Sub

    '==============FUNCION/PROCESO BUSCAR====================================='
    Private Sub Busqueda() 'Funcion/Procedimiento de búsqueda

        If Len(Trim(TxtBusqueda.Text)) = 0 Then
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            lbl_Valida.Text = "Ingrese la palabra de búsqueda"
            TxtBusqueda.Text = "" ' si ingresa esapacions vacios con la barra espaciadora
            TxtBusqueda.Focus()
            Exit Sub
        End If

        Session("sBusqueda") = "1"
        Session("vBusqueda") = ""
        Session("vBandera") = ""

        'Variable que guardara la cadena ingresada en el campo de busqueda
        Dim Valor As String = TxtBusqueda.Text.Trim

        'Variable que nos permitira diferenciar el tipo de busqueda
        Dim vBandera As String

        If cboxBusqueda.SelectedIndex = 0 Then              'BUSQUEDA POR COD REGISTRO
            vBandera = "1"
        ElseIf cboxBusqueda.SelectedIndex = 1 Then          'BUSQUEDA POR COD CLASIFICACION
            vBandera = "2"
        ElseIf cboxBusqueda.SelectedIndex = 2 Then          'BUSQUEDA POR TITULO
            vBandera = "3"
        ElseIf cboxBusqueda.SelectedIndex = 3 Then          'BUSQUEDA POR AUTOR
            vBandera = "4"
        ElseIf cboxBusqueda.SelectedIndex = 4 Then          'BUSQUEDA POR TODOS
            vBandera = "5"
        ElseIf cboxBusqueda.SelectedIndex = 5 Then          'BUSQUEDA POR MATERIA
            vBandera = "6"
        End If

        Session("vBusqueda") = Valor
        Session("vBandera") = vBandera

        'GridView
        Dim ds As DataSet = cls_Metodos.BuscarLibro(Valor, vBandera)

        gdv_Lista.DataSource = ds
        gdv_Lista.DataBind()
        lbl_Valida.Visible = True
        lbl_Valida.ForeColor = System.Drawing.Color.Green
        lbl_Valida.Text = "N registros: " & ds.Tables(0).Rows.Count

        Dim countLista = ds.Tables(0).Rows.Count

        'Log
        GeneraLog(vBandera, Valor)
    End Sub

    Private Sub listarUltimo()
        Listar_Registro("ultimoRegistro", "0")
        listar_ultimosCincuentaGV()
        Limpiar("Page_Load")
    End Sub

    '====================VALIDACIONES Y LIMPIEZA DE CAMPOS========================================='
    Private Sub Limpiar(ByVal Accion As String) 'Funcion/Procedimiento limpiar campos

        If Accion = "Limpiar" Then
            txt_TituloLibro.InnerText = ""
        ElseIf Accion = "Buscar" Then
            txt_TituloLibro.InnerText = ""
            txt_TituloLibro.InnerText = ""
            txt_LibroPrecioSoles.Text = ""
            txt_codClasif.Text = ""
            txt_TituloLibro.InnerText = ""
            txt_lugar.Text = ""
            txt_autor.Text = ""
            txt_Editorial.Text = ""
            txt_Editorial.Text = ""
            txt_numEdicion.Text = ""
            txt_anioEdic.Text = ""
            txt_proveedor.InnerText = ""
            txt_numPaginas.Text = ""
            txt_numEjemplares.Text = ""
            txt_LibroprecioDolares.Text = ""
            txt_LibroPrecioSoles.Text = ""
            txt_materias.InnerText = ""
            txt_Detalles.InnerText = ""
            txt_ISBN.Text = ""
            txt_MesAnioCompraLibro.Text = ""

            cboxLibro_Categoria.SelectedIndex = -1
            cboxTipo.SelectedIndex = -1
            cboxLibro_Modo.SelectedIndex = -1
            cboxLibro_Estado.SelectedIndex = -1
            cboxLibro_Idioma.SelectedIndex = -1

            ckhLibro_CD.Checked = False

        ElseIf Accion = "Modificar" Then
            'txt_TituloLibro.ReadOnly = False
        ElseIf Accion = "Page_Load" Or Accion = "Buscar" Then
            'txt_TituloLibro.Text = ""
        End If
    End Sub

    '====================CARGA DEL GRIDVIEW========================================='
    Protected Sub gdv_Lista_OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) 'Capturo data para formatearla y mostrarla en GV
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)

                Dim c_cFechaRegistro As String
                If Not IsDBNull(dr("cLibro_FechaReg")) Then
                    c_cFechaRegistro = dr("cLibro_FechaReg")
                Else
                    c_cFechaRegistro = "--/--/--"
                End If

                Dim c_cHoraRegistro As String
                If Not IsDBNull(dr("cLibro_HoraReg")) Then
                    c_cHoraRegistro = dr("cLibro_HoraReg")
                Else
                    c_cHoraRegistro = " - -"
                End If

                Dim c_cTitulo As String
                If Not IsDBNull(dr("cLibro_Titulo")) Then
                    c_cTitulo = dr("cLibro_Titulo")
                Else
                    c_cTitulo = " "
                End If

                Dim c_cCodigoRegistro As String
                If Not IsDBNull(dr("cLibro_CodNumerico")) Then
                    c_cCodigoRegistro = dr("cLibro_CodNumerico")
                Else
                    c_cCodigoRegistro = " "
                End If

                Dim c_cAutor As String
                If Not IsDBNull(dr("cLibro_Autor")) Then
                    c_cAutor = dr("cLibro_Autor")
                Else
                    c_cAutor = " "
                End If

                Dim c_cCodClasificacion As String
                If Not IsDBNull(dr("cLibro_CodClasificacion")) Then
                    c_cCodClasificacion = dr("cLibro_CodClasificacion")
                Else
                    c_cCodClasificacion = " "
                End If

                'VIEJO
                Dim c_cEstadoViejo As String
                If Not IsDBNull(dr("cLibro_Estado")) Then
                    c_cEstadoViejo = dr("cLibro_Estado")
                Else
                    c_cEstadoViejo = " "
                End If

                'NUEVO
                Dim c_cEstado As String
                If Not IsDBNull(dr("cEstado_libro")) Then
                    c_cEstado = dr("cEstado_libro")
                Else
                    c_cEstado = "4"
                End If

                Dim c_cUsuario As String
                If Not IsDBNull(dr("cUsuario_Sist")) Then
                    c_cUsuario = dr("cUsuario_Sist")
                Else
                    c_cUsuario = " "
                End If

                Dim c_cLibroCD As String
                If Not IsDBNull(dr("cLibro_CD")) Then
                    c_cLibroCD = dr("cLibro_CD")
                Else
                    c_cLibroCD = " "
                End If

                Dim c_cMesAnioCompra As String
                If Not IsDBNull(dr("cMov_MesAnno_CompraLibro")) Then
                    c_cMesAnioCompra = dr("cMov_MesAnno_CompraLibro")
                Else
                    c_cMesAnioCompra = "--/--/-- "
                End If

                Dim c_cLugarLibro As String
                If Not IsDBNull(dr("cLibro_Lugar")) Then
                    c_cLugarLibro = dr("cLibro_Lugar")
                Else
                    c_cLugarLibro = " "
                End If

                Dim c_cNumEdicion As String
                If Not IsDBNull(dr("cLibro_Edicion_nro")) Then
                    c_cNumEdicion = dr("cLibro_Edicion_nro")
                Else
                    c_cNumEdicion = " "
                End If

                CType(e.Row.FindControl("lbl_fechaRegistro"), WebControls.Label).Text = c_cFechaRegistro
                CType(e.Row.FindControl("lbl_horaRegistro"), WebControls.Label).Text = c_cHoraRegistro
                CType(e.Row.FindControl("lbl_titulo"), WebControls.Label).Text = c_cTitulo
                CType(e.Row.FindControl("lbl_codRegistro"), WebControls.Label).Text = c_cCodigoRegistro
                CType(e.Row.FindControl("lbl_autor"), WebControls.Label).Text = c_cAutor
                CType(e.Row.FindControl("lbl_codClasificacion"), WebControls.Label).Text = c_cCodClasificacion
                CType(e.Row.FindControl("lbl_estado"), WebControls.Label).Text = c_cEstadoViejo
                CType(e.Row.FindControl("lbl_estadoN"), WebControls.Label).Text = c_cEstado
                CType(e.Row.FindControl("lbl_usuario"), WebControls.Label).Text = c_cUsuario
                CType(e.Row.FindControl("lbl_cLibro_CD"), WebControls.Label).Text = c_cLibroCD
                CType(e.Row.FindControl("lbl_mesAnioCompra"), WebControls.Label).Text = c_cMesAnioCompra
                CType(e.Row.FindControl("lbl_LugarLibro"), WebControls.Label).Text = c_cLugarLibro
                CType(e.Row.FindControl("lbl_numEdicion"), WebControls.Label).Text = c_cNumEdicion
            End If
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    '=======================PAGINACION DEL GRID VIEW======================================
    Protected Sub gdv_Lista_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gdv_Lista.PageIndexChanging
        Try
            'Realizo paginación de gdv_Lista
            gdv_Lista.PageIndex = e.NewPageIndex

            If Session("sBusqueda") = "0" Then
                cargarLista()
            ElseIf Session("sBusqueda") = "1" Then
                Dim valor As String = Session("vBusqueda")
                Dim vBandera As String = Session("vBandera")

                'GridView
                gdv_Lista.DataSource = cls_Metodos.BuscarLibro(valor, vBandera)
                gdv_Lista.DataBind()
            End If
            Datos_Sistemas.Focus()
        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    '=============================SELECCION DE UN REGISTRO DEL GRID VIEW========================================
    Protected Sub gdv_Lista_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gdv_Lista.SelectedIndexChanged ' Muestra en los campos la informacion del libro seleccionado
        Try
            Dim v_codRegistro As String = TryCast(gdv_Lista.SelectedRow.FindControl("lbl_codRegistro"), Label).Text 'Capturo el valor de lbl_codRegistro

            Session("MLibro_codRegistro") = v_codRegistro

            Listar_Registro("registroSeleccionado", v_codRegistro)

            lbl_Valida.Text = "Ha seleccionado un registro de la grilla"
            lbl_Valida.ForeColor = System.Drawing.Color.DarkOrange

            Validacion("Gdv_Lista_Select")
            GeneraLog("7", v_codRegistro)

        Catch ex As Exception
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    Private Sub Listar_Registro(ByVal tipoLista As String, ByVal v_CodRegistro As String) 'Funcion/procedimiento para listar movimiento sea el último o el Seleccionado
        Dim dt_Movimiento As DataTable

        '--------------Mostrará en las casillas el ultimo registro o el registro seleccionado de la grilla-----------
        If tipoLista = "ultimoRegistro" Then
            dt_Movimiento = cls_Metodos.ListarFormLibro(tipoLista, "0").tables(0)  'Listo el ultimo registro

            Dim v_CodLibro As String = dt_Movimiento.Rows(0)("cLibro_CodNumerico").ToString()
            Dim v_codClasificacion As String = dt_Movimiento.Rows(0)("cLibro_CodClasificacion").ToString()

            Dim v_TituloLibro As String = dt_Movimiento.Rows(0)("cLibro_Titulo").ToString()
            Dim v_lugar As String = dt_Movimiento.Rows(0)("cLibro_Lugar").ToString()
            Dim v_autor As String = dt_Movimiento.Rows(0)("cLibro_Autor").ToString()

            Dim v_Editorial As String = dt_Movimiento.Rows(0)("cLibro_Edicion").ToString()
            Dim v_numEdicion As String = dt_Movimiento.Rows(0)("cLibro_Edicion_nro").ToString()
            Dim v_anioEdicion As String = dt_Movimiento.Rows(0)("cLibro_Anno").ToString()

            Dim v_proveedor As String = dt_Movimiento.Rows(0)("cPie_Imprenta").ToString()
            Dim v_numPaginas As String = dt_Movimiento.Rows(0)("cNroPaginas").ToString()
            Dim v_numEjemplares As String = dt_Movimiento.Rows(0)("cLibro_NroEjemp").ToString()

            Dim v_precioD As String = dt_Movimiento.Rows(0)("cLibro_PrecioD").ToString()
            Dim v_precioS As String = dt_Movimiento.Rows(0)("cLibro_PrecioS").ToString()

            Dim v_Materia As String = dt_Movimiento.Rows(0)("cMaterias").ToString()
            Dim v_Detalle As String = dt_Movimiento.Rows(0)("cLibro_Detalles").ToString()

            Dim v_numISBN As String = dt_Movimiento.Rows(0)("cLibro_ISBN").ToString()
            Dim v_MesAnioCompra As String = dt_Movimiento.Rows(0)("cMov_MesAnno_CompraLibro").ToString()

            'Cbox
            Dim c_cModo As String = dt_Movimiento.Rows(0)("cLibro_Modo").ToString()
            Dim c_cIdioma As String = dt_Movimiento.Rows(0)("cLibro_Idioma").ToString()
            Dim c_cCategoria As String = dt_Movimiento.Rows(0)("cLibro_Categoria").ToString()
            Dim c_cEstado As String = dt_Movimiento.Rows(0)("cEstado_libro").ToString()
            Dim c_cTipo As String = dt_Movimiento.Rows(0)("cTipo").ToString()

            'rdbButton
            Dim Cd_Button As String = dt_Movimiento.Rows(0)("cLibro_CD").ToString.Trim

            txt_codRegistro.Text = v_CodLibro.Trim
            txt_codClasif.Text = v_codClasificacion.Trim

            txt_TituloLibro.InnerText = v_TituloLibro.Trim
            txt_lugar.Text = v_lugar.Trim
            txt_autor.Text = v_autor.Trim

            txt_Editorial.Text = v_Editorial.Trim
            txt_numEdicion.Text = v_numEdicion.Trim
            txt_anioEdic.Text = v_anioEdicion.Trim

            txt_proveedor.InnerText = v_proveedor.Trim
            txt_numPaginas.Text = v_numPaginas.Trim
            txt_numEjemplares.Text = v_numEjemplares.Trim

            txt_LibroprecioDolares.Text = v_precioD.Trim
            txt_LibroPrecioSoles.Text = v_precioS.Trim

            txt_materias.InnerText = v_Materia.Trim
            txt_Detalles.InnerText = v_Detalle.Trim

            txt_ISBN.Text = v_numISBN.Trim
            txt_MesAnioCompraLibro.Text = v_MesAnioCompra.Trim

            cboxLibro_Modo.SelectedIndex = -1
            If IsDBNull(c_cModo.ToString) Or c_cModo.ToString = "" Then
                cboxLibro_Modo.Items.FindByValue("00").Selected = True
            ElseIf Trim(Left(c_cModo.ToString, 2)) = "01" Then
                cboxLibro_Modo.Items.FindByValue("01").Selected = True
            ElseIf Trim(Left(c_cModo.ToString, 2)) = "02" Then
                cboxLibro_Modo.Items.FindByValue("02").Selected = True
            End If

            cboxLibro_Categoria.SelectedIndex = -1
            If IsDBNull(c_cCategoria.ToString) Or c_cCategoria.ToString = "" Then
                cboxLibro_Categoria.Items.FindByValue("00").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "01" Then
                cboxLibro_Categoria.Items.FindByValue("01").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "02" Then
                cboxLibro_Categoria.Items.FindByValue("02").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "03" Then
                cboxLibro_Categoria.Items.FindByValue("03").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "04" Then
                cboxLibro_Categoria.Items.FindByValue("04").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "05" Then
                cboxLibro_Categoria.Items.FindByValue("05").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "06" Then
                cboxLibro_Categoria.Items.FindByValue("06").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "07" Then
                cboxLibro_Categoria.Items.FindByValue("07").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "08" Then
                cboxLibro_Categoria.Items.FindByValue("08").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "09" Then
                cboxLibro_Categoria.Items.FindByValue("09").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "10" Then
                cboxLibro_Categoria.Items.FindByValue("10").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "20" Then
                cboxLibro_Categoria.Items.FindByValue("20").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "99" Then
                cboxLibro_Categoria.Items.FindByValue("99").Selected = True
            End If

            cboxTipo.SelectedIndex = -1
            If IsDBNull(c_cTipo.ToString) = True Or Len(Trim(c_cTipo.ToString)) = 0 Then '02-09-2016 puse este codigo después del OR
                cboxTipo.Items.FindByValue("00").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "01" Then
                cboxTipo.Items.FindByValue("01").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "02" Then
                cboxTipo.Items.FindByValue("02").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "03" Then
                cboxTipo.Items.FindByValue("03").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "04" Then
                cboxTipo.Items.FindByValue("04").Selected = True
            End If

            cboxLibro_Estado.SelectedIndex = -1
            If IsDBNull(c_cEstado.ToString) = True Or Len(Trim(c_cEstado.ToString)) = 0 Then
                cboxLibro_Estado.Items.FindByValue("0").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "4" Then
                cboxLibro_Estado.Items.FindByValue("4").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "1" Then
                cboxLibro_Estado.Items.FindByValue("1").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "0" Then
                cboxLibro_Estado.Items.FindByValue("0").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "6" Then
                cboxLibro_Estado.Items.FindByValue("6").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "3" Then
                cboxLibro_Estado.Items.FindByValue("3").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "7" Then
                cboxLibro_Estado.Items.FindByValue("7").Selected = True
            End If

            cboxLibro_Idioma.SelectedIndex = -1
            If IsDBNull(c_cIdioma.ToString) Or Len(Trim(c_cIdioma.ToString)) = 0 Then
                cboxLibro_Idioma.Items.FindByValue("ELEGIR").Selected = True
            Else
                cboxLibro_Idioma.Items.FindByValue(Trim(c_cIdioma.ToString)).Selected = True
            End If

            If Cd_Button = "NO" Then
                ckhLibro_CD.Checked = False

            ElseIf Cd_Button = "SI" Then
                ckhLibro_CD.Checked = True
            End If

        ElseIf tipoLista = "registroSeleccionado" Then

            dt_Movimiento = CapaNegocio.cls_Metodos.ListarFormLibroGridView(tipoLista, v_CodRegistro).Tables(0) 'Cargo dt_Lista

            Dim c_cFechaRegistro As String
            If Not IsDBNull(dt_Movimiento.Rows(0)("cLibro_FechaReg")) Then
                c_cFechaRegistro = dt_Movimiento.Rows(0)("cLibro_FechaReg").ToString
            Else
                c_cFechaRegistro = "--/--/--"
            End If


            '-----------Variables que toman los datos del datatable para pasarlas a las casillas respectivas--------
            Dim c_cHoraRegistro As String = dt_Movimiento.Rows(0)("cLibro_HoraReg").ToString()
            Dim c_cTitulo As String = dt_Movimiento.Rows(0)("cLibro_Titulo").ToString()
            Dim c_cCodRegistro As String = dt_Movimiento.Rows(0)("cLibro_CodNumerico").ToString()
            Dim c_cAutor As String = dt_Movimiento.Rows(0)("cLibro_Autor").ToString()
            Dim c_cCodClasificacion As String = dt_Movimiento.Rows(0)("cLibro_CodClasificacion").ToString()
            Dim c_cUsuario As String = dt_Movimiento.Rows(0)("cUsuario_Sist").ToString()
            Dim c_cLibroCD As String = dt_Movimiento.Rows(0)("cLibro_CD").ToString()
            Dim c_cMesAñoCompra As String = dt_Movimiento.Rows(0)("cMov_MesAnno_CompraLibro").ToString()
            Dim c_cLugarLibro As String = dt_Movimiento.Rows(0)("cLibro_Lugar").ToString()
            Dim c_cNumEdicion As String = dt_Movimiento.Rows(0)("cLibro_Edicion_nro").ToString()
            Dim c_cEditorial As String = dt_Movimiento.Rows(0)("cLibro_Edicion").ToString()

            Dim c_cAnioEdicion As String = dt_Movimiento.Rows(0)("cLibro_Anno").ToString()
            Dim c_cproveedor As String = dt_Movimiento.Rows(0)("cPie_Imprenta").ToString()
            Dim c_cNumPaginas As String = dt_Movimiento.Rows(0)("cNroPaginas").ToString()
            Dim c_cNumEjemplares As String = dt_Movimiento.Rows(0)("cLibro_NroEjemp").ToString()
            Dim c_cLibroPrecioDolares As String = dt_Movimiento.Rows(0)("cLibro_PrecioD").ToString()
            Dim c_cLibroPrecioSoles As String = dt_Movimiento.Rows(0)("cLibro_PrecioS").ToString()
            Dim c_cLibroISBN As String = dt_Movimiento.Rows(0)("cLibro_ISBN").ToString()

            'TextArea
            Dim c_cMaterias As String = dt_Movimiento.Rows(0)("cMaterias").ToString()
            Dim c_cDetalles As String = dt_Movimiento.Rows(0)("cLibro_Detalles").ToString()

            'Cbox
            Dim c_cModo As String = dt_Movimiento.Rows(0)("cLibro_Modo").ToString()
            Dim c_cIdioma As String = dt_Movimiento.Rows(0)("cLibro_Idioma").ToString()
            Dim c_cCategoria As String = dt_Movimiento.Rows(0)("cLibro_Categoria").ToString()
            Dim c_cEstado As String = dt_Movimiento.Rows(0)("cEstado_libro").ToString()
            Dim c_cTipo As String = dt_Movimiento.Rows(0)("cTipo").ToString()

            'rdbButton
            Dim Cd_Button As String = dt_Movimiento.Rows(0)("cLibro_CD").ToString.Trim



            'img

            'Dim vImgemple As Byte() = ExtraerImagen(v_CodRegistro)
            'imgEmple.Src = "data:imagenes/png;base64," + Convert.ToBase64String(vImgemple)

            'imgEmple.Src = vRutaPortada & Trim(v_CodRegistro) & "/car.jpg" 'a implementar

            ' Aquí se valida mediante http.webresponsive CON JORGEEEE
            'If verificarArchivo(vRutaPortada & Trim(v_CodRegistro) & "/car.jpg") Then



            '23-11-22
            'If True Then
            'If verificarArchivo(vRutaPortada & Trim(v_CodRegistro) & "\car.jpg") Then
            '    Dim img_Path As String = vRutaPortada & Trim(v_CodRegistro) & "\car.jpg"                    'Aquí esta la ruta que debes de poner              
            '    Dim fs As System.IO.FileStream = New System.IO.FileStream(img_Path, System.IO.FileMode.Open) 'Creas una variable del tipo "FileStream" que llamará a la ruta
            '    Dim stream As System.IO.MemoryStream = New System.IO.MemoryStream()                         'creas una variable del tipo "Stream", la cual se utilizará como memoria
            '    Dim data As Byte() = New Byte(fs.Length - 1) {}                                             'creas una variable del tipo "Byte" la cual se basará en la variable "fs"
            '    fs.Read(data, 0, CInt(fs.Length))                                                           'se lee el "fs" y puebla la variable "data"
            '    Dim img As System.Drawing.Image = System.Drawing.Image.FromStream(fs)                       'creas una variable del tipo "Drawing.Image" la cual consultará la ruta con el archivo en bytes de la variable "fs" 
            '    img.Save(stream, System.Drawing.Imaging.ImageFormat.Jpeg)                                   'le das formato a la cadena de bytes, que se clonará en la variable "Stream"
            '    imgEmple.Src = "data:image/jpeg;base64," + Convert.ToBase64String(stream.ToArray(), 0, stream.ToArray().Length) 'Aqui lo envía aL SRC de la imagen
            '    fs.Close() ' cierras la variable "fs"

            'Else
            '    'imgEmple.Src = noPortada & "9999_sinportada.jpg"
            '    Dim img_Path As String = noPortada & "9999_sinportada.jpg"                    'Aquí esta la ruta que debes de poner              
            '    Dim fs As System.IO.FileStream = New System.IO.FileStream(img_Path, System.IO.FileMode.Open) 'Creas una variable del tipo "FileStream" que llamará a la ruta
            '    Dim stream As System.IO.MemoryStream = New System.IO.MemoryStream()                         'creas una variable del tipo "Stream", la cual se utilizará como memoria
            '    Dim data As Byte() = New Byte(fs.Length - 1) {} 'creas una variable del tipo "Byte" la cual se basará en la variable "fs"
            '    fs.Read(data, 0, CInt(fs.Length)) 'se lee el "fs" y puebla la variable "data"
            '    Dim img As System.Drawing.Image = System.Drawing.Image.FromStream(fs) 'creas una variable del tipo "Drawing.Image" la cual consultará la ruta con el archivo en bytes de la variable "fs" 
            '    img.Save(stream, System.Drawing.Imaging.ImageFormat.Jpeg) 'le das formato a la cadena de bytes, que se clonará en la variable "Stream"
            '    imgEmple.Src = "data:image/jpeg;base64," + Convert.ToBase64String(stream.ToArray(), 0, stream.ToArray().Length) 'Aqui lo envía aL SRC de la imagen
            '    fs.Close() ' cierras la variable "fs"
            'End If


            '23/11/22
            'If verificarArchivo(vRutaPortada & Trim(v_CodRegistro) & "/car.jpg") Then

            If True Then
                imgEmple.Src = vRutaPortada & Trim(v_CodRegistro) & "/car.jpg"
            Else
                imgEmple.Src = noPortada & "9999_sinportada.jpg"
            End If



            ' 18/11/22 PERCY
            'If True Then
            '    imgEmple.Src = vRutaPortada & Trim(v_CodRegistro) & "\car.jpg"
            '    'imgEmple2.Src = vRutaPortada & Trim(v_CodRegistro) & "/car.jpg"
            '    'imgEmple3.Src = vRutaPortada & Trim(v_CodRegistro) & "/car.jpg"
            'Else
            '    imgEmple.Src = noPortada & "9999_sinportada.jpg"
            '    'imgEmple2.Src = noPortada & "9999_sinportada.jpg"
            '    'imgEmple3.Src = noPortada & "9999_sinportada.jpg"
            'End If

            cboxLibro_Modo.SelectedIndex = -1
            If IsDBNull(c_cModo.ToString) Or c_cModo.ToString = "" Then
                cboxLibro_Modo.Items.FindByValue("00").Selected = True
            ElseIf Trim(Left(c_cModo.ToString, 2)) = "01" Then
                cboxLibro_Modo.Items.FindByValue("01").Selected = True
            ElseIf Trim(Left(c_cModo.ToString, 2)) = "02" Then
                cboxLibro_Modo.Items.FindByValue("02").Selected = True
            End If

            cboxLibro_Categoria.SelectedIndex = -1
            If IsDBNull(c_cCategoria.ToString) Or c_cCategoria.ToString = "" Then
                cboxLibro_Categoria.Items.FindByValue("00").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "01" Then
                cboxLibro_Categoria.Items.FindByValue("01").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "02" Then
                cboxLibro_Categoria.Items.FindByValue("02").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "03" Then
                cboxLibro_Categoria.Items.FindByValue("03").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "04" Then
                cboxLibro_Categoria.Items.FindByValue("04").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "05" Then
                cboxLibro_Categoria.Items.FindByValue("05").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "06" Then
                cboxLibro_Categoria.Items.FindByValue("06").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "07" Then
                cboxLibro_Categoria.Items.FindByValue("07").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "08" Then
                cboxLibro_Categoria.Items.FindByValue("08").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "09" Then
                cboxLibro_Categoria.Items.FindByValue("09").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "10" Then
                cboxLibro_Categoria.Items.FindByValue("10").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "20" Then
                cboxLibro_Categoria.Items.FindByValue("20").Selected = True
            ElseIf Trim(Left(c_cCategoria.ToString, 2)) = "99" Then
                cboxLibro_Categoria.Items.FindByValue("99").Selected = True
            End If

            cboxTipo.SelectedIndex = -1
            If IsDBNull(c_cTipo.ToString) = True Or Len(Trim(c_cTipo.ToString)) = 0 Then '02-09-2016 puse este codigo después del OR
                cboxTipo.Items.FindByValue("00").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "01" Then
                cboxTipo.Items.FindByValue("01").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "02" Then
                cboxTipo.Items.FindByValue("02").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "03" Then
                cboxTipo.Items.FindByValue("03").Selected = True
            ElseIf Trim(Left(c_cTipo.ToString, 2)) = "04" Then
                cboxTipo.Items.FindByValue("04").Selected = True
            End If

            'cboxLibro_Estado.SelectedIndex = -1
            'If Trim(Left(c_cEstado.ToString, 1)) = "N" Then
            '    'cboxLibro_Estado.Items.Clear()
            '    'cboxLibro_Estado.Items.Insert(0, New ListItem(c_cEstado.ToString, "0"))
            '    'cboxLibro_Estado.Items.Insert(1, New ListItem("V", "01"))
            '    'cboxLibro_Estado.Items.Insert(2, New ListItem("X", "02"))
            '    'cboxLibro_Estado.Items.Insert(3, New ListItem("E", "03"))
            'ElseIf Trim(Left(c_cEstado.ToString, 1)) = "V" Then
            '    cboxLibro_Estado.Items.FindByValue("V").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 1)) = "P" Then
            '    cboxLibro_Estado.Items.FindByValue("P").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 1)) = "R" Then
            '    cboxLibro_Estado.Items.FindByValue("R").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 1)) = "X" Then
            '    cboxLibro_Estado.Items.FindByValue("X").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 1)) = "E" Then
            '    cboxLibro_Estado.Items.FindByValue("E").Selected = True
            'Else
            '    cboxLibro_Estado.Items.FindByValue("0").Selected = True
            'End If

            '03-11-22 PERCY
            'cboxLibro_Estado.SelectedIndex = -1
            'If IsDBNull(c_cEstado.ToString) = True Or Len(Trim(c_cEstado.ToString)) = 0 Then
            '    'cboxLibro_Estado.Items.FindByValue("0").Selected = True
            '    cboxLibro_Estado.Items.FindByValue("DISP").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 4)) = "DISP" Then
            '    cboxLibro_Estado.Items.FindByValue("DISP").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 4)) = "PRES" Then
            '    cboxLibro_Estado.Items.FindByValue("PRES").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 4)) = "RESE" Then
            '    cboxLibro_Estado.Items.FindByValue("RESE").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 4)) = "CSAL" Then
            '    cboxLibro_Estado.Items.FindByValue("CSAL").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 4)) = "DESU" Then
            '    cboxLibro_Estado.Items.FindByValue("DESU").Selected = True
            'ElseIf Trim(Left(c_cEstado.ToString, 4)) = "NODI" Then
            '    cboxLibro_Estado.Items.FindByValue("NODI").Selected = True
            'End If

            cboxLibro_Estado.SelectedIndex = -1
            If IsDBNull(c_cEstado.ToString) = True Or Len(Trim(c_cEstado.ToString)) = 0 Then
                'cboxLibro_Estado.Items.FindByValue("0").Selected = True
                cboxLibro_Estado.Items.FindByValue("4").Selected = True
            ElseIf Trim(Left(c_cEstado.ToString, 1)) = "4" Then
                cboxLibro_Estado.Items.FindByValue("4").Enabled = True
                cboxLibro_Estado.Items.FindByValue("4").Selected = True

                cboxLibro_Estado.Items.FindByValue("3").Enabled = True
                cboxLibro_Estado.Items.FindByValue("7").Enabled = True
                cboxLibro_Estado.Items.FindByValue("1").Enabled = False
                cboxLibro_Estado.Items.FindByValue("0").Enabled = False
                cboxLibro_Estado.Items.FindByValue("6").Enabled = False
                cboxLibro_Estado.Items.FindByValue("-1").Enabled = False

            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "1" Then
                cboxLibro_Estado.Items.FindByValue("1").Enabled = True
                cboxLibro_Estado.Items.FindByValue("1").Selected = True

                cboxLibro_Estado.Items.FindByValue("4").Enabled = False
                cboxLibro_Estado.Items.FindByValue("3").Enabled = False
                cboxLibro_Estado.Items.FindByValue("7").Enabled = False
                cboxLibro_Estado.Items.FindByValue("0").Enabled = False
                cboxLibro_Estado.Items.FindByValue("6").Enabled = False
                cboxLibro_Estado.Items.FindByValue("-1").Enabled = False
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "0" Then
                cboxLibro_Estado.Items.FindByValue("0").Enabled = True
                cboxLibro_Estado.Items.FindByValue("0").Selected = True

                cboxLibro_Estado.Items.FindByValue("4").Enabled = False
                cboxLibro_Estado.Items.FindByValue("3").Enabled = False
                cboxLibro_Estado.Items.FindByValue("7").Enabled = False
                cboxLibro_Estado.Items.FindByValue("1").Enabled = False
                cboxLibro_Estado.Items.FindByValue("6").Enabled = False
                cboxLibro_Estado.Items.FindByValue("-1").Enabled = False
            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "6" Then
                cboxLibro_Estado.Items.FindByValue("6").Enabled = True
                cboxLibro_Estado.Items.FindByValue("6").Selected = True

                cboxLibro_Estado.Items.FindByValue("4").Enabled = False
                cboxLibro_Estado.Items.FindByValue("3").Enabled = False
                cboxLibro_Estado.Items.FindByValue("7").Enabled = False
                cboxLibro_Estado.Items.FindByValue("1").Enabled = False
                cboxLibro_Estado.Items.FindByValue("0").Enabled = False
                cboxLibro_Estado.Items.FindByValue("-1").Enabled = False

            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "3" Then
                cboxLibro_Estado.Items.FindByValue("3").Enabled = True
                cboxLibro_Estado.Items.FindByValue("3").Selected = True

                cboxLibro_Estado.Items.FindByValue("4").Enabled = True
                cboxLibro_Estado.Items.FindByValue("7").Enabled = True
                cboxLibro_Estado.Items.FindByValue("1").Enabled = False
                cboxLibro_Estado.Items.FindByValue("0").Enabled = False
                cboxLibro_Estado.Items.FindByValue("6").Enabled = False
                cboxLibro_Estado.Items.FindByValue("-1").Enabled = False

            ElseIf Trim(Left(c_cEstado.ToString, 4)) = "7" Then
                cboxLibro_Estado.Items.FindByValue("7").Enabled = True
                cboxLibro_Estado.Items.FindByValue("7").Selected = True

                cboxLibro_Estado.Items.FindByValue("3").Enabled = True
                cboxLibro_Estado.Items.FindByValue("4").Enabled = True
                cboxLibro_Estado.Items.FindByValue("1").Enabled = False
                cboxLibro_Estado.Items.FindByValue("0").Enabled = False
                cboxLibro_Estado.Items.FindByValue("6").Enabled = False
                cboxLibro_Estado.Items.FindByValue("-1").Enabled = False
            End If






            cboxLibro_Idioma.SelectedIndex = -1
            If IsDBNull(c_cIdioma.ToString) Or Len(Trim(c_cIdioma.ToString)) = 0 Then
                cboxLibro_Idioma.Items.FindByValue("ELEGIR").Selected = True
            Else
                cboxLibro_Idioma.Items.FindByValue(Trim(c_cIdioma.ToString)).Selected = True
            End If

            txt_codRegistro.Text = Trim(c_cCodRegistro)
            txt_codClasif.Text = Trim(c_cCodClasificacion)
            txt_TituloLibro.InnerText = Trim(c_cTitulo)
            txt_lugar.Text = Trim(c_cLugarLibro)
            txt_autor.Text = Trim(c_cAutor)
            txt_Editorial.Text = Trim(c_cEditorial)
            txt_numEdicion.Text = Trim(c_cNumEdicion)
            txt_anioEdic.Text = Trim(c_cAnioEdicion)
            txt_proveedor.InnerText = Trim(c_cproveedor)
            txt_numPaginas.Text = Trim(c_cNumPaginas)
            txt_numEjemplares.Text = Trim(c_cNumEjemplares)
            txt_LibroprecioDolares.Text = Trim(c_cLibroPrecioDolares)
            txt_LibroPrecioSoles.Text = Trim(c_cLibroPrecioSoles)
            txt_ISBN.Text = Trim(c_cLibroISBN)

            txt_materias.InnerText = c_cMaterias
            txt_Detalles.InnerText = c_cDetalles

            If Cd_Button = "NO" Then
                ckhLibro_CD.Checked = False

            ElseIf Cd_Button = "SI" Then
                ckhLibro_CD.Checked = True
            End If

        End If

    End Sub


    Public Function verificarArchivo(ByVal rutaFile As String) As Boolean

        If File.Exists(rutaFile) Then
            Return True
        Else
            Return False
        End If

        If Directory.Exists(rutaFile) Then
            Return True
        Else
            Return False
        End If




        'ORGINAL 20-09-23
        'Dim web_response As HttpWebResponse = Nothing
        'Try
        '    Dim web_request As HttpWebRequest = HttpWebRequest.Create("http:" & rutaFile)
        '    web_response = DirectCast(web_request.GetResponse(), HttpWebResponse)
        '    Return True
        'Catch ex As Exception
        '    Return False
        'Finally
        '    If Not (web_response Is Nothing) Then web_response.Close()
        'End Try




        '18/11/22
        'Dim aFile As IO.File
        'If aFile.Exists(rutaFile) Then
        '    Return True
        'Else
        '    Return False
        'End If
        'If Directory.Exists(rutaFile) Then
        'Return True
        'Else
        'Return False
        'End If

        ''Dim web_response As HttpWebResponse = Nothing
        ''Try
        ''    Dim web_request As HttpWebRequest = HttpWebRequest.Create("http:" & rutaFile)
        ''    web_response = DirectCast(web_request.GetResponse(), HttpWebResponse)
        ''    Return True
        ''Catch ex As Exception
        ''    Return False
        ''Finally
        ''    If Not (web_response Is Nothing) Then web_response.Close()
        ''End Try


    End Function


    Private Sub grabar(ByVal TipoGrabar As String)

        'Dim v_FechaRegistro As String = txt_FechaSist_Ing.Text.Trim
        'Dim v_FechaRegistro As String = "--/"


        Dim dtFecha As DateTime = DateTime.Now
        Dim v_FechaRegistro = dtFecha.ToString("dd/MM/yyyy")
        Dim v_HoraRegistro As String = txt_HoraSist_Ing.Text.Trim

        Dim tituloLibro As String = txt_TituloLibro.InnerText.Trim

        Dim codNumerico As String = txt_codRegistro.Text.Trim

        Dim v_codClasificacion As String = txt_codClasif.Text.Trim
        Dim v_lugar As String = txt_lugar.Text.Trim
        Dim v_autor As String = txt_autor.Text.Trim
        Dim v_Editorial As String = txt_Editorial.Text.Trim
        Dim v_numEdicion As String = txt_numEdicion.Text.Trim
        Dim v_anioEdicion As String = txt_anioEdic.Text.Trim
        Dim v_pieImprenta As String = txt_proveedor.InnerText.Trim
        Dim v_numPaginas As String = txt_numPaginas.Text.Trim
        Dim v_numejemplares As String = txt_numEjemplares.Text.Trim
        Dim v_precioD As String = txt_LibroprecioDolares.Text.Trim
        Dim v_precioS As String = txt_LibroPrecioSoles.Text.Trim
        Dim v_isbn As String = txt_ISBN.Text.Trim
        Dim v_mesAnnoCompraLibro As String = txt_MesAnioCompraLibro.Text.Trim

        Dim v_nroIP As String = txt_NoIP.Text.Trim
        Dim v_usuarioSistema As String = txt_UsActivo.Text.Trim

        'Text Area
        Dim v_detalles As String = txt_Detalles.InnerText.Trim
        Dim v_materia As String = txt_materias.InnerText.Trim

        Dim v_Modo As String = cboxLibro_Modo.SelectedValue
        Dim v_Idioma As String = cboxLibro_Idioma.SelectedValue
        Dim v_Estado As String = cboxLibro_Estado.SelectedValue
        Dim v_Tipo As String = cboxTipo.SelectedValue
        Dim v_Categoria As String = cboxLibro_Categoria.SelectedValue

        'check de Libro_CD
        Dim v_librocd As String
        If (ckhLibro_CD.Checked = True) Then
            v_librocd = "SI"
        Else
            v_librocd = "NO"
        End If



        If TipoGrabar = "Grabar1" Then 'NUEVO REGISTRO
            '----------Se realiza el insert a la tabla------------

            Dim dt_NumReg As DataTable = cls_Metodos.validacionContadorCodLibro.Tables(0) 'lleno el datatable "dt"
            Dim vValor_Maximo As String = Val(dt_NumReg.Rows(0)("Num_Reg")).ToString()
            txt_codRegistro.Text = vValor_Maximo + 1

            codNumerico = txt_codRegistro.Text.Trim

            cls_Metodos.Registrar_Libro(v_FechaRegistro, v_HoraRegistro, tituloLibro, codNumerico, v_Editorial, v_anioEdicion,
                        v_autor, v_codClasificacion, v_Categoria, v_detalles, v_Idioma,
                        v_numejemplares, v_Modo, v_pieImprenta, v_Tipo, v_numEdicion, v_lugar,
                        v_precioS, v_precioD, v_materia, v_Estado, v_nroIP,
                        v_usuarioSistema, v_numPaginas, v_isbn, v_librocd, v_mesAnnoCompraLibro)

            btnGrabar.Enabled = False

            GeneraLog("8", codNumerico)
            Validacion("Page_Load")
            lbl_Valida.ForeColor = System.Drawing.Color.Green
            lbl_Valida.Visible = True
            lbl_Valida.Text = "Registro agregado correctamente"
            'Content_Gridview.Visible = True

        ElseIf TipoGrabar = "Grabar2" Then

            cls_Metodos.Actualizar_Libro(tituloLibro, codNumerico, v_Editorial, v_anioEdicion,
                        v_autor, v_codClasificacion, v_Categoria, v_detalles, v_Idioma,
                        v_numejemplares, v_Modo, v_pieImprenta, v_Tipo, v_numEdicion, v_lugar,
                        v_precioS, v_precioD, v_materia, v_Estado, v_nroIP,
                        v_usuarioSistema, v_numPaginas, v_isbn, v_librocd, v_mesAnnoCompraLibro)

            btnGrabar2.Enabled = False

            GeneraLog("9", codNumerico)
            Validacion("Page_Load")
            lbl_Valida.ForeColor = System.Drawing.Color.Green
            lbl_Valida.Visible = True
            lbl_Valida.Text = "Registro actualizado correctamente"

        End If

        listarUltimo()


    End Sub

    'Function ExtraerImagen(ByVal Foto As Integer) As Byte()
    '    Dim SqlSelect As String = "Select cLibro_ImagenCara From  tbLibro_Percy Where cLibro_CodNumerico = " & Foto
    '    Dim Cn As New SqlConnection(vConex_BDCapacitacion)
    '    Dim Command As New SqlCommand(SqlSelect, Cn)
    '    Cn.Open()
    '    Dim MyPhoto() As Byte = CType(Command.ExecuteScalar(), Byte())
    '    Cn.Close()
    '    Return MyPhoto
    'End Function

    '=====================FUNCION PARA CAPTURA IP=============================================
    Private Function CapturaIP() 'Funcion/Procedimiento para capturar IP cliente
        Dim IPAdd As String = String.Empty
        IPAdd = Request.ServerVariables("HTTP_X_FORWARDED_FOR")

        'Session("ss_MaqReg") = Request.ServerVariables("Remote_host")

        If String.IsNullOrEmpty(IPAdd) Then
            IPAdd = Request.ServerVariables("REMOTE_ADDR")
            '+++IPAdd = Request.ServerVariables("Remote_host")
            '+++IPAdd = Request.ServerVariables("HTTP_REMOTE_IP")
            '+++IPAdd = Request.ServerVariables("HTTP_CLIENT-IP")
        End If

        Return IPAdd

    End Function

    '=====================FUNCION PARA FORMATO FECHA Y HORA==============================
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


    '===================Procedimiento para generar Log===========================
    Private Sub GeneraLog(ByVal v_opcion As String, ByVal v_valor As String) 'Funcion/procedimiento
        Try

            Dim tupla_FechaHora As Tuple(Of String, String) = Formato_Fecha_Hora()

            Dim cUser_Fecha_Ing As String
            Dim cUser_Hora_Ing As String

            Dim cUser_quien_consulta As String = Session("s_NomUsuario")
            Dim IPAdd As String = CapturaIP()

            Dim cUser_TemaBuscado As String
            Dim cUser_Accion As String
            Dim cUser_Modulo As String = "MLIB"



            If v_opcion = 1 Then                            'Buscar por Cod de Registro
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)   'Formato de fecha
                cUser_Hora_Ing = (tupla_FechaHora.Item2)    'Formato de hora
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Buscó por Cod de Registro"
            ElseIf v_opcion = 2 Then                        'Buscar por Cod de Clasificación
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Buscó por Cod de Clasificación"
            ElseIf v_opcion = 3 Then                        'Buscar por titulo
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Buscó por titulo"
            ElseIf v_opcion = 4 Then                        'Buscar por autor
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Buscó por autor"
            ElseIf v_opcion = 5 Then                        'Buscar por todos
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Buscó por todos"
            ElseIf v_opcion = 6 Then                        'Buscar por materia
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Buscó por materia"
            ElseIf v_opcion = 7 Then                        'Selecciono Registro
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Seleccionó Datos del registro de libro"
            ElseIf v_opcion = 8 Then                        'Registrar Libro
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Agregó Nuevo Libro"
            ElseIf v_opcion = 9 Then                        'Modificar Libro
                cUser_Fecha_Ing = (tupla_FechaHora.Item1)
                cUser_Hora_Ing = (tupla_FechaHora.Item2)
                cUser_TemaBuscado = v_valor
                cUser_Accion = "Modificó Datos del Libro"
            End If
            cls_Metodos.RegistrarLog(cUser_Fecha_Ing, cUser_Hora_Ing,
                                    cUser_quien_consulta, IPAdd,
                                    cUser_Accion, cUser_TemaBuscado, cUser_Modulo)


        Catch ex As Exception
            'lbl_Valida.Text = "{Por el momento no puede grabar log, error en la consulta a la base de datos}"
            lbl_Valida.Text = ex.Message 'Muestra mensaje original del error.
            lbl_Valida.ForeColor = System.Drawing.Color.Red
            btnBuscar.Visible = False
        End Try
    End Sub

    Private Sub cboxBusqueda_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboxBusqueda.SelectedIndexChanged
        TxtBusqueda.Text = ""

        If cboxBusqueda.SelectedIndex = 0 Then              'BÚSQUEDA POR COD DE REGISTRO
            TxtBusqueda.MaxLength = 8
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")
            TxtBusqueda.Attributes.Add("placeholder", "(Buscar por cód de registro)")

        ElseIf cboxBusqueda.SelectedIndex = 1 Then          'BÚSQUEDA POR COD DE CLASIFICACION
            TxtBusqueda.MaxLength = 30
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")
            TxtBusqueda.Attributes.Add("placeholder", "(Buscar por cód de clasificación)")

        ElseIf cboxBusqueda.SelectedIndex = 2 Then          'BÚSQUEDA POR TITULO
            TxtBusqueda.MaxLength = 30
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")
            TxtBusqueda.Attributes.Add("placeholder", "(Buscar por título)")

        ElseIf cboxBusqueda.SelectedIndex = 3 Then          'BÚSQUEDA POR AUTOR
            TxtBusqueda.MaxLength = 40
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")
            TxtBusqueda.Attributes.Add("placeholder", "(Buscar por autor)")

        ElseIf cboxBusqueda.SelectedIndex = 4 Then          'BÚSQUEDA POR TODOS     --NO SE USA
            TxtBusqueda.MaxLength = 40
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")
            TxtBusqueda.Attributes.Add("placeholder", "(Buscar por materia)")

        ElseIf cboxBusqueda.SelectedIndex = 5 Then          'BÚSQUEDA POR MATERIA --NO SE USA
            TxtBusqueda.MaxLength = 40
            TxtBusqueda.Attributes.Add("onKeyup", "onKeyup = verificarBusqMantenimientoLibro(this);")
        End If
    End Sub

    Private Sub btnVerFichaDet_Click(sender As Object, e As EventArgs) Handles btnVerFichaDet.Click
        Try
            'If Len(Trim(TxtBusqueda.Text)) <> 0 Then
            Dim query As String = "select cLibro_CodNumerico, cLibro_CodClasificacion, " &
                                " cLibro_Titulo, cLibro_Edicion, cLibro_Autor , cLibro_Categoria, cLibro_Modo, cLibro_Idioma, cLibro_Detalles, cMaterias, cPie_Imprenta, cLibro_FechaReg, cLibro_HoraReg, cNroPaginas, cLibro_Anno, cLibro_PrecioS, cLibro_PrecioD, cTipo, cLibro_NroEjemp" &
                                " from " & tbLibro & " where cLibro_CodNumerico = '" & Session("MLibro_codRegistro") & "'"

                Dim ds As New DataSet
                Dim adp As New SqlDataAdapter(query, vConex_BDBiblioteca)
                adp.Fill(ds, "Prestamo")
                ds.Dispose()
            ExportarReporte_RDLC("rptFichaDetalleLibro.rdlc", "FichaDetalleLibro", ds, "PDF", "rptFichaDetalleLibro") 'nuevo usa report viewer
            'Else
            'ScriptManager.RegisterStartupScript(Me, GetType(Page), "alerta", "<script>alert('Seleccionar un registro de la tabla para visualizar su ficha')</script>", False)
            'End If
        Catch ex As Exception
            lbl_Valida.Visible = True
            lbl_Valida.Text = ex.Message
            lbl_Valida.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    Sub ExportarReporte_RDLC(ByVal nombreReporte As String, ByVal tituloReporte As String, ByVal MydataSet As DataSet, ByVal strFile As String, ByVal subtituloRpt As String)
        Dim ds_Ficha_Prestamo As New DataSet()
        ds_Ficha_Prestamo = MydataSet

        Try
            Dim rds_Ficha_Prestamo As ReportDataSource
            ds_Ficha_Prestamo.Tables(0).TableName = "Ficha_Libro"
            'rv_General.LocalReport.ReportPath = nombreReporte
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
        'Dim bytes As Byte() = ReportViewer1.LocalReport.Render(rb_Format.SelectedItem.Value, Nothing, mimeType, contentType, encoding, extension, streamids, warnings)
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