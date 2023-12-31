﻿<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_prestamoLibro.aspx.vb" Inherits="Biblioteca_Mant.frm_prestamoLibro" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Base" runat="server">
    <!---JAVASCRIPT Y ESTILOS PROPIOS USANDO LIBRERIA JQUERY UI-->
    <link href="Scripts/UI_Datepicker/jquery-ui-1-10-1.css" rel="stylesheet" />
    <script src="Scripts/UI_Datepicker/jquery-ui-1-10-1.js"></script>
    <script src="Scripts/UI_Datepicker/jquery.ui.datepicker-es.js"></script>
    <!---JAVASCRIPT PROPIOS-->
    <script src="Scripts/validacion_reportes.js"></script>
    <script src="Scripts/validaciones.js"></script>

    <div style="display: flex; flex-wrap: wrap;">
        <div id="Content_General">
            <h1 style="color: green; font-size: 17px">
                <asp:Label ID="lbl_Titulo" runat="server" Text="MANTENIMIENTO DE PRÉSTAMO" Style="color: green; font-size: 17px" Font-Bold="true"></asp:Label>
            </h1>
            <div id="Content_Datos" style="width: 1000px">
                <div class="tab" style="width: 800px; margin-bottom: -3px; border: none; background-color: #E8E8E8;">
                    <tr style="width: 800px">
                        <div style="margin-right:70px; display:inline-block">
                            <td style="width: 700px; height: 53px;">
                                <asp:RadioButton ID="rdb_NuevoPrestamo" runat="server" Text="Nuevo Préstamo" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_NuevoPrestamo_Checked" Checked="true" />
                                <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px;">
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo Interrogacion" />
                                    <span class="tiptext_Ayuda_Corto"><strong><u>REGLAS:</u></strong><br />Seguir la secuencia:<br /> 1.Lector, 2.Libro y 3.Realizar nuevo Préstamo</span>
                                </div>                           
                            </td>
                        </div>
                        <div style="margin-right:70px; display:inline-block">
                            <td>
                                <asp:RadioButton ID="rdb_devolucion" runat="server" Text="Devolución" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_devolucion_Checked" />
                                <div class="tooltip_Ayuda_Largo left" style="margin-left: 10px;">
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo interrogacion"/>
                                    <span class="tiptext_Ayuda_Largo"><strong><u>REGLAS PARA DEVOLVER:</u></strong><br /> *Navegue en la grilla y seleccione un registro ó.<br /> *Utilice la opción "BUSCAR POR"<br /> *Utilice la opción modificar"<br />*Solo puede devolver lo prestado</span>
                                </div>
                            </td>
                        </div>
                        <div style="margin-right: 70px; display:inline-block">
                            <td>
                                <asp:RadioButton ID="rdb_PrestarReservasAnul" runat="server" Text="Prestar Reservas" AutoPostBack="true"
                                    GroupName="GrupoMov" OnCheckedChanged="rdb_PrestarReservasAnul_Checked" />
                            </td>
                            <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px;">
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" alt="Simbolo interrogacion"/>
                                <span class="tiptext_Ayuda_Corto"><strong><u>REGLAS:</u></strong><br />
                                    *Solo puede anular los préstamos y las reservas     
                            </div>
                        </div>                   
                    </tr>
                    <tr>
                        <br /> <br /> <br /> <br />
                    </tr>

                </div>
                <div class="tab" style="width: 670px; margin-bottom: -3px; border: none; background-color: #E8E8E8"> 
                    <button id="btn_Libro" class="tablinks" runat="server" disabled>1) Libro</button>
                    <button id="btn_Lector" class="tablinks" runat="server">2) Lector</button>
                    <button id="btn_Prestamo" class="tablinks" runat="server">3) Realizar nuevo Préstamo</button>
                    <button id="btn_Devolver" class="tablinks" runat="server">3) Devolver</button>
                    <button id="btn_ReservasOAnular" class="tablinks" runat="server">3) Prestar Reservas</button>
                </div>
                
                <fieldset class="Datos_Buscar" style="width: 900px; background-color: beige;" id="fs_lector" runat="server">
                    <table aria-label="Tabla1" style="width: 300px; vertical-align: top; display:inline-block; margin-top: 70px;">
                        <tr>
                            <th></th>
                        </tr>
                        <tr style="width: 400px;">
                            <td style="height: 26px; width: 87px; vertical-align: top">
                                <asp:Label ID="lbl_TOficina" runat="server" Text="* Elegir:" style="vertical-align:middle"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="cBox_BusquedaLector" runat="server" Width="150px" AutoPostBack="true">
                                    <asp:ListItem Value="0">Cód Empleado</asp:ListItem>
                                    <asp:ListItem Value="1">DNI</asp:ListItem>
                                    <asp:ListItem Value="2">Apellido o nombre</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; width: 87px;">
                                <asp:Label ID="Label13" runat="server" Text="* Digitar:" style="vertical-align:middle"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txt_valorLector" runat="server" Width="120px" Style="font-style:italic" placeholder="(Buscar por Cód de empleado)"></asp:TextBox>
                                <input id="btn_Limpiar_BusquedaLector" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" /><!--Limpia todo -->
                            </td>
                        </tr>
                    </table>

                    <table aria-label="Tabla1" style="display: inline-block" aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 174px">
                                <div class="btn-BuscarLector">
                                    <asp:Label ID="lbl_LectorNoSeEncontro" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="btn_BuscarLector" runat="server" Text="Buscar Lector" />
                                    <asp:Label ID="lbl_LectorSeEncontro" runat="server" Text=""></asp:Label>
                                    
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="display: flex;">
                                <div class="btn-HistorialPrestamo">
                                    <asp:Button ID="btn_HistorialLector" runat="server" Text="Historial de Préstamo Lector" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="lbl_ValidaContrato" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>

                    <table aria-label="Tabla1" style="display: inline-block" aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <td>
                            <legend class="Titulo_Cuadro" style="align-items:center;" >Foto Lector</legend>
                             <asp:Image ID="imgLector" Width="99px" Height="139px" ImageUrl="Imagenes/img_usuario.jpg" runat="server" />
                        </td> 
                    </table>

                        <fieldset id="Fieldset1" runat="server" >
                        <legend class="Titulo_Cuadro" style="width: 10%">Listado Lectores</legend>
                        <div style="border: 1px solid gray;">
                            <asp:GridView ID="grv_Lector" runat="server" AutoGenerateColumns="False"
                                EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                                BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="grv_Lector_OnRowDataBound"
                                OnPageIndexChanging="grv_Lector_PageIndexChanging" AllowPaging="true" PageSize="10">
                                <Columns>

                                    <asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />

                                    <asp:TemplateField HeaderText="N°">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_OrdME" runat="server" Text='<%# (grv_Lector.PageSize * grv_Lector.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                            </asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                

                                    <asp:TemplateField HeaderText="Código Empleado" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_codEmpleado" runat="server" Text='lbl_codEmpleado'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="DNI Empleado" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_DniEmpleado" runat="server" Text='lbl_DniEmpleado'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                    
                                        <ItemStyle Width="350px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Apellidos" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Apellidos" runat="server" Text='lbl_Apellidos'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Primer Nombre" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_PrimerNombre" runat="server" Text='lbl_PrimerNombre'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Segundo Nombre" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_SegundoNombre" runat="server" Text='lbl_SegundoNombre'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
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
                        </div>
                        <br />
                    </fieldset>
                </fieldset>

                <!--LIBROOO-->

                <!--VIEJO-->
                <fieldset class="Datos_Buscar" style="width: 900px; background-color: beige;" id="fs_libro" runat="server">      
                    <!--NUEVO-->
                    <table aria-label="Tabla1" style="width: 300px; vertical-align: top; display:inline-block; margin-top: 70px;">
                        <tr>
                            <th></th>
                        </tr>
                        <tr style="width: 400px;">
                            <td style="height: 26px; width: 183px; vertical-align: top">
                                <asp:Label ID="Label15" runat="server" Text="* Elegir:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="cbox_CodRegistroLibro" runat="server" Width="150px" style="margin-left: 0px" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="0">Cód Registro de libro</asp:ListItem>
                                    <asp:ListItem Value="1">Título</asp:ListItem>
                                    <asp:ListItem Value="2">Autor</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px; width: 183px;">
                                <asp:Label ID="Label16" runat="server" Text="* Digitar:"></asp:Label>
                            </td>
                            <td colspan="2" style="height: 26px">
                                <asp:TextBox ID="txt_ValorLibro" runat="server" Width="120px" Style="font-style:italic" placeholder="(Buscar por cód de registro)"></asp:TextBox>
                                <input id="btn_Limpiar_BusquedaLibro" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" /><!--Limpia todo -->
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 183px; padding-top:12px;">
                                <div class="btn-BuscarLector">     
                                    <asp:Button ID="btn_BuscarLibro" runat="server" Text="Buscar Libro" />
                                    <asp:Label ID="lbl_validaLibro" runat="server" Text=""></asp:Label>
                                </div>
                            </td>
                            <td>
                                <div class="btn-HistorialPrestamo">
                                    <asp:Button ID="btn_historialLibro" runat="server" Text="Historial de Préstamo Libro" />
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="4">
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>

                    <table aria-label="Tabla1" style="display: inline-block; margin-left: 100px">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td>
                                <legend class="Titulo_Cuadro" style="align-items: center;">Imagen Portada</legend>
                                <img runat="server" src="Imagenes/img_02libro.jpg" id="imgLibro" alt="Imagen Libro" border="0" width="150" height="170" />
                                <asp:Label Visible="false" ID="lbl_codClasif" runat="server"></asp:Label>
                            </td>
                            <td>
                                <img runat="server" id="imgDisponible" src="" width="60" height="80" alt="Imagen libro" style="margin-left: 100px;" onclick="return imgDisponible_onclick()" />
                            </td>
                        </tr>
                        
                    </table>
                        <fieldset id="fs_gvLibros" runat="server" style="" >
                        <legend class="Titulo_Cuadro" style="width: 9%">Listado Libros</legend>
                        <div style="border: 1px solid gray;">
                            <asp:GridView ID="grv_Libro" runat="server" AutoGenerateColumns="False"
                                EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                                BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="grv_Libro_OnRowDataBound"
                                OnPageIndexChanging="grv_Libro_PageIndexChanging" AllowPaging="true" PageSize="10">
                                <Columns>

                                    <asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />

                                    <asp:TemplateField HeaderText="N°">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_OrdME" runat="server" Text='<%# (grv_Libro.PageSize * grv_Libro.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                            </asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Cód Clasificación" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_CodClasificacion" runat="server" Text='lbl_CodClasificacion'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Código Registro" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_CodRegistro" runat="server" Text='lbl_CodRegistro'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Título" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Titulo" runat="server" Text='lbl_Titulo'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                    
                                        <ItemStyle Width="400px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Autor" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Autor" runat="server" Text='lbl_Autor'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Estado" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Estado" runat="server" Text='lbl_Estado'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
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
                        </div>
                        <br />
                    </fieldset>
                </fieldset>
                
                <!--3. Prestamos, dev, otros-->
                <div class="Datos_Buscar" style="width: 1000px; background-color: beige;">            
                <fieldset class="Datos_Personales" style="background-color: #c8e4f7; margin-bottom: 0px; padding-top: -100px; height: 273px; width: 190px; display: inline-block" id="fs_prestLibro" runat="server">
                    <legend hidden="hidden"></legend>    
                    <div style="display: inline-block;">
                            <asp:Label class="Titulo_Cuadro" ID="Label3" runat="server" Text="Libro"></asp:Label>
                        </div>
                        <div style="display: block;">
                            <img id="cph_Base_Image2" alt="libro" src="Imagenes/img_02libro.jpg" style="height: 30px; width: 25px; padding-left: 0px; padding-top: 0px;"/>
                        </div>
                        <div style="display: inline-block;">
                            <table aria-label="Tabla1" style="width: 190px; display: inline-table;">
                                <tr>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td style="width: 58px; height: 28px;">
                                        <asp:Label ID="Label8" runat="server" Text="Cód Registro:"></asp:Label>
                                    </td>
                                    <td style="width: 196px; height: 28px;">
                                        <asp:TextBox ID="txt_codRegistroLibro" runat="server" Width="130px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 90px">
                                        <asp:Label ID="Label9" runat="server" Text="Título:"></asp:Label>
                                    </td>
                                    <td style="width: 196px; height: 100px; padding-top: 30px;">

                                        <textarea runat="server" style="width: 130px; height: 85%;" id="txt_A_Librotitulo"></textarea>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>

                <!--LECTOR-->
                <fieldset class="Datos_Personales" style="background-color: #ffd1cc; margin-bottom:0px; margin-top: 10px; height:273px; width: 120px; display: inline-block" id="fs_prestLector" runat="server">               
                    <legend hidden="hidden"></legend>
                    <div style="display:inline-block; height:10px">
                        <asp:Label class="Titulo_Cuadro" Id="Label17" runat="server" text="Lector"></asp:Label>
                    </div>
                    <div style="display:block;">
                        <img id="" alt="usuario" src="Imagenes/img_usuario.jpg" style="height:30px;width:25px;padding-left:0px; padding-top: 0px; display: block"/>
                    </div>
                    
                    <div style="display:inline-block;">
                        <table aria-label="Tabla1" style="width: 190px; display: inline-table;">
                            <tr>
                                <th></th>
                            </tr>
                            <tr>
                                <td style="width: 58px">
                                    <asp:Label ID="lbl_codRegistro" runat="server" Text="Cód Empleado / DNI:"></asp:Label>
                                </td>
                                <td style="width: 196px">
                                    <asp:TextBox ID="txt_codEmpleado" runat="server" Width="130px"></asp:TextBox>         
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 90px">
                                    <asp:Label ID="Label7" runat="server" Text="Nombre:"></asp:Label>
                                </td>
                                <td style="width: 196px; height: 100px; padding-top: 20px;">
                                    <textarea runat="server" style="width: 130px; height: 85%" id="txt_A_NombreEmpleado"></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>    
                </fieldset>

                    <!--PRESTAMO-->
                    <fieldset class="Datos_Personales" style="background-color: #e6fcf2; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; height: 273px; width: 200px; display: inline-block" id="fs_prestamo" runat="server">
                        <legend hidden="hidden"></legend>
                        <div style="display: inline-block;">
                            <asp:Label class="Titulo_Cuadro" ID="lbl_TituloPrestamo" runat="server" Text="Nuevo Préstamo"></asp:Label>
                        </div>
                        <div style="display: block;">
                            <img id="cph_Base_Image3" alt="prestamo" src="Imagenes/img_03prestamo.jpg" style="height: 30px; width: 25px; padding-left: 0px"/>
                        </div>
                        <div style="display: inline-block;">
                            <table aria-label="Tabla1" style="width: 271px; display: inline-table;">
                                <tr>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td style="width: 600px">
                                        <asp:Label ID="lblCodPrestamo" runat="server" Text="*Código de Préstamo:"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txt_CodPrestamo2" runat="server" Width="137px" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 448px; vertical-align: center;">
                                        <asp:Label ID="Label10" runat="server" Text="* Fecha Préstamo:  "></asp:Label>
                                        <asp:Label Visible="false" ID="lbl_horaPrestamo" runat="server"></asp:Label>
                                    </td>
                                    <td style="width: 100px; vertical-align: top;">
                                        <asp:Label ID="lbl_IdPrestamo" runat="server" Visible="False"></asp:Label>
                                        <asp:TextBox ID="txt_FechaPrestamo" runat="server" Width="136px" onkeyup="txt_FechaDesde(event);" CssClass="datepicker"></asp:TextBox>
                                        <asp:Button ID="Button4" runat="server" Text="..." Visible="false" />
                                        <asp:Calendar ID="Calendar1" runat="server" Visible="false"></asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 448px; vertical-align: center;">
                                        <asp:Label ID="Label12" runat="server" Text="* Fecha Devolución:  "></asp:Label>
                                    </td>
                                    <td style="width: 200px; vertical-align: top;">
                                        <asp:Button ID="btnMas8" CssClass="btnMasOchodias" runat="server" Text="+8 días" Visible="True" />
                                        <asp:TextBox ID="txt_FechaDevolucion" runat="server" Width="82px" onkeyup="txt_FechaDesde(event);" CssClass="datepicker" AutoPostBack="true"></asp:TextBox>
                                        <asp:Button ID="Button5" runat="server" Text="..." Visible="false" />
                                        <asp:Calendar ID="Calendar2" runat="server" Visible="false"></asp:Calendar>
                                        <asp:Label ID="lblNomDia" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 448px; vertical-align: top;">
                                        <asp:Label ID="lbl_fechaReserva" runat="server" Text="* Fecha Reserva:  "></asp:Label>
                                    </td>
                                    <td style="width: 100px; vertical-align: top;">
                                        <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
                                        <asp:TextBox ID="txt_FechaReserva" runat="server" Width="74px" onkeyup="txt_FechaDesde(event);" CssClass="datepicker"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" Text="..." Visible="false" />
                                        <asp:Calendar ID="Calendar3" runat="server" Visible="false"></asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 448px">
                                        <asp:Label ID="Label11" runat="server" Text="* Estado:"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="cbox_EstadoPrestamo" runat="server" Width="140px" AutoPostBack="true">
                                            <asp:ListItem Value="-1" Selected="True">--Elegir--</asp:ListItem>
                                            <asp:ListItem Value="1">1-PRESTAR</asp:ListItem>
                                            <asp:ListItem Value="4">2-DEVOLVER</asp:ListItem>
                                            <asp:ListItem Value="0">3-RESERVAR</asp:ListItem>
                                            <asp:ListItem Value="5">4-ANULAR</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 448px;">
                                        <asp:CheckBox ID="chk_PProvincia" runat="server" Text="Préstamo en provincia" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl_FechaAnulacion" runat="server" Text="fecha" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 448px">
                                        <asp:CheckBox ID="chk_PEspecial" runat="server" Text="Préstamo especial" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>

                    <div id="Content_Fotos" style="margin-bottom: 20px; display: inline-flex; width: 210px">
                <fieldset class="Datos_Buscar" id="fs_buscar" runat="server" style="width: 150px;">
                    <legend class="Titulo_Cuadro">BUSCAR POR:</legend>
                    
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="cboxBusqueda" runat="server" Width="120px" BackColor="#FFFF9E" Height="25px" AutoPostBack="true">
                                    <asp:ListItem Value ="0">Cod. Empleado</asp:ListItem>
                                    <asp:ListItem  Value ="2">Apellido o nombre</asp:ListItem>
                                    <asp:ListItem  Value ="3">Cod Registro de Libro</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 73px">
                                <asp:TextBox ID="txt_ValorPrestamo" runat="server" Width="150px" Style="font-style:italic" placeholder="(Buscar por Cód de empleado)" BackColor="#FFFF9E" Height="25px"></asp:TextBox>
                                <asp:Label ID="lbl_Busqueda" runat="server" Text="" Visible="false"></asp:Label>
                                <input id="Button7" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" />  <!--Limpia todo -->
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btn_BuscarPrestamo" CssClass="btnBuscar" runat="server" Text="Buscar" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                    </table>

                    <div class="Datos_Botones"  style="margin-bottom: 13px; width: 180px;">
                                        <div class="btn-group">
                                            <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                                            <asp:Button ID="btnGrabar2" runat="server" Text="Grabar.." />
                                            <asp:Button ID="btnCancelar2" runat="server" Text="Cancelar" />
                                            <asp:Button ID="btnVerFicha2" runat="server" Text="Ver ficha" />
                                            <asp:Label ID="lbl_Valida" runat="server" Text=""></asp:Label>
                                        </div>                 
                    </div>
                    <div class="Datos_Botones" style="padding:10px; width: 161px;">
                        <div>
                            <asp:Label ID="Label24" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">-Las 'reservas' se hacen solo por el módulo WEB de consultas (Verde)</asp:Label><br />
                            <asp:Label ID="Label25" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">-Un libro ya devuelto, no puede modificarse sus datos</asp:Label>
                        </div>
                    </div>             
                    </fieldset>

                    <!--BUSCAR-->
                    <fieldset class="Datos_Buscar" id="fs_botones" runat="server" style="width: 150px;">
                    <legend hidden="hidden"></legend>
                    <div class="Datos_Botones"  style="margin-bottom: 13px; width: 180px;">
                                        <div class="btn-group">
                                            <asp:Button ID="btnGrabar" runat="server" Text="Grabar." />
                                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                                            <asp:Button ID="btnVerFicha" runat="server" Text="Ver ficha" />
                                            <asp:Label ID="lbl_validaNuevoPrest" runat="server" Text="" Style="margin:10px;" ></asp:Label>
                                        </div>
                                        
                    </div>

                    <div class="Datos_Botones" style="padding:10px; width: 161px;">
                        <div>
                            <asp:Label ID="Label1" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">-Las 'reservas' se hacen solo por el modulo WEB de consultas (Verde)</asp:Label><br />
                            <asp:Label ID="Label4" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">-Un libro ya devuelto, no puede modificarse en sus datos</asp:Label>
                        </div>
                    </div>           
                    </fieldset>
                    </div>

                    <!--GRID VIEW-->
                    <fieldset class="Datos_Buscar" style="width: 770px; background-color: beige; border: none;" id="fs_gvPrestamos" runat="server">
                    <fieldset id="Fieldset4" runat="server" >
                        <legend class="Titulo_Cuadro" style="width: 18%">Listado de movimientos</legend>
                        <div style="border: 1px solid gray;">
                            <asp:GridView ID="grv_Prestamo" runat="server" AutoGenerateColumns="False"
                                EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                                BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="grv_Prestamo_OnRowDataBound"
                                OnPageIndexChanging="grv_Prestamo_PageIndexChanging" AllowPaging="true" PageSize="5">
                                <Columns>

                                    <asp:CommandField HeaderText="Ver" HeaderStyle-BackColor="Black" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image">
                                        <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:CommandField>

                                    <asp:TemplateField HeaderText="N°" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_OrdME" runat="server" Text='<%# (grv_Prestamo.PageSize * grv_Prestamo.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                            </asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                
                                    <asp:TemplateField HeaderText="Cód Clasificación" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_CodClasificacion" runat="server" Text='lbl_CodClasificacion'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#c8e4f7" ForeColor="BLACK"/>
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Cód Registro Libro" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_CodRegistroLibro" runat="server" Text='lbl_CodRegistroLibro'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#c8e4f7" ForeColor="BLACK"/>
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Título" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_TituloLibro" runat="server" Text='lbl_TituloLibro'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#c8e4f7" ForeColor="BLACK"/>
                                        <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Código Empleado" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_codEmpleado" runat="server" Text='lbl_codEmpleado'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#ffd1cc" ForeColor="BLACK"/>
                                        <ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Nombre" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_nombreEmpleado" runat="server" Text='lbl_nombreEmpleado'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#ffd1cc" ForeColor="BLACK"/>
                                    
                                        <ItemStyle Width="150px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    


                                    <asp:TemplateField HeaderText="Cod Préstamo" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_CodPrestamo" runat="server" Text='lbl_CodPrestamo'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#e6fcf2" ForeColor="BLACK" />
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Fecha préstamo" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_FechaPrestamo" runat="server" Text='lbl_FechaPrestamo'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#e6fcf2" ForeColor="BLACK"/>
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fecha Devolución" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_FechaDevolucion" runat="server" Text='lbl_FechaDevolucion'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#e6fcf2" ForeColor="BLACK" />
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fecha Reserva" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_FechaReserva" runat="server" Text='lbl_FechaReserva'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#e6fcf2" ForeColor="BLACK" />
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Estado" HeaderStyle-Font-Bold="true" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Estado" runat="server" Text='lbl_Estado'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#e6fcf2" ForeColor="BLACK"/>
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Estado_N" HeaderStyle-Font-Bold="true">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_EstadoN" runat="server" Text='lbl_EstadoN'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" BackColor="#e6fcf2" ForeColor="BLACK"/>
                                        <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
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
                        </div>
                        <br />
                    </fieldset>
                </fieldset>

                </div>

            
            <!--AQUIII-->
                <fieldset class="Datos_Buscar" style="width: 900px; background-color: beige;" id="fs_seleccionados" runat="server">
                    <legend hidden="hidden"></legend>
                    <table aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="height: 26px; width: 181px; text-align:start">
                                <asp:Label ID="Label5" runat="server" Text="* Apellidos y nombres seleccionados:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <textarea runat="server" style="height: 70%; width: 220px" id="txt_A_apeYNombres"></textarea> 
                            </td>
                            <td style="height: 26px; width: 150px; padding-left: 100px; padding-right: -70px;">
                                <asp:Label ID="Label6" runat="server" Text="* Título Libro seleccionado:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <textarea runat="server" style="height: 70%; width: 200px" id="txt_A_tituloLibro"></textarea> 
                            </td>
                        </tr>                   
                    </table>  
                </fieldset>

            </div>
        </div>
    </div>

    <asp:Panel ID="pnl_Visor" runat="server" Style="margin-left: auto; margin-right: auto" Height="137px">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="rv_General" runat="server" Height="68px"></rsweb:ReportViewer>

        <br />
    </asp:Panel>
    </span>
</asp:Content>
