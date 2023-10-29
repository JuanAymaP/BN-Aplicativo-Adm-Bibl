$(document).ready(function () {

    //Convierte a mayúsculas automaticamente el input txt_Valor
    $('#txt_Usuario').keyup(function () {
        var datos = new String($('#txt_Usuario').val());
        datos = datos.toUpperCase(datos);
        $('#txt_Usuario').val(datos);
    })
});

function Validar_campos() {
    $('#txt_Usuario').css("background-color", "white");
    $('#txt_Clave').css("background-color", "white");

    if ((($('#txt_Usuario').val()).trim()).length == 0) { //Valida Campo Usuario no este vacio
        $('#lbl_Mensaje').show();
        $('#lbl_Mensaje').text("MSJE.CLIENTE: El campo 'Usuario' es obligatorio");
        $('#txt_Usuario').val("");
        $('#txt_Usuario').css("background-color", "Yellow");
        $('#txt_Usuario').focus();
    }
    else if ((($('#txt_Usuario').val()).trim()).length < 4) { //Valida Campo Usuario no sea menor de 4 caracteres
        //'acá no debe aceptar que enmpiece en ' < '
        $('#lbl_Mensaje').show();
        $('#lbl_Mensaje').text("MSJE.CLIENTE: El campo 'Usuario' debe tener 4 caracteres");
        $('#txt_Usuario').css("background-color", "Yellow");
        $('#txt_Usuario').focus();
    }
    else if ($.isNumeric($('#txt_Usuario').val())) { //Valida Campo Usuario no sea Numérico
        $('#lbl_Mensaje').text("MSJE.CLIENTE: El campo 'Usuario' debe ser alfabético");
        $('#txt_Usuario').css("background-color", "Yellow");
        $('#txt_Usuario').focus();
    }
    else if ($('#txt_Usuario').val().indexOf("<") != -1) { //Valida Campo Usuario no tenga el caracter "<"
        $('#lbl_Mensaje').show();
        $('#lbl_Mensaje').text("MSJE.CLIENTE: El símbolo '<' no está permitido");
        $('#txt_Usuario').css("background-color", "Yellow");
        $('#txt_Usuario').focus();
    }
    else if ((($('#txt_Clave').val()).trim()).length == 0) { //Valida Campo Clave no este vacio

        $('#lbl_Mensaje').show();
        $('#lbl_Mensaje').text("MSJE.CLIENTE: El campo 'Clave' es obligatorio");
        $('#txt_Clave').css("background-color", "Yellow");
        $('#txt_Clave').val("");
        $('#txt_Clave').focus();
        return false;
    } else {// en caso cumpla todo se procedera a realizar el ingreso al sistema, siempre que sean los datos correctos.
        return true; 
    }
    return false;
}