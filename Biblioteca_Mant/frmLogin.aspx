<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmLogin.aspx.vb" Inherits="Biblioteca_Mant.FrmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>BIBL-Administrativo de libros</title>

    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta http-equiv="Content-Language" content="es" />
    <meta name="robots" content="index,follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="expires" content="0" />

    <link rel="stylesheet" type="text/css" href="Styles/resetearcss.css" />
    <link rel="stylesheet" type="text/css" href="Styles/Login/login-principal.css" />
    <link rel="stylesheet" type="text/css" href="Styles/Login/login.css" />
    <link rel="stylesheet" type="text/css" href="Styles/Login/reset-login.css" />
    <link rel="stylesheet" type="text/css" href="Styles/tipografias.css" />

    <!---LIBRERIA JQUERY -- Necesario que este antes de las librerias Bootstrap--->
    <script src="Scripts/jquery-1.11.1.min.js" type="text/javascript"></script>
    <!---JAVASCRIPT PROPIOS-->
    <script src="Scripts/valida_login.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 116px;
        }
    </style>
</head>

<body>
    <div id="bn-contenidos">
        <div id="cabecera" class="alturaCabecera">
            <a href="#" accesskey="l" title="Logo Banco Nacion">
                <img src="Imagenes/Login/img_LogoBN.jpg" alt="Logo Banco Nacion" /></a>
        </div>
        <div id="border-superior">
            <img src="Imagenes/Login/img_border-superior.jpg" alt="Borde superior" />
        </div>
        <div id="cuerpo">
            <div id="logo">
                <img src="Imagenes/Login/img_LogoPestana.jpg" alt="Fondo logo"/>
                <div class="texto-encima">Aplicativo Administrativo Biblioteca BN</div>
            </div>
            <div class="visa">
                <div class="contenedor-slide">
                    <img id="img_autorizando" src="Imagenes/img_login.jpg?pfdrid_c=true" alt="" width="320px" height="275px" />
                </div>
            </div>
            <label id="j_idt8" class="ui-outputlabel ui-widget ocultar">false</label>
            <div id="limp" class="limpiar">
                <form id="loginForm" class="formLogin" runat="server">
                    <input type="hidden" name="loginForm" value="loginForm" />
                    <h2 style="font-size: 20px;">Acceso al Sistema</h2>
                    <p>Versión: 08-10-2023</p>
                    <br />
                    <div>
                        <div style="margin: 0 auto; width: 400px; text-align: center;">
                            <div class="limpiar" style="text-align: left; cursor: auto;">
                                <label for="lbl_Usuario" class="grande" style="font-size: 20px; cursor: text;">Usuario:</label>
                                <asp:TextBox ID="txt_Usuario" runat="server" CssClass="ui-inputfield ui-password ui-widget ui-state-default ui-corner-all grande" MaxLength="4" Width="81px"></asp:TextBox>
                                &nbsp;<label for="llll" class="auto-style1" style="font-size: 12px; padding: 0; width: 140px; cursor: text;"><p style="padding-bottom: 0px;">(4 caracteres alfabéticos)</p>
                                </label>
                            </div>
                            <div class="mensajeErroLogin">
                            </div>
                            <div class="limpiar">
                                <label class="grande" style="font-size: 20px; cursor: text;">Clave:</label>
                                <asp:TextBox ID="txt_Clave" Style="font-size: 20px" runat="server" TextMode="Password" CssClass="ui-inputfield ui-password ui-widget ui-state-default ui-corner-all grande" MaxLength="8" Width="81px"></asp:TextBox>
                            </div>
                            <div class="mensajeErroLogin">
                            </div>
                            <label for="_spring_security_remember_me" class="ocultar">Remember me: </label>
                            <input id="_spring_security_remember_me" type="checkbox" name="_spring_security_remember_me" class="ocultar" />
                            <br />
                            <asp:Button ID="btn_Iniciar" OnClientClick="Validar_campos();" CssClass="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only commandButton ui-button-text ui-c" runat="server" Style="margin-right: 30px;" Text="Iniciar Sesión" />
                            <br />
                            <br />
                            <asp:Label ID="lbl_Mensaje" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                            <br />
                        </div>               
                    </div>
                    <input type="hidden" name="javax.faces.ViewState" id="javax.faces.ViewState" value="-5353143050852501704:2972368465540164538" autocomplete="off" />
                </form>
            </div>
            <div id="border-inferior">
                <img src="Imagenes/Login/img_border-inferior.jpg" alt="border"/>
            </div>
            <div id="pie-pagina">
                <p style="text-align: center;">
                    Para un uso óptimo, debe utilizar el navegador
                    <img src="Imagenes/img_chrome.jpg" class="icono_Chorme" alt="chrome"/>Chrome.
                </p>
            </div>
        </div>
    </div>
</body>
</html>
