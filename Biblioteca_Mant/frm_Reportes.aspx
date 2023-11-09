<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_Reportes.aspx.vb" Inherits="Biblioteca_Mant.frm_Reportes" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Base" runat="server">
    <!---JAVASCRIPT Y ESTILOS PROPIOS USANDO LIBRERIA JQUERY UI-->
    <link href="Scripts/UI_Datepicker/jquery-ui-1-10-1.css" rel="stylesheet" />
    <script src="Scripts/UI_Datepicker/jquery-ui-1-10-1.js"></script>
    <script src="Scripts/UI_Datepicker/jquery.ui.datepicker-es.js"></script>
    <!---JAVASCRIPT PROPIOS-->
    <script src="Scripts/validaciones.js"></script>
    <script src="Scripts/validacion_reportes.js"></script>
    <div style="display: flex; flex-wrap: wrap;">

        <div id="Content_General">
            <div id="Content_Datos">
                <h1 style="color: green; font-size: 17px">REPORTES Y ESTADÍSTICAS
                </h1>

                <div class="tab" style="width: 800px; margin-bottom: -20px; border: none; background-color: #E8E8E8;">

                    <tr style="width: 800px">

                        <div style="margin-right: 70px; display: inline-block">
                            <td style="width: 700px; height: 53px;">
                                <asp:RadioButton ID="rdb_Lector" runat="server" Text="a.LECTOR" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_Prestamo_Checked" Checked="true" />
                            </td>
                        </div>

                        <div style="margin-right: 70px; display: inline-block">
                            <td>
                                <asp:RadioButton ID="rdb_Libros" runat="server" Text="b.LIBROS" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_Libros_Checked" />
                            </td>
                        </div>

                        <div style="margin-right: 70px; display: inline-block">
                            <td style="width: 700px; height: 53px;">
                                <asp:RadioButton ID="rdb_Prestamo" runat="server" Text="c.PRÉSTAMOS" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_Prestamo_Checked" />
                            </td>
                        </div>

                        <div style="margin-right: 70px; display: inline-block">
                            <td>
                                <asp:RadioButton ID="rdb_Otros" runat="server" Text="d.OTROS" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_Otros_Checked" />
                            </td>
                        </div>

                    </tr>
                    <tr>
                        <br />
                        <br />
                        <br />
                        <br />
                    </tr>

                </div>

                <div class="tab" style="width: 670px; margin-bottom: -3px; margin-top: 0px; border: none; background-color: #E8E8E8;">
                    <!--LECTOR-->
                    <button id="btn_a1BusquedaCodEmpleado" class="tablinks" runat="server" disabled>a1. Búsqueda por Cód Empleado</button>
                    <button id="btn_a2BusquedaAvanzada" class="tablinks" runat="server">a2. Búsqueda avanzada</button>
                    <!--LIBROS-->
                    <button id="btn_b1BusquedaNumeroRegistro" class="tablinks" runat="server">b1. Búsqueda por Número de Registro</button>
                    <button id="btn_b2BusquedaAvanzada" class="tablinks" runat="server">b2. Búsqueda avanzada</button>
                    <!--PRESTAMOS-->
                    <button id="btn_c1BusquedaNumero" class="tablinks" runat="server">c1. Búsqueda por Número</button>
                    <button id="btn_c2BusquedaAvanzada" class="tablinks" runat="server">c2. Búsqueda avanzada</button>
                    <!--OTROS-->
                    <button id="btn_e1SeguimientosWeb" class="tablinks" runat="server">e1- Seguimientos Búsqueda Web</button>
                </div>
                <!--a.LECTOR-->
                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_a1BusqCodEmpleado" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">Ingrese Cód de empleado:</h1>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td colspan="2">

                                <asp:TextBox ID="txt_ValorCodEmpleado" runat="server" Width="152px" BackColor="#FFFF9E" Height="25px"></asp:TextBox>
                                <input id="btn_Limpiar_ReporteBusquedaLector" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" /><!--Limpia todo -->
                            </td>
                        </tr>

                        <tr>
                            <td style="width: 174px">
                                <div class="btn-group">
                                    <asp:Button ID="btn_CalcularLector1" runat="server" Text="1.Consultar" />
                                </div>
                            </td>

                            <td style="display: inline-block;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_verHistorialEmpleado" runat="server" Text="2.Ver Historial" />
                                </div>
                                <div style="margin: 15px -10px;">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="margin-left: 200px;" RepeatDirection="Horizontal" title="Selecciona el formato a descargar">
                                <asp:ListItem Text="Formato PDF" Value="PDF" Selected="True" />
                            </asp:RadioButtonList>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_validaLector1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_a2BusqAvanzada" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">POR DECIDIR</h1>
                </fieldset>

                <!--b.LIBROS-->
                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_b1BusqPorNumReg" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">Ingrese nro Registro:</h1>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txt_valorLibro1" runat="server" Width="152px" BackColor="#FFFF9E" Height="25px"></asp:TextBox>
                                <input id="btn_Limpiar_ReporteBusquedaLibro" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" /><!--Limpia todo -->
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 174px">
                                <div class="btn-group">
                                    <asp:Button ID="btn_CalcularLibro" runat="server" Text="1.Consultar" />
                                </div>
                            </td>
                            <td style="display: inline-block;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_verFichaLibro1" runat="server" Text="2.Ver Ficha" />
                                </div>
                            </td>
                            <td style="display: inline-block;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_verHistorialLibro" runat="server" Text="3.Ver Historial" />
                                </div>
                                <div style="margin: 15px -10px;">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <asp:RadioButtonList ID="rdb_Libro1Formato" runat="server" Style="margin-left: 200px;" RepeatDirection="Horizontal" title="Selecciona el formato a descargar">
                                <asp:ListItem Text="Formato PDF" Value="PDF" Selected="True" />
                            </asp:RadioButtonList>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_validaLibro1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_b2BusqAvanzada" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">REALICE SELECCIONES:</h1>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 70px; vertical-align: top;">
                                <asp:Label ID="Label18" runat="server" Text="* Fecha de "></asp:Label>
                            </td>
                            <td style="vertical-align: top;">
                                <asp:DropDownList ID="cbox_RegistroCompra" runat="server" Width="110px">
                                    <asp:ListItem Value="Registro" Selected="True">1-Registro</asp:ListItem>
                                    <asp:ListItem Value="Compra">2-Compra</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 200px; vertical-align: top;">
                                <asp:Label ID="Label19" runat="server" Text="Desde:"></asp:Label>&nbsp;
                                <asp:TextBox ID="txt_FechaDesdeLibro" runat="server" Width="74px" onkeyup="txt_FechaDesde(event);" CssClass="datepicker"></asp:TextBox>
                                <asp:Button ID="Button8" runat="server" Text="..." Visible="false" />
                                <asp:Calendar ID="Calendar3" runat="server" Visible="false"></asp:Calendar>
                            </td>
                            <td style="width: 200px; vertical-align: top;">
                                <asp:Label ID="Label20" runat="server" Text="Hasta:"></asp:Label>&nbsp;
                                <asp:TextBox ID="txt_FechaHastaLibro" runat="server" Width="75px" onkeyup="txt_FechaHasta(event);" CssClass="datepicker"></asp:TextBox>
                                <asp:Button ID="Button9" runat="server" Text="..." Visible="false" />
                                <asp:Calendar ID="Calendar4" runat="server" Visible="false"></asp:Calendar>

                            </td>
                        </tr>
                    </table>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 219px">
                                <asp:Label ID="Label22" runat="server" Text="* Cód. Clasificación:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_CodClasificacion" runat="server" Width="152px" placeholder="" BackColor="" Height="15px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px; height: 25px;">
                                <asp:Label ID="Label23" runat="server" Text="* Proveedor:"></asp:Label>
                            </td>
                            <td style="height: 25px">
                                <asp:TextBox ID="txt_Proveedor" runat="server" Width="152px" placeholder="" BackColor="" Height="15px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px; height: 25px;">
                                <asp:Label ID="Label24" runat="server" Text="* Nro ISBN"></asp:Label>
                            </td>
                            <td style="height: 25px">
                                <asp:TextBox ID="txt_Isbn" runat="server" Width="152px" placeholder="" BackColor="" Height="15px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">
                                <asp:Label ID="Label21" runat="server" Text="* Autor"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_autor" runat="server" Width="152px" placeholder="" BackColor="" Height="15px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; width: 219px;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_CalcularListaLibro" runat="server" Text="1.Consultar" /><br />
                                    <asp:Label ID="lbl_ValidaLibro2" runat="server" Text=""></asp:Label>
                                </div>
                                <div runat="server" id="img_load">
                                    <asp:Image runat="server" ID="img_loading" ImageUrl="Imagenes/gif_cargando.gif" Height="40" Width="40"/>
                                </div>
                            </td>
                            <td style="display: flex;" colspan="2">
                                <div class="btn-group" style="width: 141px">
                                    <asp:Button ID="btn_verFichaLibro2" runat="server" Text="2.Ver reporte" />
                                </div>

                                <div class="btn-group" style="width: 141px">
                                    <asp:Button ID="btn_VerInventario" runat="server" Style="padding-left: 8px" Text="3.Ver Inventario" />
                                </div>

                                <div style="margin: 15px auto; width: 261px;">
                                    <table aria-label="Tabla1">
                                        <tr>
                                            <th></th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label26" runat="server" Text="* Formato salida:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cbox_FormatoListaLibro" runat="server" title="Selecciona tipo de reporte a descargar">
                                                    <asp:ListItem Text="PDF" Value="PDF" Selected="True" />
                                                    <asp:ListItem Text="Excel" Value="EXCELOPENXML" />
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label27" runat="server" Text="* Tipo:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cbox_TipoListaLibro" runat="server" title="Selecciona tipo de reporte a descargar" Width="170px">
                                                    <asp:ListItem Text="Listado de Libros" Value="rpt_Ficha_Lista_Libros" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Text="Libros comprados + leídos" Value="rpt_Detalle"></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por año" Value="rpt_AcumOFI"></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por categoría" Value="rpt_AcumIFI"></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por Tipo" Value="rpt_AcumDia"></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por Modo" Value="rpt_AcumDia"></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por Estado" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por Idioma" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Listado de libros por Materia" Value=""></asp:ListItem>

                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                    </table>

                                </div>
                            </td>

                        </tr>
                    </table>
                </fieldset>

                <!--c.PRESTAMOS-->
                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_c1BusqPorNum" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">Ingrese nro Préstamo:</h1>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td colspan="2">

                                <asp:TextBox ID="txt_ValorPrestamo1" runat="server" Width="152px" BackColor="#FFFF9E" Height="25px"></asp:TextBox>
                                <input id="btn_Limpiar_ReporteBusquedaPrestamo" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" /><!--Limpia todo -->
                            </td>
                        </tr>

                        <tr>
                            <td style="width: 174px">
                                <div class="btn-group">
                                    <asp:Button ID="btn_CalcularPrestamo1" runat="server" Text="1.Consultar" />
                                </div>
                            </td>
                            <td style="display: flex;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_VerFichaPrestamo1" runat="server" Text="2.Ver Ficha" />
                                </div>
                                <div style="margin: 15px -10px;">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <asp:RadioButtonList ID="rb_FormatContrato" runat="server" Style="margin-left: 200px;" RepeatDirection="Horizontal" title="Selecciona el formato a descargar">
                                <asp:ListItem Text="Formato PDF" Value="PDF" Selected="True" />
                            </asp:RadioButtonList>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_ValidaPrestamo1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_c2BusqAvanzada" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">REALICE SELECCIONES:</h1>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 185px; vertical-align: top;">
                                <asp:Label ID="Label3" runat="server" Text="* Fecha de Préstamo:  "></asp:Label>

                            </td>
                            <td style="width: 200px; vertical-align: top;">
                                <asp:Label ID="Label5" runat="server" Text="Desde:"></asp:Label>&nbsp;
                                <asp:TextBox ID="txt_FechaDesdePrestamo" runat="server" Width="74px" onkeyup="txt_FechaDesde(event);" CssClass="datepicker"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="..." Visible="false" />
                                <asp:Calendar ID="Calendar1" runat="server" Visible="false"></asp:Calendar>
                            </td>
                            <td style="width: 200px; vertical-align: top;">
                                <asp:Label ID="Label7" runat="server" Text="Hasta:"></asp:Label>&nbsp;
                                <asp:TextBox ID="txt_FechaHastaPrestamo" runat="server" Width="75px" onkeyup="txt_FechaHasta(event);" CssClass="datepicker"></asp:TextBox>
                                <asp:Button ID="Button2" runat="server" Text="..." Visible="false" />
                                <asp:Calendar ID="Calendar2" runat="server" Visible="false"></asp:Calendar>

                            </td>
                        </tr>
                    </table>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 219px">
                                <asp:Label ID="Label8" runat="server" Text="* Estado del préstamo:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="cbox_EstadoPrestamo" runat="server" Width="280px">
                                    <asp:ListItem Value="" Selected="True">--Todos</asp:ListItem>
                                    <asp:ListItem Value="1">1-Préstamo no devuelto</asp:ListItem>
                                    <asp:ListItem Value="4">2-Préstamo ya devuelto</asp:ListItem>
                                    <asp:ListItem Value="0">3-Reservado Pendiente</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">
                                <asp:Label ID="Label11" runat="server" Text="* Préstamos especiales:"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="ckhLibro_CD" runat="server" Enabled="false" Checked="false" Text="" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; width: 219px;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_CalcularListaPrestamo" runat="server" Text="1.Consultar" /><br />
                                    <asp:Label ID="lbl_ValidaPrestamo2" runat="server" Text=""></asp:Label>
                                </div>
                            </td>
                            <td style="display: flex;" colspan="2">
                                <div class="btn-group" style="width: 141px">
                                    <asp:Button ID="btn_verFichaPrestamo2" runat="server" Text="2.Ver reporte" />
                                </div>
                            </td>
                        </tr>


                        <tr>
                            <div style="margin: 0px auto; width: 261px;">
                                <table aria-label="Tabla1" style="margin-left: 230px">
                                    <tr>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="* Formato salida:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cbox_FormatoListaPrestamo" runat="server" title="Selecciona tipo de reporte a descargar">
                                                <asp:ListItem Text="PDF" Value="PDF" Selected="True" />
                                                <asp:ListItem Text="Excel" Value="EXCELOPENXML" />
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="* Tipo:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cbox_TipoListaPrestamo" runat="server" title="Selecciona tipo de reporte a descargar" Width="170px">
                                                <asp:ListItem Text="Listado de prestamos" Value="rpt_Ficha_Lista_Prestamos" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Préstamos por mes" Value="rpt_AcumOFI"></asp:ListItem>
                                                <asp:ListItem Text="Préstamos por oficina" Value="rpt_Ficha_Lista_PrestamosxOficina"></asp:ListItem>
                                                <asp:ListItem Text="Préstamos por día" Value="rpt_AcumDia"></asp:ListItem>
                                                <asp:ListItem Text="Ranking Lectores" Value="rpt_AcumuladoCustodia"></asp:ListItem>
                                                <asp:ListItem Text="Ranking libros más leídos" Value="rpt_AcumDia"></asp:ListItem>
                                                <asp:ListItem Text="Listado Préstamo Lima - Prov" Value="rpt_AcumDia"></asp:ListItem>
                                                <asp:ListItem Text="Prestamos por Tipo" Value="rpt_AcumDia"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                </table>

                            </div>
                        </tr>


                    </table>
                </fieldset>




                <fieldset class="Datos_Buscar" style="width: 652px; background-color: beige;" id="fs_e1Otros" runat="server">
                    <legend hidden="hidden"></legend>
                    <h1 class="Titulo_Cuadro">Seguimientos busqueda Web:</h1>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="vertical-align: top;">
                                <asp:DropDownList ID="DropDownList10" runat="server" Width="400px">
                                    <asp:ListItem Value="BusquedaWeb" Selected="True">1-Visualizar contenido Búsqueda Web</asp:ListItem>
                                    <asp:ListItem Value="fecha_Dev">2-Contador de Visitas diarias Web</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>

                        <tr>
                            <td style="vertical-align: top; width: 219px;">
                                <div class="btn-group">
                                    <asp:Button ID="btn_CalcularListaBusqWeb" runat="server" Text="1.Consultar" /><br />
                                    <asp:Label ID="lbl_ValidaBusqWeb" runat="server" Text=""></asp:Label>
                                </div>
                            </td>
                            <td style="display: flex;" colspan="2">
                                <div class="btn-group" style="width: 141px">
                                    <asp:Button ID="btn_verFichaBusqWeb" runat="server" Text="2.Ver reporte" />
                                </div>
                                <div style="margin: 15px auto; width: 261px;">
                                    <table aria-label="Tabla1">
                                        <tr>
                                            <th></th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label38" runat="server" Text="* Formato salida:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cbox_BusqWebFormato" runat="server" title="Selecciona tipo de reporte a descargar">
                                                    <asp:ListItem Text="PDF" Value="PDF" Selected="True" />
                                                    <asp:ListItem Text="Excel" Value="EXCELOPENXML" />
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label39" runat="server" Text="* Tipo:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="cbox_BusqWebTipo" runat="server" title="Selecciona tipo de reporte a descargar" Width="170px">
                                                    <asp:ListItem Text="1- Visualizar contenido Búsqueda Web (Qué tema esta buscando el usuario?)" Value="rpt_BusquedasWeb" Selected="True"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                    </table>

                                </div>
                            </td>
                        </tr>
                    </table>
                </fieldset>

                <!--INICIA VISOR RDLC EN OCULTO-->
                <asp:Panel ID="pnl_Visor" runat="server" Style="margin-left: auto; margin-right: auto" Height="137px">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <rsweb:ReportViewer ID="rv_General" runat="server" Height="68px"></rsweb:ReportViewer>
                    <br />
                </asp:Panel>
            </div>
        </div>
    </div>
    </span>
</asp:Content>
