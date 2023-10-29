<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_inicio.aspx.vb" Inherits="Biblioteca_Mant.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Base" runat="server">
    


	<fieldset class="Datos_Buscar" style="width: 900px; background-color:none; border-style: none;" id="fs_libro" runat="server">
			<ul class="align">
				<li>
					<figure class='book'>

						<!-- Front -->
						<ul class='hardcover_front'>
							<li>
								<img src="Imagenes/bnLogoBLanco.jpg" alt="" width="100%" height="100%">
							</li>
							<li></li>
						</ul>

						<!-- Pages -->
						<ul class='page'>
							<li></li>
							<li>
								<img src="Imagenes/bnLogoRojo.png" alt="" width="100%" height="100%">
							</li>
							<li></li>
							<li></li>
							<li></li>
						</ul>

						<!-- Back -->
						<ul class='hardcover_back'>
							<li></li>
							<li></li>
						</ul>
						<ul class='book_spine'>
							<li></li>
							<li></li>
						</ul>
						<figcaption>
							<br />
							<br />
							<asp:Label ID="lbl_valida" runat="server" Text='' Visible="false"></asp:Label>
							<asp:Button ID="btn_PHay" runat="server" Text="Hay" style="cursor:pointer; background-color:#EBEBEB;; border-style: none; padding-right:0px; font-size:14px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;" />
							<asp:Button ID="btn_prestamos" runat="server" Text="" style="cursor:pointer; background-color:#EBEBEB; border-style: none; padding-right:0px; padding-left:0px; font-size:14px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color:red; font-weight:bold"/>
							<asp:Button ID="btn_Plibrosprestados" runat="server" Text="préstamos pendientes" style="cursor:pointer; background-color:#EBEBEB; border-style: none; padding-left:0px; font-size:14px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;" />


							<br />
							<br />
							
							<asp:Button ID="btn_RHay" runat="server" Text="Hay" style="cursor:pointer; background-color:#EBEBEB;; border-style: none; padding-right:0px; font-size:14px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;" />
							<asp:Button ID="btn_reservas" runat="server" Text="" style="cursor:pointer; background-color:#EBEBEB; border-style: none; padding-right:0px; padding-left:0px; font-size:14px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color:red; font-weight:bold"/>
							<asp:Button ID="btn_RlibrosReservados" runat="server" Text="libros reservados" style="cursor:pointer; background-color:#EBEBEB; border-style: none; padding-left:0px; font-size:14px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;" />
							
						</figcaption>
					</figure>
				</li>
			</ul>

		</fieldset>


	<!--fields Prestamos-->
    <fieldset class="Datos_Buscar" style="width: 900px; border-style:none;" id="fs_grvPrestamos" runat="server">
        <asp:Label ID="Label1" runat="server" Text='Ordenado descendentemente por fecha de préstamo'></asp:Label>
        <fieldset id="Fieldset2" runat="server">
            <legend class="Titulo_Cuadro" style="width: 21%">LISTADO DE PRÉSTAMOS PENDIENTES</legend>
            <div style="border: 1px solid gray;">
                <asp:GridView ID="gdv_Lista_Prestamos" runat="server" AutoGenerateColumns="False"
                    EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gdv_Lista_Prestamos_OnRowDataBound"
                    OnPageIndexChanging="gdv_Lista_Prestamos_PageIndexChanging" AllowPaging="true" PageSize="10">
                    <Columns>
                        <asp:TemplateField HeaderText="N°">
                            <ItemTemplate>
                                <asp:Label ID="Lbl_OrdME" runat="server" Text='<%# (gdv_Lista_Prestamos.PageSize * gdv_Lista_Prestamos.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

						<%--LIBRO--%>
						<asp:TemplateField HeaderText="Cód Clasificación" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codClasificacion" runat="server" Text='lbl_codClasificacion'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Cód Registro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codRegistro" runat="server" Text='lbl_codRegistro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Título Libro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_tituloLibro" runat="server" Text='lbl_titulolibro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>


						<%--LECTOR--%>
                        <asp:TemplateField HeaderText="Nombre Lector" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_nombreLector" runat="server" Text='lbl_nombreLector'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Cód Empleado" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codEmpleado" runat="server" Text='lbl_codEmpleado'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />

                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <%--<asp:TemplateField HeaderText="Cód Clasificación" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codClasificacion" runat="server" Text='lbl_codClasificacion'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Cód Registro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codRegistro" runat="server" Text='lbl_codRegistro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Título Libro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_tituloLibro" runat="server" Text='lbl_titulolibro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>--%>


						

                        
						<%--MOVIMIENTO--%>
                        <asp:TemplateField HeaderText="Fecha Prestamo" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_fechaPrestamo" runat="server" Text='lbl_fechaPrestamo'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>


						<asp:TemplateField HeaderText="Fecha Devolución" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_fechaDevolucion" runat="server" Text='lbl_fechaDevolucion'></asp:Label>
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
        <br />
    </fieldset>


    <!--fields Reservas-->
    <fieldset class="Datos_Buscar" style="width: 900px; border-style:none; " id="fs_grvReservas" runat="server">
        <asp:Label ID="lbl_Orden" runat="server" Text='Ordenado descendentemente por fecha de reserva'></asp:Label>
        <fieldset id="Content_Gridview" runat="server">
            <legend class="Titulo_Cuadro" style="width: 15%">LISTADO DE RESERVAS</legend>
            <div style="border: 1px solid gray;">
                <asp:GridView ID="gdv_Lista_Reservas" runat="server" AutoGenerateColumns="False"
                    EmptyDataText="No hay registros, afine su búsqueda" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gdv_Lista_Reservas_OnRowDataBound"
                    OnPageIndexChanging="gdv_Lista_Reservas_PageIndexChanging" AllowPaging="true" PageSize="10">
                    <Columns>

						<asp:CommandField HeaderText="Ver" SelectImageUrl="~/Imagenes/img_FlechaDer.jpg" SelectText="Ver" ShowSelectButton="True" ButtonType="Image" />

                        <asp:TemplateField HeaderText="N°">
                            <ItemTemplate>
                                <asp:Label ID="Lbl_OrdME" runat="server" Text='<%# (gdv_Lista_Reservas.PageSize * gdv_Lista_Reservas.PageIndex) + Container.DisplayIndex + 1%>' CssClass="ordN">
                                </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" CssClass="ord" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>


						<%--LIBRO--%>
						<asp:TemplateField HeaderText="Cód Clasificación" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codClasificacion" runat="server" Text='lbl_codClasificacion'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

						<asp:TemplateField HeaderText="Cód Registro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codRegistro" runat="server" Text='lbl_codRegistro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Título Libro" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_tituloLibro" runat="server" Text='lbl_titulolibro'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>



						<%--LECTOR--%>
						<asp:TemplateField HeaderText="Cód Empleado" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_codLector" runat="server" Text='lbl_codLector'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Nombre Lector" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_nombreLector" runat="server" Text='lbl_nombreLector'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="200px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Oficina" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_oficina" runat="server" Text='lbl_oficina'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />

                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Anexo" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_anexo" runat="server" Text='lbl_anexo'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

						

                        
						<%--MOVIMIENTO--%>
                        <asp:TemplateField HeaderText="Id Préstamo" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_idPrestamo" runat="server" Text='lbl_idPrestamo'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Fecha Reserva" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_fechaReserva" runat="server" Text='lbl_fechaReserva'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Tipo Reserva" HeaderStyle-Font-Bold="true">
                            <ItemTemplate>
                                <asp:Label ID="lbl_tipoReserva" runat="server" Text='lbl_codOficina'></asp:Label>
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
        <br />
    </fieldset>

	<!--STYLE-->

	<style>

	 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap');

/** {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}*/

::before,
::after {
	content: "";
}

/*body {
	background: #ecf0f1;
	color: #34495e;*/
	/*font-family: 'Poppins', sans-serif;*/
	/*font-weight: 400;
	line-height: 1.2;
}*/



ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

a {
	color: #2c3e50;
	text-decoration: none;
}

.align {
	clear: both;
	margin: 120px auto 20px;
	width: 100%;
	max-width: 1170px;
	text-align: center;
}

.align>li {
	width: 700px;
	min-height: 300px;
	display: inline-block;
	margin: 30px 20px 30px 30px;
	padding: 0 0 0 60px;
	vertical-align: top;
}

.book {
	position: relative;
	width: 160px;
	height: 220px;
	perspective: 1000px;
	transform-style: preserve-3d;
}

/*
	2. background & color
*/

/* HARDCOVER FRONT */
.hardcover_front li:first-child {
	background-color: #eee;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	backface-visibility: hidden;
}

/* reverse */
.hardcover_front li:last-child {
	background: #fffbec;
}

/* HARDCOVER BACK */
.hardcover_back li:first-child {
	background: #fffbec;
}

/* reverse */
.hardcover_back li:last-child {
	background: #fffbec;
}

.book_spine li:first-child {
	background: #eee;
}

.book_spine li:last-child {
	background: #333;
}

/* thickness of cover */

.hardcover_front li:first-child:after,
.hardcover_front li:first-child:before,
.hardcover_front li:last-child:after,
.hardcover_front li:last-child:before,
.hardcover_back li:first-child:after,
.hardcover_back li:first-child:before,
.hardcover_back li:last-child:after,
.hardcover_back li:last-child:before,
.book_spine li:first-child:after,
.book_spine li:first-child:before,
.book_spine li:last-child:after,
.book_spine li:last-child:before {
	background: #999;
}

/* page */

.page>li {
	background: -webkit-linear-gradient(left, #e1ddd8 0%, #fffbf6 100%);
	background: -moz-linear-gradient(left, #e1ddd8 0%, #fffbf6 100%);
	background: -ms-linear-gradient(left, #e1ddd8 0%, #fffbf6 100%);
	background: linear-gradient(left, #e1ddd8 0%, #fffbf6 100%);
	box-shadow: inset 0px -1px 2px rgba(50, 50, 50, 0.1), inset -1px 0px 1px rgba(150, 150, 150, 0.2);
	border-radius: 0px 5px 5px 0px;
}

/*
	3. opening cover, back cover and pages
*/

.hardcover_front {
	transform: rotateY(-34deg) translateZ(8px);
	z-index: 100;
}

.hardcover_back {
	transform: rotateY(-15deg) translateZ(-8px);
}

.page li:nth-child(1) {
	transform: rotateY(-28deg);
}

.page li:nth-child(2) {
	transform: rotateY(-30deg);
}

.page li:nth-child(3) {
	transform: rotateY(-32deg);
}

.page li:nth-child(4) {
	transform: rotateY(-34deg);
}

.page li:nth-child(5) {
	transform: rotateY(-36deg);
}

/*
	4. position, transform & transition
*/

.hardcover_front,
.hardcover_back,
.book_spine,
.hardcover_front li,
.hardcover_back li,
.book_spine li {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	transform-style: preserve-3d;
}

.hardcover_front,
.hardcover_back {
	transform-origin: 0% 100%;
}

.hardcover_front {
	transition: all 0.8s ease, z-index 0.6s;
}

/* HARDCOVER front */
.hardcover_front li:first-child {
	cursor: default;
	user-select: none;
	transform: translateZ(2px);
}

.hardcover_front li:last-child {
	transform: rotateY(180deg) translateZ(2px);
}

/* HARDCOVER back */
.hardcover_back li:first-child {
	transform: translateZ(2px);
}

.hardcover_back li:last-child {
	transform: translateZ(-2px);
}

/* thickness of cover */
.hardcover_front li:first-child:after,
.hardcover_front li:first-child:before,
.hardcover_front li:last-child:after,
.hardcover_front li:last-child:before,
.hardcover_back li:first-child:after,
.hardcover_back li:first-child:before,
.hardcover_back li:last-child:after,
.hardcover_back li:last-child:before,
.book_spine li:first-child:after,
.book_spine li:first-child:before,
.book_spine li:last-child:after,
.book_spine li:last-child:before {
	position: absolute;
	top: 0;
	left: 0;
}

/* HARDCOVER front */
.hardcover_front li:first-child:after,
.hardcover_front li:first-child:before {
	width: 4px;
	height: 100%;
}

.hardcover_front li:first-child:after {
	transform: rotateY(90deg) translateZ(-2px) translateX(2px);
}

.hardcover_front li:first-child:before {
	transform: rotateY(90deg) translateZ(158px) translateX(2px);
}

.hardcover_front li:last-child:after,
.hardcover_front li:last-child:before {
	width: 4px;
	height: 160px;
}

.hardcover_front li:last-child:after {
	transform: rotateX(90deg) rotateZ(90deg) translateZ(80px) translateX(-2px) translateY(-78px);
}

.hardcover_front li:last-child:before {
	box-shadow: 0px 0px 30px 5px #333;
	transform: rotateX(90deg) rotateZ(90deg) translateZ(-140px) translateX(-2px) translateY(-78px);
}

/* thickness of cover */

.hardcover_back li:first-child:after,
.hardcover_back li:first-child:before {
	width: 4px;
	height: 100%;
}

.hardcover_back li:first-child:after {
	transform: rotateY(90deg) translateZ(-2px) translateX(2px);
}

.hardcover_back li:first-child:before {
	transform: rotateY(90deg) translateZ(158px) translateX(2px);
}

.hardcover_back li:last-child:after,
.hardcover_back li:last-child:before {
	width: 4px;
	height: 160px;
}

.hardcover_back li:last-child:after {
	transform: rotateX(90deg) rotateZ(90deg) translateZ(80px) translateX(2px) translateY(-78px);
}

.hardcover_back li:last-child:before {
	box-shadow: 10px -1px 80px 20px #666;
	transform: rotateX(90deg) rotateZ(90deg) translateZ(-140px) translateX(2px) translateY(-78px);
}

/* BOOK SPINE */
.book_spine {
	transform: rotateY(60deg) translateX(-5px) translateZ(-12px);
	width: 16px;
	z-index: 0;
}

.book_spine li:first-child {
	transform: translateZ(2px);
}

.book_spine li:last-child {
	transform: translateZ(-2px);
}

/* thickness of book spine */
.book_spine li:first-child:after,
.book_spine li:first-child:before {
	width: 4px;
	height: 100%;
}

.book_spine li:first-child:after {
	transform: rotateY(90deg) translateZ(-2px) translateX(2px);
}

.book_spine li:first-child:before {
	transform: rotateY(-90deg) translateZ(-12px);
}

.book_spine li:last-child:after,
.book_spine li:last-child:before {
	width: 4px;
	height: 16px;
}

.book_spine li:last-child:after {
	transform: rotateX(90deg) rotateZ(90deg) translateZ(8px) translateX(2px) translateY(-6px);
}

.book_spine li:last-child:before {
	box-shadow: 5px -1px 100px 40px rgba(0, 0, 0, 0.2);
	transform: rotateX(90deg) rotateZ(90deg) translateZ(-210px) translateX(2px) translateY(-6px);
}

.page,
.page>li {
	position: absolute;
	top: 0;
	left: 0;
	transform-style: preserve-3d;
}

.page {
	width: 100%;
	height: 98%;
	top: 1%;
	left: 3%;
	z-index: 10;
}

.page>li {
	width: 100%;
	height: 100%;
	transform-origin: left center;
	transition-property: transform;
	transition-timing-function: ease;
}

.page>li:nth-child(1) {
	transition-duration: 0.6s;
}

.page>li:nth-child(2) {
	transition-duration: 0.6s;
}

.page>li:nth-child(3) {
	transition-duration: 0.4s;
}

.page>li:nth-child(4) {
	transition-duration: 0.5s;
}

.page>li:nth-child(5) {
	transition-duration: 0.6s;
}

/*
	5. events
*/

.book:hover>.hardcover_front {
	transform: rotateY(-145deg) translateZ(0);
	z-index: 0;
}

.book:hover>.page li:nth-child(1) {
	transform: rotateY(-30deg);
	transition-duration: 1.5s;
}

.book:hover>.page li:nth-child(2) {
	transform: rotateY(-35deg);
	transition-duration: 1.8s;
}

.book:hover>.page li:nth-child(3) {
	transform: rotateY(-118deg);
	transition-duration: 1.6s;
}

.book:hover>.page li:nth-child(4) {
	transform: rotateY(-130deg);
	transition-duration: 1.4s;
}

.book:hover>.page li:nth-child(5) {
	transform: rotateY(-140deg);
	transition-duration: 1.2s;
}

/* figcaption */

figcaption {
	padding-left: 40px;
	text-align: left;
	position: absolute;
	top: 0%;
	left: 160px;
	width: 420px;
	-webkit-backface-visibility: hidden;
}

figcaption h1 {
	margin: 0;
	font-size: 22px;
    font-weight: 500;
}

figcaption span {
    /*color: #16a085;*/
	color: black;
    padding: 0.6em 0 1em 0;
    display: block;
    font-size: 14px;
    font-weight: 300;
}

figcaption p {
	color: #596470;
    font-size: 15px;
    text-align: justify;
    font-weight: 300;
}

/* Media Queries */
@media screen and (max-width: 37.8125em) {
	.align>li {
		width: 100%;
		min-height: 440px;
		height: auto;
		padding: 0;
		margin: 0 0 30px 0;
	}

	.book {
		margin: 0 auto;
	}

	figcaption {
		text-align: center;
		width: 320px;
		top: 250px;
		padding-left: 0;
		left: -80px;
		font-size: 90%;
	}
}

	</style>




</asp:Content>

