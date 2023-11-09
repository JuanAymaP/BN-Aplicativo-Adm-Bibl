<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_Configuracion.aspx.vb" Inherits="Biblioteca_Mant.frm_Configuracion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cph_Base" runat="server">


    <!---JAVASCRIPT Y ESTILOS PROPIOS USANDO LIBRERIA JQUERY UI-->
    <link href="Scripts/UI_Datepicker/jquery-ui-1-10-1.css" rel="stylesheet" />
    <script src="Scripts/UI_Datepicker/jquery-ui-1-10-1.js"></script>
    <script src="Scripts/UI_Datepicker/jquery.ui.datepicker-es.js"></script>


    <div style="display: flex; flex-wrap: wrap;">
        <div id="Content_General">
            <h1 style="color: green; font-size: 17px">
                <%--<img src="Imagenes/ico_mantenim.jpg" class="Ico" />--%>
                <asp:Label ID="lbl_Titulo" runat="server" Text="PÁRRAFO DE TEXTO PARA BUSCADOR DE LIBROS WEB" Style="color: green; font-size: 17px" Font-Bold="true"></asp:Label>
            </h1>

            <!--Seccion de campos de texto-->
            <div id="Content_Datos">
                <fieldset class="Datos_Personales" style="margin-bottom:20px; width: 663px;">
                    <legend class="Titulo_Cuadro" style="width: 10%">PÁRRAFO</legend>
                    <table style="width: 656px" aria-label="Tabla1">
                        <tr>
                            <th></th>
                        </tr>
                        <tr>
                            <td style="width: 80px">
                                <asp:Label ID="lbl_fechaCompra" runat="server" Text="Nombre del párrafo:"></asp:Label>
                            </td>
                            <td style="width: 196px">
                                <asp:TextBox ID="txtParrafo" runat="server" TextMode="MultiLine" Width="500" Height="60"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset> 
                <asp:Label ID="Label1" runat="server" Text="*Para modificar seleccione la flecha de la grilla"></asp:Label>
            </div>

            <!--SECCION BUSQUEDA-->
            <div id="Content_Fotos" style="margin-bottom: 20px;">
                
                <br />
                <div class="Datos_Botones"  style="margin-bottom: 13px;">
                    <div class="btn-group">
                        <tr>
                            <asp:Label ID="lbl_Valida" runat="server" Text=""></asp:Label><!--Muestra mensajes-->
                        </tr>
                        <tr>
                            <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                            <asp:Button ID="btnGrabar" runat="server" Text="Grabar." />                        
                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                        </tr>
                        
                        

                    </div>
                    
                </div>
                
            </div>
        </div>
    </div>



    <asp:Label ID="lblIdHCC" runat="server" Visible="False"></asp:Label>




    <asp:Label ID="lblMsjMantLibro" runat="server"></asp:Label>
    <!--GRIDVIEW-->
    <div style="margin-top: 20px;">
    
    <fieldset id="Content_Gridview" runat="server" >
                    <legend class="Titulo_Cuadro" style="width: 6%">REGISTRO</legend>
                    <div style="border: 1px solid gray;">
                        <asp:GridView ID="grv_parrafo" runat="server" AutoGenerateColumns="False"
                            EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                            BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="grv_parrafo_OnRowDataBound"
                            OnPageIndexChanging="grv_parrafo_PageIndexChanging" AllowPaging="true" PageSize="10">
                            <Columns>
                                
                                
                               
                                <asp:TemplateField HeaderText="Id" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Id" runat="server" Text='lbl_Id'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="50px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Nombre del Párrafo" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_parrafo" runat="server" Text='lbl_parrafo'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="900px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>
                         
                                <asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />

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
                </fieldset><br />

                
                

        </div>




</asp:Content>
