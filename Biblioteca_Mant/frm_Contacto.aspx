<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/base.Master" CodeBehind="frm_Contacto.aspx.vb" Inherits="Biblioteca_Mant.frm_Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Base" runat="server">
    <h1 style="color: green; font-size: 17px">
        DETALLES DEL USUARIO PRINCIPAL</h1>

    <div style="display: flex; flex-wrap: wrap;">

        <div id="Content_General">
            <div id="Content_Datos">
                <div class="tab" style="width: 670px; margin-bottom: -3px;">
                </div>
                <fieldset class="Datos_Personales" style="margin-bottom: 20px;">
                        <legend hidden="hidden"></legend>
                        &nbsp;                   
                        &nbsp; 
                        &nbsp;              
                   
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" Style="font-size: 12pt" Text="Responsable del Servicio"></asp:Label>
                        &nbsp;
                    
                        &nbsp;
                    
                        &nbsp;
                        <asp:Label ID="Label4" Font-Bold="false" runat="server" Text="SOVERO SOTO ADRIÁN CARLOS"></asp:Label>
                        &nbsp;
                        <br /><br />
                         <asp:Label ID="Label1" Font-Bold="True" runat="server" Text="Subgerencia de Capacitación"></asp:Label>
                        &nbsp;
                    

                    
                   
                        <br />
                        <a href="mailto:biblioteca@bn.com.pe">biblioteca@bn.com.pe</a>
                        <br />
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="Telef.: 5192000"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Anexo:  95-059"></asp:Label>
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;<asp:Label ID="Label3" runat="server"><i>(Información actualizada al mes de Febrero del 2023)</i></asp:Label>
                   
                        <asp:Label ID="Label9" runat="server" Text="División de Desarrollo de Sistemas - BANCO DE LA NACION" Visible="false"></asp:Label>&nbsp;
                    
                        <asp:Label ID="lbl_Copyright" runat="server" Visible="false"></asp:Label>
                        &nbsp;
                    
                   
                        &nbsp;
                   

                    <br />
                </fieldset>
            </div>
        </div>

    </div>
</asp:Content>