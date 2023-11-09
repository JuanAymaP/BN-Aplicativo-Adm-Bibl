<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_mantenimientoLibro.aspx.vb" Inherits="Biblioteca_Mant.frm_mantenimientoLibro" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Base" runat="server">
    <!---JAVASCRIPT Y ESTILOS PROPIOS USANDO LIBRERIA JQUERY UI-->
    <link href="Scripts/UI_Datepicker/jquery-ui-1-10-1.css" rel="stylesheet" />
    <script src="Scripts/UI_Datepicker/jquery-ui-1-10-1.js"></script>
    <script src="Scripts/UI_Datepicker/jquery.ui.datepicker-es.js"></script>
    <script src="Scripts/validaciones.js"></script>

    <div style="display: flex; flex-wrap: wrap;">
        <div id="Content_General">
            <h1 style="color: green; font-size: 17px">
                <asp:Label ID="lbl_Titulo" runat="server" Text="REGISTRO DE LIBROS" Style="color: green; font-size: 17px" Font-Bold="true"></asp:Label>
            </h1>
            <!--Seccion de campos de texto-->
            <div id="Content_Datos">
                <fieldset class="Datos_Personales" style="margin-bottom: 20px; width: 663px;">
                    <legend class="Titulo_Cuadro" style="width: 6%">DATOS</legend>
                    <table style="width: 656px;" aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 26px;">
                                <asp:Label ID="lbl_codRegistro" runat="server" Text="Código Registro:"></asp:Label>
                            </td>
                            <td style="width: 130px; height: 26px;">
                                <asp:TextBox ID="txt_codRegistro" runat="server" Width="93px"></asp:TextBox>
                            </td>
                            <td style="width: 86px; height: 26px;">
                                <asp:Label ID="Label1" runat="server" Text="Cód. Clasificación:"></asp:Label>
                            </td>
                            <td colspan="3" style="width: 128px; height: 26px;">
                                <asp:TextBox ID="txt_codClasif" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px">
                                <asp:Label ID="lbl_TituloLibro" runat="server" Text="TÍtulo:"></asp:Label>
                            </td>
                            <td colspan="4" align="left">
                                <textarea runat="server" style="width: 98%;" id="txt_TituloLibro"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td id="td_Categoria" style="height: 26px; width: 68px;" runat="server">
                                <asp:Label ID="lbl_Categoria" runat="server" Text="Categoría:"></asp:Label>
                            </td>
                            <td style="height: 26px; width: 30px;">
                                <asp:DropDownList ID="cboxLibro_Categoria" runat="server" Width="90px">
                                    <asp:ListItem Value="00">00 - ELEGIR </asp:ListItem>
                                    <asp:ListItem Value="01">01 - LIBRO</asp:ListItem>
                                    <asp:ListItem Value="02">02 - REVISTA</asp:ListItem>
                                    <asp:ListItem Value="03">03 - FOLLETO</asp:ListItem>
                                    <asp:ListItem Value="04">04 - MEMORIA</asp:ListItem>
                                    <asp:ListItem Value="05">05 - TESIS</asp:ListItem>
                                    <asp:ListItem Value="06">06 - PERIODICO</asp:ListItem>
                                    <asp:ListItem Value="07">07 - FOTOS</asp:ListItem>
                                    <asp:ListItem Value="08">08 - VIDEO</asp:ListItem>
                                    <asp:ListItem Value="09">09 - COLECCION ESPECIAL</asp:ListItem>
                                    <asp:ListItem Value="10">10 - NORMAS LEGALES</asp:ListItem>
                                    <asp:ListItem Value="20">20 - ELECTRONICO</asp:ListItem>
                                    <asp:ListItem Value="99">99 - OTROS</asp:ListItem>
                                </asp:DropDownList>
                                <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                    <asp:Label ID="Label12" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo de interrogacion"/>
                                    <span class="tiptext_Ayuda_Corto">*01 - LIBRO<br />
                                        *02 - REVISTA<br />
                                        *03 - FOLLETO<br />
                                        *04 - MEMORIA<br />
                                        *05 - TESIS<br />
                                        *06 - PERIODICO<br />
                                        *07 - FOTOS<br />
                                        *08 - VIDEO<br />
                                        *09 - COLECCION ESPECIAL<br />
                                        *10 - NORMAS LEGALES<br />
                                        *20 - ELECTRONICOS<br />
                                        *99 - OTROS
                                    </span>
                                </div>
                            </td>
                            <td style="width: 54px">
                                <asp:Label ID="Label3" runat="server" Text="Autor:"></asp:Label>
                            </td>
                            <td colspan="3" style="width: 123px">
                                <asp:TextBox ID="txt_autor" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 28px; width: 82px;">
                                <asp:Label ID="lbl_Editorial" runat="server" Text="Editorial:"></asp:Label>
                            </td>
                            <td style="height: 28px; width: 130px;">
                                <asp:TextBox ID="txt_Editorial" runat="server" Width="93px"></asp:TextBox>
                            </td>
                            <td style="height: 28px; width: 86px;">
                                <asp:Label ID="Label4" runat="server" Text="N° Edición:"></asp:Label>
                            </td>
                            <td style="height: 28px; width: 128px;">
                                <asp:TextBox ID="txt_numEdicion" runat="server" Width="93px"></asp:TextBox>
                            </td>
                            <td style="height: 28px; width: 81px;">
                                <asp:Label ID="Label5" runat="server" Text="Año de Edición:"></asp:Label>
                            </td>
                            <td style="height: 28px;">
                                <asp:TextBox ID="txt_anioEdic" runat="server" Width="93px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px">
                                <asp:Label ID="lbl_proveedor" runat="server" Text="Proveedor:"></asp:Label>
                            </td>
                            <td colspan="3" align="left">
                                <textarea runat="server" style="width: 92%;" id="txt_proveedor"></textarea>
                            </td>
                            <td style="width: 86px">
                                <asp:Label ID="Label6" runat="server" Text="N° Páginas:"></asp:Label>
                            </td>
                            <td style="width: 128px">
                                <asp:TextBox ID="txt_numPaginas" runat="server" MaxLength="5" Width="93px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px">
                                <asp:Label ID="lbl_LibroPrecioDolares" runat="server" Text="Precio (DOL):"></asp:Label>
                            </td>
                            <td style="width: 130px">
                                <asp:TextBox ID="txt_LibroprecioDolares" runat="server" MaxLength="5" Width="93px"></asp:TextBox>
                            </td>
                            <td style="width: 86px">
                                <asp:Label ID="Label8" runat="server" Text="Precio (SOL):"></asp:Label>
                            </td>
                            <td style="width: 128px">
                                <asp:TextBox ID="txt_LibroPrecioSoles" runat="server" MaxLength="5" Width="93px"></asp:TextBox>
                            </td>
                            <td style="width: 81px">
                                <asp:Label ID="Label7" runat="server" Text="N° Ejemplares:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_numEjemplares" runat="server" MaxLength="3" Width="93px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 82px">Materias:</td>
                            <td colspan="3" align="left">
                                <textarea runat="server" style="width: 93%;" id="txt_materias"></textarea>
                                <br />
                                <p style="font-size: 10px; margin: 0px;">Hacer espacios después de cada materia</p>
                            </td>
                            <td style="width: 103px">
                                <asp:CheckBox ID="ckhLibro_CD" runat="server" Text="Incluye CD" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 55px; width: 82px;">Detalle:</td>
                            <td colspan="3" align="left" style="height: 55px">
                                <textarea runat="Server" style="width: 93%" id="txt_Detalles"></textarea>
                            </td>
                            <td id="td_Idioma" style="height: 26px; width: 78px;" runat="server">
                                <asp:Label ID="lbl_Idioma" runat="server" Text="Idioma:"></asp:Label>
                            </td>
                            <td style="height: 26px; width: 169px;">
                                <asp:DropDownList ID="cboxLibro_Idioma" runat="server">
                                    <asp:ListItem Value="ELEGIR">--Elegir--</asp:ListItem>
                                    <asp:ListItem Value="ESPAÑOL">ESPAÑOL</asp:ListItem>
                                    <asp:ListItem Value="INGLES">INGLES</asp:ListItem>
                                    <asp:ListItem Value="ITALIANO">ITALIANO</asp:ListItem>
                                    <asp:ListItem Value="CHINO">CHINO</asp:ListItem>
                                    <asp:ListItem Value="PORTUGUES">PORTUGUES</asp:ListItem>
                                    <asp:ListItem Value="OTROS">(OTROS)</asp:ListItem>
                                </asp:DropDownList>
                                <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                    <asp:Label ID="Label11" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo Interrogacion" />
                                    <span class="tiptext_Ayuda_Corto">*ESPAÑOL<br />
                                        *INGLES<br />
                                        *ITALIANO<br />
                                        *CHINO<br />
                                        *PORTUGUES<br />
                                        *OTROS<br />
                                    </span>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 656px" aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td align="left" class="style2" style="width: 68px">N° ISBN:</td>
                            <td style="width: 169px">
                                <asp:TextBox ID="txt_ISBN" runat="server"></asp:TextBox></td>
                            <td colspan="1" align="left" class="style2" style="padding-right: -30px; width: 120px;">Mes-Año que se compró el libro (&#39;MM/AAAA'): 
                            </td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txt_MesAnioCompraLibro" runat="server" MaxLength="7" Width="91px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                        </tr>

                        <!--FILA de TIPO-->
                        <tr>
                            <td d="td_Tipo" style="height: 26px; width: 68px;" runat="server">
                                <asp:Label ID="lbl_tipo" runat="server" Text="Tipo:"></asp:Label>
                            </td>
                            <td style="height: 26px; width: 169px;">

                                <div style="display: inline-flex">
                                    <asp:DropDownList ID="cboxTipo" runat="server">
                                        <asp:ListItem Value="00">00 - ELEGIR</asp:ListItem>
                                        <asp:ListItem Value="01">COMPRA</asp:ListItem>
                                        <asp:ListItem Value="02">COLECCIÓN</asp:ListItem>
                                        <asp:ListItem Value="03">SUSCRIPCIÓN</asp:ListItem>
                                        <asp:ListItem Value="04">DONACIÓN</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                        <asp:Label ID="Label9" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                        <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo interrogacion" />
                                        <span class="tiptext_Ayuda_Corto">Nemónicos<br />
                                            *C = Compra<br />
                                            *L = Colección<br />
                                            *S = Suscripción<br />
                                            *D = Donación
                                        </span>
                                    </div>
                                </div>


                            </td>

                            <td style="width: 47px">
                                <asp:Label ID="Label2" runat="server" Text="Lugar:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_lugar" runat="server" Width="93px"></asp:TextBox>
                            </td>
                            <td style="height: 26px; width: 103px;"></td>
                        </tr>
                        <!--FILA de MODO-->
                        <tr>
                            <td id="td_Modo" style="height: 26px; width: 68px;" runat="server">
                                <asp:Label ID="lbl_Modo" runat="server" Text="Modo:"></asp:Label>
                            </td>
                            <td style="height: 26px; width: 169px;">
                                <asp:DropDownList ID="cboxLibro_Modo" Width="118px" runat="server">
                                    <asp:ListItem Value="01">01 - FISICO</asp:ListItem>
                                </asp:DropDownList>
                                <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                    <asp:Label ID="Label10" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo Interrogacion" />
                                    <span class="tiptext_Ayuda_Corto">*01 - FISICO<br />
                                        *02 - VIRTUAL
                                    </span>
                                </div>
                            </td>

                            <td id="td_Estado" style="height: 26px; width: 68px;" runat="server">
                                <asp:Label ID="lbl_Estado" runat="server" Text="Estado:"></asp:Label>
                            </td>
                            <td style="height: 26px; width: 140px;">

                                <div style="display: inline-flex">
                                    <asp:DropDownList ID="cboxLibro_Estado" runat="server" Width="100px">
                                        <asp:ListItem Value="-1">--Elegir--</asp:ListItem>
                                        <asp:ListItem Value="4">DISPONIBLE</asp:ListItem>
                                        <asp:ListItem Value="1">PRESTADO</asp:ListItem>
                                        <asp:ListItem Value="0">RESERVADO</asp:ListItem>
                                        <asp:ListItem Value="6">CONSULTA EN SALA</asp:ListItem>
                                        <asp:ListItem Value="3">DESUSO</asp:ListItem>
                                        <asp:ListItem Value="7">NO DISPONIBLE</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                        <asp:Label ID="lbl_TD" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                        <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo interrogacion" />
                                        <span class="tiptext_Ayuda_Corto">*DISP = Disponible<br />
                                            *PRES = Prestado<br />
                                            *RESE = Reservado
                                                                    <br />
                                            *CSAL = Consulta en sala<br />
                                            *DESU = Desuso<br />
                                            *NODI = No disponible
                                        </span>
                                    </div>
                                </div>


                            </td>
                        </tr>
                        <!--FILA de ESTADO-->
                        <tr>
                            <td style="height: 26px; width: 47px"></td>
                        </tr>
                        <!--FILA de IDIOMA-->
                        <tr>
                        </tr>
                        <!--FILA de CATEGORIA-->
                        <tr>
                        </tr>
                    </table>
                </fieldset>
            </div>

            <!--Seccion Busqueda-->
            <div id="Content_Fotos" style="margin-bottom: 20px;">
                <fieldset class="Datos_Buscar">
                    <legend class="Titulo_Cuadro">BÚSQUEDA POR:</legend>
                    <div id="errorDiv"></div>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="cboxBusqueda" runat="server" Width="180px" AutoPostBack="true" BackColor="#FFFF9E" Height="25px">
                                    <asp:ListItem Value="0">Cód. Registro (Numérico)</asp:ListItem>
                                    <asp:ListItem Value="1">Cód. Clasificación</asp:ListItem>
                                    <asp:ListItem Value="2">Título</asp:ListItem>
                                    <asp:ListItem Value="3">Autor</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TxtBusqueda" runat="server" Width="226px" placeholder="(Buscar por cód de registro)" Style="font-style: italic" BackColor="#FFFF9E" Height="25px"></asp:TextBox>
                                <asp:Label ID="lbl_Busqueda" runat="server" Text="" Visible="false"></asp:Label>
                                <input id="btn_Limpiar" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" />
                                <!--Limpia todo -->
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnBuscar" CssClass="btnBuscar" runat="server" Text="Buscar" />
                                <asp:Label ID="lbl_Valida" runat="server" Text=""></asp:Label><!--Muestra mensajes-->
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </fieldset>
                <br />
                <div class="Datos_Botones" style="margin-bottom: 13px;">
                    <div class="btn-group">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                        <asp:Button ID="btnVerFichaDet" runat="server" Text="Ver Ficha" />
                    </div>
                    <div class="btn-group">
                        <asp:Button ID="btnGrabar" runat="server" Text="Grabar." />
                        <asp:Button ID="btnGrabar2" runat="server" Text="Grabar.." />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                    </div>
                </div>
                <div class="Datos_Botones" style="padding: 10px; width: 260px;">
                    <div>
                        <asp:Label ID="Label24" runat="server" Style="color: brown; font-weight: bold; line-height: 23px;">--Los libros en desuso también se pueden prestar</asp:Label><br />
                        <asp:Label ID="Label25" runat="server" Style="color: brown; font-weight: bold; line-height: 23px;">--Para ver la ficha de libro. utilice la opción de Reportes</asp:Label><br />
                        <asp:Label ID="Label13" runat="server" Style="color: brown; font-weight: bold; line-height: 23px;">--Solo puede registrar un libro en una pestaña del navegador a la vez.</asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:Label ID="lblMsjMantLibro" runat="server"></asp:Label>

    <div style="margin-top: 0px;">
        <asp:Label ID="lbl_Orden" runat="server" Text='Ordenado descendentemente por código de registro'></asp:Label>
        <fieldset id="Content_Gridview" runat="server">
            <legend class="Titulo_Cuadro" style="width: 11%">LISTADO DE LIBROS</legend>
            <div style="border: 1px solid gray;">
                <!-- ================== GRIDVIEW ============================ -->
                <asp:GridView ID="gdv_Lista" runat="server" AutoGenerateColumns="False"
                    EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gdv_Lista_OnRowDataBound"
                    OnPageIndexChanging="gdv_Lista_PageIndexChanging" AllowPaging="true" PageSize="10">
                    <Columns>
                        <asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />

                        <asp:TemplateField HeaderText="N°">
                            <ItemTemplate>
                                <asp:Label ID="Lbl_OrdME" runat="server" Text='<%# (gdv_Lista.PageSize * gdv_Lista.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Fecha Registro">
                            <ItemTemplate>
                                <asp:Label ID="lbl_fechaRegistro" runat="server" Text='<%# (gdv_Lista.PageSize * gdv_Lista.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Hora Registro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_horaRegistro" runat="server" Text='lbl_horaRegistro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Título" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_titulo" runat="server" Text='lbl_titulo'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="350px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Código registro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codRegistro" runat="server" Text='lbl_codRegistro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Autor" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_autor" runat="server" Text='lbl_autor'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Cod. Clasificación" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codClasificacion" runat="server" Text='lbl_codClasificacion'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Estado" HeaderStyle-Font-Bold="true" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl_estado" runat="server" Text='lbl_estado'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Estado_N" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_estadoN" runat="server" Text='lbl_estadoN'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Usuario" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_usuario" runat="server" Text='lbl_usuario'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="cLibro_CD" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_cLibro_CD" runat="server" Text='lbl_cLibro_CD'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mes/Año Compra" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_mesAnioCompra" runat="server" Text='lbl_mesAnioCompra'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Lugar Libro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_LugarLibro" runat="server" Text='lbl_LugarLibro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Num Edicion" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_numEdicion" runat="server" Text='lbl_numEdicion'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Wrap="True" Font-Italic="False" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Blue" HorizontalAlign="Center" Font-Italic="True" Font-Size="11px" Font-Underline="True" />
                    <SelectedRowStyle BackColor="Yellow" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <!-- ================== Termina GRIDVIEW =====================-->
            </div>
            <br />
        </fieldset>
        <br />
        
        <!-- ================== DATOS SISTEMA ============================ -->
        <fieldset id="Datos_Sistemas" runat="server">
            <legend class="Titulo_Cuadro">DATOS DEL SISTEMA</legend>
            <input type="button" id="btn_Mostrar" name="btn_Mostrar" value="Mostrar" runat="server" />
            <input type="button" id="btn_Ocultar" name="btn_Ocultar" value="Ocultar" runat="server" />
            <table id="tbl_Datos_Sistemas" aria-label="Tabla1">
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_TFechaSist_Ing" runat="server" Text="Fecha Sist. Ingreso.:"></asp:Label>
                    </td>
                    <td style="width: 140px">
                        <asp:TextBox ID="txt_FechaSist_Ing" runat="server" ReadOnly="True" Width="100px" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_TUsuario" runat="server" Text="Usuario (quién Modificó Registro):"></asp:Label>
                    </td>
                    <td style="width: 140px">
                        <asp:TextBox ID="txt_Usuario" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                    </td>
                    <td></td>
                    <td>
                        <img src="Imagenes/ico_NroReg.png" class="iconos_resultado" alt="Nro registros" />
                        &nbsp;
                        <asp:Label ID="lbl_NoReg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_THoraSist_Ing" runat="server" Text="Hora Sist. Ingreso:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_HoraSist_Ing" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_UsActivo" runat="server" Text="Usuario Activo:" CssClass="subtitulo"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_UsActivo" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_TNoIP" runat="server" Text="Nro IP (quién Modificó Registro):"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_NoIP" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </fieldset>
        <!-- ================== Termina DATOS SISTEMA ============================ -->

        <!-- ================== REPORTVIEWER ============================ -->
        <asp:Panel ID="pnl_Visor" runat="server" Style="margin-left: auto; margin-right: auto" Height="137px">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="rv_General" runat="server" Height="68px"></rsweb:ReportViewer>
            <br />
        </asp:Panel>
        <!-- ================== Termina REPORTVIEWER ============================ -->
    </div>
</asp:Content>
