﻿<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_mantenimientoLibro.aspx.vb" Inherits="Biblioteca_Mant.frm_mantenimientoLibro" %>

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
                <%--<img src="Imagenes/ico_mantenim.jpg" class="Ico" />--%>
                <asp:Label ID="lbl_Titulo" runat="server" Text="REGISTRO DE LIBROS" Style="color: green; font-size: 17px" Font-Bold="true"></asp:Label>
            </h1>

            <!--Seccion de campos de texto-->
            <div id="Content_Datos">
                
                <fieldset class="Datos_Personales" style="margin-bottom:20px; width: 663px;">
                    <legend class="Titulo_Cuadro" style="width: 6%">DATOS</legend>
                    <table style="width: 656px;">
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
                        <%--<td style="width: 86px">
                            <asp:Label ID="Label2" runat="server" Text="Lugar:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_lugar" runat="server" Width="93px"></asp:TextBox>
                        </td>--%>
                    </tr>
                    <tr>
                        <td style="width: 82px">
                            <asp:Label ID="lbl_TituloLibro" runat="server" Text="TÍtulo:"></asp:Label>
                        </td>
                        <%--<td style="width: 130px">
                            <asp:TextBox ID="txt_TituloLibro" runat="server" Width="93px"></asp:TextBox>
                        </td>--%>
                        <td colspan="4" align="left"> 
                            <textarea runat="server" style="width:98%; " id="txt_TituloLibro"></textarea> 
                        </td>
                        <%--<td style="width: 86px">
                            <asp:Label ID="Label2" runat="server" Text="Lugar:"></asp:Label>
                        </td>
                        <td style="width: 128px">
                            <asp:TextBox ID="txt_lugar" runat="server" Width="93px"></asp:TextBox>
                        </td>--%>
                        <%--<td style="width: 54px">
                            <asp:Label ID="Label3" runat="server" Text="Autor:"></asp:Label>
                        </td>
                        <td style="width: 123px">
                            <asp:TextBox ID="txt_autor" runat="server" Width="93px"></asp:TextBox>
                        </td>--%>
                    </tr>
                    <tr>
                        <%--<td style="width: 86px">
                            <asp:Label ID="Label2" runat="server" Text="Lugar:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_lugar" runat="server" Width="93px"></asp:TextBox>
                        </td>--%>

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
                                <asp:Label ID="Label12" runat="server" Text="" CssClass="resaltado" Style></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
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
                        <td style=" height: 28px; width: 82px;">
                            <asp:Label ID="lbl_Editorial" runat="server" Text="Editorial:"></asp:Label>
                        </td>
                        <td style=" height: 28px; width: 130px;">
                            <asp:TextBox ID="txt_Editorial" runat="server" Width="93px"></asp:TextBox>
                        </td>
                        <td style=" height: 28px; width: 86px;">
                            <asp:Label ID="Label4" runat="server" Text="N° Edición:"></asp:Label>
                        </td>
                        <td style=" height: 28px; width: 128px;">
                            <asp:TextBox ID="txt_numEdicion" runat="server" Width="93px"></asp:TextBox>
                        </td>
                        <td style=" height: 28px; width: 81px;">
                            <asp:Label ID="Label5" runat="server" Text="Año de Edición:"></asp:Label>
                        </td>
                        <td style=" height: 28px; ">
                            <asp:TextBox ID="txt_anioEdic" runat="server" Width="93px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 82px">
                            <asp:Label ID="lbl_proveedor" runat="server" Text="Proveedor:"></asp:Label>
                        </td>
                        <%--<td style="width: 130px">
                            <asp:TextBox ID="txt_proveedor" runat="server" Width="93px"></asp:TextBox>
                        </td>--%>
                        <td colspan="3" align="left"> 
                            <textarea runat="server" style="width:92%; " id="txt_proveedor"></textarea> 
                        </td>
                        <td style="width: 86px">
                            <asp:Label ID="Label6" runat="server" Text="N° Páginas:"></asp:Label>
                        </td>
                        <td style="width: 128px">
                            <asp:TextBox ID="txt_numPaginas" runat="server" MaxLength ="5" Width="93px"></asp:TextBox>
                        </td>
                        <%--<td style="width: 81px">
                            <asp:Label ID="Label7" runat="server" Text="N° Ejemplares:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_numEjemplares" runat="server" MaxLength ="3" Width="93px"></asp:TextBox>
                        </td>--%>
                    </tr>
                    <tr>
                        <td style="width: 82px">
                            <asp:Label ID="lbl_LibroPrecioDolares" runat="server" Text="Precio (DOL):"></asp:Label>
                        </td>
                        <td style="width: 130px">
                            <asp:TextBox ID="txt_LibroprecioDolares" runat="server" MaxLength ="5" Width="93px"></asp:TextBox>
                        </td>
                        <td style="width: 86px">
                            <asp:Label ID="Label8" runat="server" Text="Precio (SOL):"></asp:Label>
                        </td>
                        <td style="width: 128px">
                            <asp:TextBox ID="txt_LibroPrecioSoles" runat="server" MaxLength ="5" Width="93px"></asp:TextBox>
                        </td>
                        <td style="width: 81px">
                            <asp:Label ID="Label7" runat="server" Text="N° Ejemplares:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_numEjemplares" runat="server" MaxLength ="3" Width="93px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 82px">Materias:</td>
                        <td colspan="3" align="left"> 
                            <textarea runat="server" style="width:93%;" id="txt_materias"></textarea> 
                        <br />
                        <font style="font-size:10px;">Hacer espacios después de cada materia</font>
                        </td>
                        <td style="width: 103px">
                            <asp:CheckBox ID="ckhLibro_CD" runat="server" Text="Incluye CD" />
                        </td>
                    

                    </tr>
                    <tr>
                        <td align="left" style="height: 55px; width: 82px;">Detalle:</td>
                        <td colspan="3" align="left" style="height: 55px">
                        <textarea runat="Server" style="width: 93%" id="txt_Detalles"></textarea></td>


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
                                <asp:Label ID="Label11" runat="server" Text="" CssClass="resaltado" Style></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
                                <span class="tiptext_Ayuda_Corto">*ESPAÑOL<br />
                                    *INGLES<br />
                                    *ITALIANO<br />
                                    *CHINO<br />
                                    *PORTUGUES<br />
                                    *OTROS<br />
                                </span>
                            </div>
                        </td>


                       <%--<br />
                        Contador caracteres(max 500)</td>--%>
                    </tr>
                    </table>
                    <table style="width:656px">
                    <tr>
                        <td align="left" class="style2" style="width: 68px">N° ISBN:</td>
                        <td style="width: 169px"><asp:TextBox ID="txt_ISBN" runat="server"></asp:TextBox></td>
                        <td colspan="1" align="left" class="style2" style="padding-right:-30px; width: 120px;">Mes-Año que se compró el libro (&#39;MM/AAAA'): 
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt_MesAnioCompraLibro" runat="server" MaxLength="7" Width="91px"></asp:TextBox>
                            <%--<asp:Button ID="Button1" runat="server" Text="Ver índice" Width="70"
                                style="height: 26px" />--%>
                        </td>
                    </tr>
                    <tr>
                        <%--<td align="left" class="style3" style="width: 58px">
                            <%--<asp:DropDownList ID="cboxLibro_Modo" runat="server">
                                <asp:ListItem >Todos</asp:ListItem>
                                <asp:ListItem>01 - FISICO</asp:ListItem>
                                <asp:ListItem>01 - VIRTUAL</asp:ListItem>
                            </asp:DropDownList> (*)--%>
                        <%--</td>--%>
                        <%--<td align="left" class="style3"> Idioma:
                            <asp:DropDownList ID="cboxLibro_Idioma" runat="server">
                            <asp:ListItem Value="ELEGIR">ELEGIR</asp:ListItem>
                            <asp:ListItem>ESPAÑOL</asp:ListItem>
                            <asp:ListItem>INGLES</asp:ListItem>
                            <asp:ListItem>ITALIANO</asp:ListItem>
                            <asp:ListItem>CHINO</asp:ListItem>
                            <asp:ListItem>PORTUGUES</asp:ListItem>
                            <asp:ListItem>(OTROS)</asp:ListItem>
                            </asp:DropDownList>
                        </td>--%>
                        <%--<td>
                            <asp:Panel runat="server" ID="pnTipoLibro" Width="75">
                                <fieldset style="width:70px;">
                                    <ul style="list-style:none;margin:0 0 0 0;">
                                        <li><asp:RadioButton ID="rdbFisico" runat="server" Text="Físico" GroupName="FisicoVirtual" AutoPostBack="true"/></li>
                                        <li><asp:RadioButton ID="rdbVirtual" runat="server" Text="Virtual" GroupName="FisicoVirtual" AutoPostBack="true"/></li>
                                    </ul>
                                </fieldset>
                            </asp:Panel>
                        </td>--%>
                        <%--<td class="style4" align="left">  
                            <%--<asp:DropDownList ID="cboxLibro_Estado" runat="server">
                                <asp:ListItem>ELEGIR</asp:ListItem>
                                <asp:ListItem>V</asp:ListItem>
                                <asp:ListItem>X</asp:ListItem>
                                <asp:ListItem>E</asp:ListItem>
                            </asp:DropDownList>--%>
                            <%--<br />
                            Tipo:&nbsp;&nbsp;&nbsp;&nbsp;--%> 
                            <%--<asp:DropDownList ID="cboxTipo" runat="server">
                                <asp:ListItem>00 - ELEGIR</asp:ListItem>
                                <asp:ListItem>01 - C</asp:ListItem>
                                <asp:ListItem>02 - L</asp:ListItem>
                                <asp:ListItem>03 - S</asp:ListItem>
                                <asp:ListItem>04 - D</asp:ListItem>
                            
                            </asp:DropDownList>--%>
                            <%--<br />
                            <asp:Label ID="Label9" runat="server" Font-Size="X-Small" Text="C=compra, L=colección, S=suscripción, D=donación" BackColor="Yellow"></asp:Label>--%>
                        <%--</td>--%>
                    </tr>
                    
                        <!--FILA de TIPO-->
                    <tr>
                        <td d="td_Tipo" style="height: 26px; width: 68px;" runat="server">
                            <asp:Label ID="lbl_tipo" runat="server" Text="Tipo:"></asp:Label>
                        </td>
                        <td style="height: 26px; width: 169px;">

                            <div style="display:inline-flex">
                                <asp:DropDownList ID="cboxTipo" runat="server">
                                    <asp:ListItem Value="00">00 - ELEGIR</asp:ListItem>
                                    <asp:ListItem Value="01">COMPRA</asp:ListItem>
                                    <asp:ListItem Value="02">COLECCIÓN</asp:ListItem>
                                    <asp:ListItem Value="03">SUSCRIPCIÓN</asp:ListItem>
                                    <asp:ListItem Value="04">DONACIÓN</asp:ListItem>
                                </asp:DropDownList>
                                <div class="tooltip_Ayuda_Corto left" style="margin-left:10px">
                                    <asp:Label ID="Label9" runat="server" Text="" CssClass="resaltado" Style></asp:Label>
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
                                    <span class="tiptext_Ayuda_Corto">Nemónicos<br />*C = Compra<br />
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

                        <%--<td style="height: 26px; width: 306px">
                            <asp:Label ID="Label13" runat="server" Font-Size="X-Small" Text="C=compra, L=colección, S=suscripción, D=donación" BackColor="Yellow"></asp:Label>
                        </td>--%>
                        <td style="height: 26px; width: 103px;">
                            <%--<div class="tooltip_Ayuda_Corto left">
                                <asp:Label ID="Label9" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
                                <span class="tiptext_Ayuda_Corto">*C = Compra<br />*L = Colección<br />*S = Suscripción<br />*D = Donación
                                </span>
                             </div>--%>
                            <%--<asp:Label ID="Label9" runat="server" Font-Size="X-Small" Text="DISP=Disponible, PRES=Prestado, RESE=Reservado, CSAL=ConsultaEnSala, DESU=Desuso, NODI=NoDisponible" BackColor="Yellow"></asp:Label>--%>
                        </td>
                    </tr>
                    <!--FILA de MODO-->
                    <tr>
                        <td id="td_Modo" style="height: 26px; width: 68px;" runat="server">
                            <asp:Label ID="lbl_Modo" runat="server" Text="Modo:"></asp:Label>
                        </td>
                        <td style="height: 26px; width: 169px;">
                            <asp:DropDownList ID="cboxLibro_Modo" width="118px" runat="server">
                                <asp:ListItem Value ="01">01 - FISICO</asp:ListItem>
                            </asp:DropDownList>
                            <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                <asp:Label ID="Label10" runat="server" Text="" CssClass="resaltado" Style></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
                                <span class="tiptext_Ayuda_Corto">*01 - FISICO<br />
                                    *02 - VIRTUAL
                                </span>
                            </div>
                        </td>

                        <td id="td_Estado" style="height: 26px; width: 68px;" runat="server">
                            <asp:Label ID="lbl_Estado" runat="server" Text="Estado:"></asp:Label>
                        </td>
                        <td style="height: 26px; width: 140px;">

                            <div style="display:inline-flex">
                                <asp:DropDownList ID="cboxLibro_Estado" runat="server" Width="100px">
                                    <asp:ListItem Value="-1">--Elegir--</asp:ListItem>
                                    <asp:ListItem Value="4">DISPONIBLE</asp:ListItem>
                                    <asp:ListItem Value="1">PRESTADO</asp:ListItem>
                                    <asp:ListItem Value="0">RESERVADO</asp:ListItem>
                                    <asp:ListItem Value="6">CONSULTA EN SALA</asp:ListItem>
                                    <asp:ListItem Value="3">DESUSO</asp:ListItem>
                                    <asp:ListItem Value="7">NO DISPONIBLE</asp:ListItem>
                                </asp:DropDownList>
                                <div class="tooltip_Ayuda_Corto left" style="margin-left:10px">
                                    <asp:Label ID="lbl_TD" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
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

                        <!--Debajo estaban los radioButtons-->
                        <%--<td>
                            <asp:Panel runat="server" ID="pnTipoLibro" Width="75">
                                <fieldset style="width:70px;">
                                    <ul style="list-style:none;margin:0 0 0 0;">
                                        <li><asp:RadioButton ID="rdbFisico" runat="server" Text="Físico" GroupName="FisicoVirtual" AutoPostBack="true"/></li>
                                        <li><asp:RadioButton ID="rdbVirtual" runat="server" Text="Virtual" GroupName="FisicoVirtual" AutoPostBack="true"/></li>
                                    </ul>
                                </fieldset>
                            </asp:Panel>
                        </td>--%>
                    </tr>

                


                    <!--FILA de ESTADO-->
                    <tr>
                        <%--<td id="td_Estado" style="height: 26px; width: 68px;" runat="server">
                            <asp:Label ID="lbl_Estado" runat="server" Text="Estado:"></asp:Label>
                        </td>
                        <td style="height: 26px; width: 169px;">

                            <div style="display:inline-flex">
                                <asp:DropDownList ID="cboxLibro_Estado" runat="server">
                                    <asp:ListItem Value="0">--Elegir--</asp:ListItem>
                                    <asp:ListItem Value="DISP">DISPONIBLE</asp:ListItem>
                                    <asp:ListItem Value="PRES">PRESTADO</asp:ListItem>
                                    <asp:ListItem Value="RESE">RESERVADO</asp:ListItem>
                                    <asp:ListItem Value="CSAL">CONSULTA EN SALA</asp:ListItem>
                                    <asp:ListItem Value="DESU">DESUSO</asp:ListItem>
                                    <asp:ListItem Value="NODI">NO DISPONIBLE</asp:ListItem>
                                </asp:DropDownList>
                                <div class="tooltip_Ayuda_Corto left" style="margin-left:10px">
                                    <asp:Label ID="lbl_TD" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                    <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
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

                            
                        </td>--%>
                        <td style="height: 26px; width: 47px">
                            <%--<div class="tooltip_Ayuda_Corto left">
                                <asp:Label ID="lbl_TD" runat="server" Text="" CssClass="resaltado"></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
                                <span class="tiptext_Ayuda_Corto">*DISP = Disponible<br />*PRES = Prestado<br />*RESE = Reservado
                                                                    <br />*CSAL = Consulta en sala<br />*DESU = Desuso<br />*NODI = No disponible
                                </span>
                             </div>--%>
                            <%--<asp:Label ID="Label9" runat="server" Font-Size="X-Small" Text="DISP=Disponible, PRES=Prestado, RESE=Reservado, CSAL=ConsultaEnSala, DESU=Desuso, NODI=NoDisponible" BackColor="Yellow"></asp:Label>--%>
                        </td>
                    </tr>
                    <!--FILA de IDIOMA-->
                    <tr>
                        <%--<td id="td_Idioma" style="height: 26px; width: 78px;" runat="server">
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
                                <asp:Label ID="Label11" runat="server" Text="" CssClass="resaltado" Style></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
                                <span class="tiptext_Ayuda_Corto">*ESPAÑOL<br />
                                    *INGLES<br />
                                    *ITALIANO<br />
                                    *CHINO<br />
                                    *PORTUGUES<br />
                                    *OTROS<br />
                                </span>
                            </div>
                        </td>--%>
                    </tr>
                    <!--FILA de CATEGORIA-->
                    <tr>
                        <%--<td id="td_Categoria" style="height: 26px; width: 68px;" runat="server">
                                <asp:Label ID="lbl_Categoria" runat="server" Text="Categoría:"></asp:Label>
                        </td>
                        <td style="height: 26px; width: 169px;">
                            <asp:DropDownList ID="cboxLibro_Categoria" runat="server" Width="120px">
                                <asp:ListItem Value="00">00 - ELEGIR </asp:ListItem>
                                <asp:ListItem Value="01 - LIBRO">01 - LIBRO</asp:ListItem>
                                <asp:ListItem Value="02 - REVISTA">02 - REVISTA</asp:ListItem>
                                <asp:ListItem Value="03 - FOLLETO">03 - FOLLETO</asp:ListItem>
                                <asp:ListItem Value="04 - MEMORIA">04 - MEMORIA</asp:ListItem>
                                <asp:ListItem Value="05 - TESIS">05 - TESIS</asp:ListItem>
                                <asp:ListItem Value="06 - PERIODICO">06 - PERIODICO</asp:ListItem>
                                <asp:ListItem Value="07 - FOTOS">07 - FOTOS</asp:ListItem>
                                <asp:ListItem Value="08 - VIDEO">08 - VIDEO</asp:ListItem>
                                <asp:ListItem Value="09 - COLECCION ESPECIAL">09 - COLECCION ESPECIAL</asp:ListItem>
                                <asp:ListItem Value="10 - NORMAS LEGALES">10 - NORMAS LEGALES</asp:ListItem>
                                <asp:ListItem Value="20 - ELECTRONICO">20 - ELECTRONICO</asp:ListItem>
                                <asp:ListItem Value="99 - OTROS">99 - OTROS</asp:ListItem>
                            </asp:DropDownList>
                            <div class="tooltip_Ayuda_Corto left" style="margin-left: 10px">
                                <asp:Label ID="Label12" runat="server" Text="" CssClass="resaltado" Style></asp:Label>
                                <img src="Imagenes/img_interr.jpg" class="icono_Ayuda" />
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
                        </td>--%>
                        <%--<td style="width: 103px">
                            <asp:CheckBox ID="ckhLibro_CD" runat="server" Text="Incluye CD" />
                        </td>--%>
                        <%--<td align="right">Categoría:</td>--%>
                        <%--<td colspan="2">
                            <asp:DropDownList ID="cboxLibro_Categoria" runat="server" Width="120px">
                                <asp:ListItem>00 - ELEGIR </asp:ListItem>
                                <asp:ListItem>01 - LIBRO</asp:ListItem>
                                <asp:ListItem>02 - REVISTA</asp:ListItem>
                                <asp:ListItem>03 - FOLLETO</asp:ListItem>
                                <asp:ListItem>04 - MEMORIA</asp:ListItem>
                                <asp:ListItem>05 - TESIS</asp:ListItem>
                                <asp:ListItem>06 - PERIODICO</asp:ListItem>
                                <asp:ListItem>07 - FOTOS</asp:ListItem>
                                <asp:ListItem>08 - VIDEO</asp:ListItem>
                                <asp:ListItem>09 - COLECCION ESPECIAL</asp:ListItem>
                                <asp:ListItem>10 - NORMAS LEGALES</asp:ListItem>
                                <asp:ListItem>20 - ELECTRONICO</asp:ListItem>
                                <asp:ListItem>99 - OTROS</asp:ListItem>
                            </asp:DropDownList>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Incluye CD" />
                        </td>--%>
                    </tr>
                </table>
                </fieldset> 
            </div>

            <!--Busqueda NUEVOOOO-->
            <div id="Content_Fotos" style="margin-bottom: 20px;">
                <fieldset class="Datos_Buscar">
                    <legend class="Titulo_Cuadro">BÚSQUEDA POR:</legend>
                    <div id="errorDiv"></div>
                    <table>
                        <tr>
                            <td>
                                <%--<asp:DropDownList ID="cboxBusqueda" runat="server" Width="180px" AutoPostBack="true" BackColor="#FFFF9E" Height="25px">
                                    <asp:ListItem>Todos --OLD</asp:ListItem>
                                    <asp:ListItem>Cod. Registro (Numerico)</asp:ListItem>
                                    <asp:ListItem>Cod. Clasificacion</asp:ListItem>
                                    <asp:ListItem>Materia</asp:ListItem>
                                    <asp:ListItem>Titulo</asp:ListItem>
                                    <asp:ListItem>Autor</asp:ListItem>
                                </asp:DropDownList>--%>
                                <%--<asp:DropDownList ID="cboxBusqueda" runat="server" Width="180px" AutoPostBack="true" BackColor="#FFFF9E" Height="25px">
                                    <asp:ListItem Value="0">Cód. Registro (Numérico)</asp:ListItem>
                                    <asp:ListItem Value="1">Cód. Clasificación</asp:ListItem>
                                    <asp:ListItem Value="2">Materia --OLD</asp:ListItem>
                                    <asp:ListItem Value="3">Título</asp:ListItem>
                                    <asp:ListItem Value="4">Autor</asp:ListItem>
                                    <asp:ListItem Value="5">Todos --OLD</asp:ListItem>  
                                </asp:DropDownList>--%>
                                <asp:DropDownList ID="cboxBusqueda" runat="server" Width="180px" AutoPostBack="true" BackColor="#FFFF9E" Height="25px">
                                    <asp:ListItem Value="0">Cód. Registro (Numérico)</asp:ListItem>
                                    <asp:ListItem Value="1">Cód. Clasificación</asp:ListItem>  
                                    <asp:ListItem Value="2">Título</asp:ListItem>
                                    <asp:ListItem Value="3">Autor</asp:ListItem>
                                    <%--<asp:ListItem Value="4">Todos --OLD</asp:ListItem>  
                                    <asp:ListItem Value="5">Materia --OLD</asp:ListItem> --%>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TxtBusqueda" runat="server" Width="226px" placeholder="(Buscar por cód de registro)" Style="font-style:italic" BackColor="#FFFF9E" Height="25px"></asp:TextBox>
                                <asp:Label ID="lbl_Busqueda" runat="server" Text="" Visible="false"></asp:Label>
                                <input id="btn_Limpiar" type="button" value="x" title="Borra la casilla de búsqueda" runat="server" />  <!--Limpia todo -->
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnBuscar" CssClass="btnBuscar" runat="server" Text="Buscar" />
                                <asp:Label ID="lbl_Valida" runat="server" Text=""></asp:Label><!--Muestra mensajes-->
                                <%--<asp:Label ID="lbl_ValidaBusqueda" runat="server" Text=""></asp:Label>--%>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </fieldset>
                <br />
                <div class="Datos_Botones"  style="margin-bottom: 13px;">
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
                <div class="Datos_Botones" style="padding:10px; width: 260px;">
                    <div>
                    <asp:Label ID="Label24" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">--Los libros en desuso también se pueden prestar</asp:Label><br />
                    <asp:Label ID="Label25" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">--Para ver la ficha de libro. utilice la opción de Reportes</asp:Label><br />
                    <asp:Label ID="Label13" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">--Solo puede registrar un libro en una pestaña del navegador a la vez.</asp:Label>
                </div>
                </div>
            </div>


            <fieldset class="Datos_Fotos" style="margin-left: 20px;">
                <legend class="Titulo_Cuadro">PORTADA</legend>
                
                <center><img runat="server" src="" id="imgEmple" border="0" Width="100" Height="120"/>

                        <%--<div class='container_preview'>

                        <div class='product-small-img'>

                         

                            <img runat="server" src="" id="imgEmple2" title='Hacer click en ícono' onclick='myFunction(this)'/>
	                   

                        </div>

                        <div class='img-container'>
                             <img runat="server" class='zoom1'  src="" id="imgEmple3" title='Hacer click en ícono'/>

                           
                        </div>
                        </div>--%>
            </fieldset>



        </div>
    </div>


    <!--Este es el content datos viejo-->
    <%--<div id="Content_Datos">
        <fieldset class="Datos_Personales" style="margin-bottom:20px; width: 663px;">
            <legend class="Titulo_Cuadro" style="width: 28%">Registrar Libro Nuevo</legend>
            <table style="width: 656px">--%>
                <%--<tr>
                    <td style="width: 90px">
                        <asp:Label ID="lbl_codRegistro" runat="server" Text="Código Registro:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_codRegistro" runat="server" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px">
                        <asp:Label ID="Label1" runat="server" Text="Cod Clasificación"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_codClasif" runat="server" Width="93px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">
                        <asp:Label ID="lbl_TituloLibro" runat="server" Text="Titulo:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_TituloLibro" runat="server" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px">
                        <asp:Label ID="Label2" runat="server" Text="Lugar:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_lugar" runat="server" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px">
                        <asp:Label ID="Label3" runat="server" Text="Autor:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_autor" runat="server" Width="93px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px; height: 28px;">
                        <asp:Label ID="lbl_Editorial" runat="server" Text="Editorial:"></asp:Label>
                    </td>
                    <td style="width: 196px; height: 28px;">
                        <asp:TextBox ID="txt_Editorial" runat="server" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px; height: 28px;">
                        <asp:Label ID="Label4" runat="server" Text="N° Edición:"></asp:Label>
                    </td>
                    <td style="width: 196px; height: 28px;">
                        <asp:TextBox ID="txt_numEdicion" runat="server" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px; height: 28px;">
                        <asp:Label ID="Label5" runat="server" Text="Año de Edición::"></asp:Label>
                    </td>
                    <td style="width: 196px; height: 28px;">
                        <asp:TextBox ID="txt_anioEdic" runat="server" Width="93px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">
                        <asp:Label ID="lbl_proveedor" runat="server" Text="Proveedor:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_proveedor" runat="server" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px">
                        <asp:Label ID="Label6" runat="server" Text="N° Páginas:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_numPaginas" runat="server" MaxLength ="5" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px">
                        <asp:Label ID="Label7" runat="server" Text="N° Ejemplares:"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_numEjemplares" runat="server" MaxLength ="3" Width="93px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">
                        <asp:Label ID="lbl_LibroPrecioDolares" runat="server" Text="Precio ($/):"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_LibroprecioDolares" runat="server" MaxLength ="5" Width="93px"></asp:TextBox>
                    </td>
                    <td style="width: 90px">
                        <asp:Label ID="Label8" runat="server" Text="Precio (S/):"></asp:Label>
                    </td>
                    <td style="width: 196px">
                        <asp:TextBox ID="txt_LibroPrecioSoles" runat="server" MaxLength ="5" Width="93px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">Materias:</td>
                    <td colspan="5" align="left"> 
                        <textarea runat="server" style="width:65%;" id="txt_materias"></textarea> 
                    <br />
                    <font style="font-size:10px;">Hacer espacios después de cada materia</font>
                    </td>
                    

                </tr>
                <tr>
                    <td align="left">Detalle:</td>
                    <td colspan="5" align="left">
                    <textarea runat="Server" style="width: 530px" id="txt_Detalles"></textarea>
                   <br />
                    Contador caracteres(max 500)</td>
                </tr>
                <tr>
                    <td align="left" class="style2">N° ISBN:</td>
                    <td class="style2"><asp:TextBox ID="txt_ISBN" runat="server"></asp:TextBox></td>
                    <td colspan="3" align="left" class="style2">Mes-Año que se compró el libro (Formato 'MM/AAAA'): 
                    </td>
                    <td>
                        <asp:TextBox ID="txt_MesAnioCompraLibro" runat="server" MaxLength="7" Width="90"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Ver índice" Width="70"
                            style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style3">Modo:
                        <asp:DropDownList ID="cboxLibro_Modo" runat="server">
                            <asp:ListItem >Todos</asp:ListItem>
                            <asp:ListItem>01 - FISICO</asp:ListItem>
                            <asp:ListItem>01 - VIRTUAL</asp:ListItem>
                        </asp:DropDownList> (*)
                    </td>
                    <td align="left" class="style3"> Idioma:
                        <asp:DropDownList ID="cboxLibro_Idioma" runat="server">
                        <asp:ListItem Value="ELEGIR">ELEGIR</asp:ListItem>
                        <asp:ListItem>ESPAÑOL</asp:ListItem>
                        <asp:ListItem>INGLES</asp:ListItem>
                        <asp:ListItem>ITALIANO</asp:ListItem>
                        <asp:ListItem>CHINO</asp:ListItem>
                        <asp:ListItem>PORTUGUES</asp:ListItem>
                        <asp:ListItem>(OTROS)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Panel runat="server" ID="pnTipoLibro" Width="75">
                            <fieldset style="width:70px;">
                                <ul style="list-style:none;margin:0 0 0 0;">
                                    <li><asp:RadioButton ID="rdbFisico" runat="server" Text="Físico" GroupName="FisicoVirtual" AutoPostBack="true"/></li>
                                    <li><asp:RadioButton ID="rdbVirtual" runat="server" Text="Virtual" GroupName="FisicoVirtual" AutoPostBack="true"/></li>
                                </ul>
                            </fieldset>
                        </asp:Panel>
                    </td>
                    <td class="style4" align="left">Estado:  
                        <asp:DropDownList ID="cboxLibro_Estado" runat="server">
                            <asp:ListItem>ELEGIR</asp:ListItem>
                            <asp:ListItem>V</asp:ListItem>
                            <asp:ListItem>X</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Tipo:&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:DropDownList ID="cboxTipo" runat="server">
                            <asp:ListItem>00 - ELEGIR</asp:ListItem>
                            <asp:ListItem>01 - C</asp:ListItem>
                            <asp:ListItem>02 - L</asp:ListItem>
                            <asp:ListItem>03 - S</asp:ListItem>
                            <asp:ListItem>04 - D</asp:ListItem>
                            
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label9" runat="server" Font-Size="X-Small" Text="C=compra, L=colección, S=suscripción, D=donación" BackColor="Yellow"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td align="right">Categoría:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="cboxLibro_Categoria" runat="server" Width="120px">
                            <asp:ListItem>00 - ELEGIR </asp:ListItem>
                            <asp:ListItem>01 - LIBRO</asp:ListItem>
                            <asp:ListItem>02 - REVISTA</asp:ListItem>
                            <asp:ListItem>03 - FOLLETO</asp:ListItem>
                            <asp:ListItem>04 - MEMORIA</asp:ListItem>
                            <asp:ListItem>05 - TESIS</asp:ListItem>
                            <asp:ListItem>06 - PERIODICO</asp:ListItem>
                            <asp:ListItem>07 - FOTOS</asp:ListItem>
                            <asp:ListItem>08 - VIDEO</asp:ListItem>
                            <asp:ListItem>09 - COLECCION ESPECIAL</asp:ListItem>
                            <asp:ListItem>10 - NORMAS LEGALES</asp:ListItem>
                            <asp:ListItem>20 - ELECTRONICO</asp:ListItem>
                            <asp:ListItem>99 - OTROS</asp:ListItem>

                        </asp:DropDownList>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Incluye CD" />
                    </td>
                </tr>
                <%--<fieldset>
                    <legend>Imagen Empaste</legend>
                    <ul style="list-style: none;">
                        <li>
                            <asp:LinkButton ID="lnkPastalibro" Width="3px" Height="100px" runat="server">
                                <img id="imgPastaLibro" border="0" runat="server" src="" width="80" height="100"/>
                            </asp:LinkButton>
                        </li>
                        <input type="hidden" name="opimg"/>
                    </ul>
                </fieldset>--%>
                <asp:Label ID="lblMsjMantLibro" runat="server"></asp:Label>
            <%--</table>--%>
            



            <!--Aquí comienza la sección Busqueda ANTIGUA-->
            <%--<table >
                <tr>
                    <td > 
                        <asp:DropDownList ID="cboxBusqueda" runat="server" BackColor="#FCFED6" ForeColor="Black" Width="130px">
                            <asp:ListItem >Todos</asp:ListItem>
                            <asp:ListItem>Cod. Registro (Numérico)</asp:ListItem>
                            <asp:ListItem>Cod. Clasificación</asp:ListItem>
                            <asp:ListItem>Materia</asp:ListItem>
                            <asp:ListItem>Título</asp:ListItem>
                            <asp:ListItem>Autor</asp:ListItem>
                        </asp:DropDownList>
                     </td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="TxtBusqueda" Width="130px" runat="server" BackColor="#FFFFD5"></asp:TextBox>
                         <br />
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                        <asp:Label ID="lbl_Valida" runat="server" Text=""></asp:Label><!--Muestra mensajes-->
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Agregar"  ID="btnAgregar" runat="server" 
                            Width="100px"/>
                        <asp:Button Text="Grabar."  ID="btnGrabar" runat="server" 
                            Width="100px"/>
                        <asp:Button Text="Cancelar"  ID="btnCancelar" runat="server" Width="100px"/>
                    </td>
                    
                </tr>
                <tr>
                    <td style="height: 30px">
                        <asp:Button Text="Modificar"  ID="btnModificar" runat="server" Width="100px"/>
                        <asp:Button Text="Grabar.."  ID="btnGrabar2" runat="server" Width="100px"/>
                    </td>
                </tr>
             </table>--%>
            <!--Aquí termina la sección Busqueda -->




            <%--<div class="Datos_Botones" style="padding:10px; width: 260px;">
                    <div>
                    <asp:Label ID="Label11" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">*** El perfil "Supervisor" tiene todas opciones habilitadas.</asp:Label><br />
                    <asp:Label ID="Label13" runat="server" Style="color:brown; font-weight:bold; line-height: 23px;">*** El perfil "Consultor" solo puede generar reportes y configuracion general.</asp:Label>
                </div>
             </div>

            <br />    
        </fieldset>
    </div>--%>

    <!--Aquí termina el content datos viejo-->







    
    <!--DATAGRID-->
    <%--<td colspan="7">
                    <asp:datagrid id="TablaMantList" runat="server" Font-Names="Verdana" Width="100%" 
                        Font-Size="9pt" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="#FEFFF0">
                        <AlternatingItemStyle BackColor="White" />
						<SelectedItemStyle BackColor="SkyBlue"></SelectedItemStyle>
						<ItemStyle HorizontalAlign="Center"></ItemStyle>
						<HeaderStyle HorizontalAlign="Center" ForeColor="White" VerticalAlign="Middle" BackColor="#333333"></HeaderStyle>
					<Columns>
						<asp:BoundColumn DataField="cLibro_FechaReg" Visible="true" HeaderText="Fecha Registro"></asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_HoraReg" HeaderText="Hora Registro" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_Titulo" HeaderText="Título" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_CodNumerico" HeaderText="Código Registro" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_Autor" HeaderText="Autor" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_CodClasificacion" HeaderText="Cod. Clasificación" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_Estado" HeaderText="Estado" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cUsuario_Sist" HeaderText="Usuario" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_CD" HeaderText="cLibro_CD" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cMov_MesAnno_CompraLibro" HeaderText="Mes/Año Compra" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_Lugar" HeaderText="Lugar Libro" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:BoundColumn DataField="cLibro_Edicion_nro" HeaderText="N° Edición" ItemStyle-HorizontalAlign="left" >
                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
						</asp:BoundColumn>
                        <asp:ButtonColumn CommandName="Select1" HeaderText="Modificar" Text="&lt;img src='Imagenes/tuerca.jpg' title='Hacer click para modificar' alt='' width='15' height='15' border='0' /&gt;">
						<HeaderStyle Width="20px" />
						</asp:ButtonColumn>
                        
						</Columns>
					<PagerStyle Mode="NumericPages" />
				</asp:datagrid>
    </td>--%>


    
    <!--GRIDVIEW-->
    <div style="margin-top: 0px;">
    <asp:Label ID="lbl_Orden" runat="server" Text='Ordenado descendentemente por código de registro'></asp:Label>
    <fieldset id="Content_Gridview" runat="server" >
                    <legend class="Titulo_Cuadro" style="width: 11%">LISTADO DE LIBROS</legend>
                    <div style="border: 1px solid gray;">
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

                                <%--<asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />--%>

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
                                    <%--<ItemStyle Width="110px" HorizontalAlign="Center"></ItemStyle>--%>
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
<%--                                <asp:TemplateField HeaderText="Hora Desembolso" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_cHoraIngreso" runat="server" Text='lbl_cHoraIngreso'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>--%>

                                <asp:TemplateField HeaderText="Cod. Clasificación" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_codClasificacion" runat="server" Text='lbl_codClasificacion'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>

<%--                                <asp:TemplateField HeaderText="Hora Devolución" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_cHoraDevolucion" runat="server" Text='lbl_cHoraDevolucion'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>--%>


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

<%--                                <asp:TemplateField HeaderText="Descrip. Oficina" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_cDet_Oficina" runat="server" Text='lbl_cDet_Oficina'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>--%>

                                <asp:TemplateField HeaderText="Usuario" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_usuario" runat="server" Text='lbl_usuario'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="130px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>

<%--                                <asp:TemplateField HeaderText="Descrip. Entidad IFI" HeaderStyle-Font-Bold="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_cDet_IFI" runat="server" Text='lbl_cDet_IFI'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="True" />
                                    <ItemStyle Width="190px" HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>--%>

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
                         
                                <%--<asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />--%>

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
                <!--AQUÏ termina gridview-->
                
                <fieldset id="Datos_Sistemas" runat="server">
                    <legend class="Titulo_Cuadro">DATOS DEL SISTEMA</legend>
                    <input type="button" id="btn_Mostrar" name="btn_Mostrar" value="Mostrar" runat="server" />
                    <input type="button" id="btn_Ocultar" name="btn_Ocultar" value="Ocultar" runat="server" />
                    <table id="tbl_Datos_Sistemas">
                        <tr>
                            <td>
                                <asp:Label ID="lbl_TFechaSist_Ing" runat="server" Text="Fecha Sist. Ingreso.:"></asp:Label>
                            </td>
                            <td style="width: 140px">
                                <asp:TextBox ID="txt_FechaSist_Ing" runat="server" ReadOnly="True" Width="100px" Height="22px"></asp:TextBox>
                            </td>
                            <%--<td>
                                <asp:Label ID="lbl_TFechaSist_Dev" runat="server" Text="Fecha Sist. Devolución:"></asp:Label>
                            </td>
                            <td style="width: 140px">
                                <asp:TextBox ID="txt_FechaSist_Dev" runat="server" ReadOnly="True" Width="100px" Height="22px"></asp:TextBox>
                            </td>--%>
<%--                            <td>
                                <asp:Label ID="lbl_TIDAuto" runat="server" Text="ID Autogenerado:"></asp:Label>
                            </td>
                            <td style="width: 140px">
                                <asp:TextBox ID="txt_IDAuto" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                            </td>--%>
                            <td>
                                <asp:Label ID="lbl_TUsuario" runat="server" Text="Usuario (quién Modificó Registro):"></asp:Label>
                            </td>
                            <td style="width: 140px">
                                <asp:TextBox ID="txt_Usuario" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                                
                            </td>
                            <td>
                                <img src="Imagenes/ico_NroReg.png" class="iconos_resultado" />
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
                            <%--<td>
                                <asp:Label ID="lbl_THoraSist_Dev" runat="server" Text="Hora Sist. Devolución:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_HoraSist_Dev" runat="server" ReadOnly="True" Width="100px"></asp:TextBox>
                            </td>--%>
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

        <asp:Panel ID="pnl_Visor" runat="server" Style="margin-left: auto; margin-right: auto" Height="137px">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:reportviewer id="rv_General" runat="server" height="68px"></rsweb:reportviewer>
            <br />
        </asp:Panel>
        </div>    
</asp:Content>
