///////FORMATEAR CAMPOS FECHA PARA REPORTES///////
$(document).ready(function () {
    $('#cph_Base_txt_Valor').focus()
});

function txt_FechaDesde(elEvento) {
    var evento = elEvento || window.event;
    Solo_Numeros = /[^0-9/]/;
    var fechasinformato = new Date();
    var yyyy = fechasinformato.getFullYear().toString();
    var mm = (fechasinformato.getMonth() + 1).toString(); // getMonth() is zero-based
    var dd = fechasinformato.getDate().toString();
    var fechaFormateada = (dd[1] ? dd : "0" + dd[0]) + "/" + (mm[1] ? mm : "0" + mm[0]) + "/" + yyyy;

    if (evento.keyCode == 8) {
    } else {
        var fecha = document.getElementById("cph_Base_txt_Valor");
        if (Solo_Numeros.test(fecha.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            $('#cph_Base_lbl_ValidaContrato').text("Solo se puede ingresar números");
            fecha.value = fechaFormateada;
            fecha.focus();
            $('#cph_Base_txt_FechaDesde').text(fechaFormateada);
            return false;
        } else {
            if (fecha.value.length == 2 || fecha.value.length == 5) {
                fecha.value += "/";
            }
        }
    }
}

///-----Funcion de fechas usando libreria de Jquery UI Datepicker---///
$(function () {
    $.datepicker.setDefaults($.datepicker.regional["es"]);
    $(".datepicker").datepicker({
        firstDay: 1
    });
});

//Funcion para validar Fechas desde y hasta 
function Validar_Fecha() {
    var Fecha_Desde = $('#cph_Base_txt_Valor').val() // formato dd/mm/yyyy --->01/12/2000'
    if ((Fecha_Desde.trim()).length == 0) {
        $('#cph_Base_lbl_Valida').text("El campo fecha no puede estar vacio.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_Valor').css("background-color", "Yellow");
        $('#cph_Base_txt_Valor').focus();
        return false;
    } else if (validarFormatoFecha(Fecha_Desde) == true) {// si las fechas Desde y Hasta existen
        if (existeFecha(Fecha_Desde) == true) {
            return true;
        } else if (existeFecha(Fecha_Desde) == false) {// Si ambas fechas no existen
            $('#cph_Base_lbl_Valida').text("La fecha introducida no existe.");
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_txt_Valor').css("background-color", "Yellow");
            $('#cph_Base_txt_Valor').focus();
            return false;
        }
    } else if (validarFormatoFecha(Fecha_Desde) == false) {// Si ambas fechas tienen formato incorrecto
        $('#cph_Base_lbl_Valida').text("El formato de la fecha es incorrecto.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_Valor').css("background-color", "Yellow");
        $('#cph_Base_txt_Valor').focus();
        return false;
    }
}

//-----Funcion para validar formato de fecha
function validarFormatoFecha(campo) {// Valida el Formato de la fecha (dd/mm/yyyy)
    var RegExPattern = /^\d{1,2}\/\d{1,2}\/\d{2,4}$/;
    if ((campo.match(RegExPattern)) && (campo != '')) {
        return true;
    } else {
        return false;
    }
}

//----Funcion para Validar la existencia de la fecha
function existeFecha(fecha) { // verifica que no ingresen fechas que no existen ejemp. 00/00/0000
    var fechaf = fecha.split("/");
    var d = fechaf[0];
    var m = fechaf[1];
    var y = fechaf[2];
    return m > 0 && m < 13 && y > 1974 && y < 2078 && d > 0 && d <= (new Date(y, m, 0)).getDate();//Aqui esta la condicional de limite de año mayor a 1974 pero menor a 2078
}