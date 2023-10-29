///////FORMATEAR CAMPOS FECHA PARA REPORTES///////

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
        var fecha = document.getElementById("cph_Base_txt_FechaDesde");
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

function txt_FechaHasta(elEvento) {
    var evento = elEvento || window.event;
    Solo_Numeros = /[^0-9/]/;
    var fechasinformato = new Date();
    var yyyy = fechasinformato.getFullYear().toString();
    var mm = (fechasinformato.getMonth() + 1).toString(); // getMonth() is zero-based
    var dd = fechasinformato.getDate().toString();

    var fechaFormateada = (dd[1] ? dd : "0" + dd[0]) + "/" + (mm[1] ? mm : "0" + mm[0]) + "/" + yyyy;

    if (evento.keyCode == 8) {
    } else {
        var fecha = document.getElementById("cph_Base_txt_FechaHasta");
        if (Solo_Numeros.test(fecha.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            $('#cph_Base_lbl_ValidaContrato').text("Solo se puede ingresar números");
            fecha.value = fechaFormateada;
            fecha.focus();
            $('#cph_Base_txt_FechaHasta').text(fechaFormateada);
            return false;
        } else {
            if (fecha.value.length == 2 || fecha.value.length == 5) {
                fecha.value += "/";
            }
        }
    }
}
///-----Bloqueo clic derecho del gráfico
$(function () {
    $("#cph_Base_Chart1").bind("contextmenu", function (e) {
        return false;
    });
});

 ///-----VALIDACION PARA REPORTES-----////////////////
$(document).ready(function () {
    $("#cph_Base_ddl_TipoFecha").on("click", function () {
        Validar_Reporte()
    });
    $("#cph_Base_ddl_Oficina").on("click", function () {
        Validar_Reporte()
    });
    $("#cph_Base_ddl_EntIFI").on("click", function () {
        Validar_Reporte()
    });
    $("#cph_Base_ddl_SituacContrato").on("click", function () {
        Validar_Reporte()
    });
    $("#cph_Base_ddl_SituacPagare").on("click", function () {
        Validar_Reporte()
    });
    $("#cph_Base_ddl_SituacDPS").on("click", function () {
        Validar_Reporte()
    });
    $("input[Type=text]").on("click", function () {
        Validar_Reporte()
    });
    $("input[name = 'ctl00$cph_Base$btn_Limpiar']").on("click", function () {
        Validar_Reporte()
    });
//----Función que permite bloquear los campos cuando se modifica la consulta del reporte/////
    function Validar_Reporte() {
        $('#cph_Base_btn_VerRepo').attr('disabled', 'disabled');
        $("input[name = 'ctl00$cph_Base$rb_TipoReporte']").attr('disabled', true);
        $("input[name = 'ctl00$cph_Base$rb_Format']").attr('disabled', 'disabled');
        $('#cph_Base_lbl_Valida').text("");
        $('#cph_Base_lbl_ValidaContrato').text("");

        $('#cph_Base_btn_VerRepo').attr('disabled', 'disabled');
        $("input[name = 'ctl00$cph_Base$rb_Format']").attr('disabled', true);
        $('#cph_Base_btn_VerFicha').attr('disabled', 'disabled');
        $("input[name = 'ctl00$cph_Base$rb_FormatContrato']").attr('disabled', true);
        $('#cph_Base_lbl_Valida').text("");
        $('#cph_Base_lbl_ValidaContrato').text("");

        $("#cph_Base_ddl_TipoReporte").attr('disabled', 'disabled');
        $("#cph_Base_ddl_Format").attr('disabled', 'disabled');
    };
});

///-----Funcion de fechas usando libreria de Jquery UI Datepicker---///
$(function () {
    $.datepicker.setDefaults($.datepicker.regional["es"]);
    $(".datepicker").datepicker();
    firstDay: 1
});

//Funcion para validar Fechas desde y hasta 
function Validar_Fecha() {
    var Fecha_Desde = $('#cph_Base_txt_FechaDesde').val() // formato dd/mm/yyyy --->01/12/2000'
    var Fecha_Hasta = $('#cph_Base_txt_FechaHasta').val()

    if (validarFormatoFecha(Fecha_Desde) == true && validarFormatoFecha(Fecha_Hasta) == true) {// si las fechas Desde y Hasta existen
        if (existeFecha(Fecha_Desde) == true && existeFecha(Fecha_Hasta) == true) {
            return true;
        } else if (existeFecha(Fecha_Desde) == false && existeFecha(Fecha_Hasta) == true) {// Si la fecha Desde existe
            $('#cph_Base_lbl_Valida').text("La fecha 'Desde' introducida no existe.");
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_txt_FechaDesde').css("background-color", "Yellow");
            $('#cph_Base_txt_FechaDesde').focus();
            return false;
        } else if (existeFecha(Fecha_Desde) == true && existeFecha(Fecha_Hasta) == false) {// Si la fecha Hasta existe
            $('#cph_Base_lbl_Valida').text("La fecha 'Hasta' introducida no existe.");
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_txt_FechaHasta').css("background-color", "Yellow");
            $('#cph_Base_txt_FechaHasta').focus();
            return false;
        } else if (existeFecha(Fecha_Desde) == false && existeFecha(Fecha_Hasta) == false) {// Si ambas fechas no existen
            $('#cph_Base_lbl_Valida').text("Las fechas 'Desde' y 'Hasta' introducidas no existen.");
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_txt_FechaDesde').css("background-color", "Yellow");
            $('#cph_Base_txt_FechaDesde').focus();
            $('#cph_Base_txt_FechaHasta').css("background-color", "Yellow");
            return false;
        }
    } else if (validarFormatoFecha(Fecha_Desde) == false && validarFormatoFecha(Fecha_Hasta) == true) {// Si la fecha Desde tiene formato incorrecto
        $('#cph_Base_lbl_Valida').text("El formato de la fecha 'Desde' es incorrecto.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaDesde').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaDesde').focus();
        return false;
    } else if (validarFormatoFecha(Fecha_Desde) == true && validarFormatoFecha(Fecha_Hasta) == false) {// Si la fecha Hasta tiene formato incorrecto
        $('#cph_Base_lbl_Valida').text("El formato de la fecha 'Hasta' es incorrecto.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaHasta').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaHasta').focus();
        return false;
    } else if (validarFormatoFecha(Fecha_Desde) == false && validarFormatoFecha(Fecha_Hasta) == false) {// Si ambas fechas tienen formato incorrecto
        $('#cph_Base_lbl_Valida').text("El formato de las fechas 'Desde' y 'Hasta' son incorrectos.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaDesde').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaDesde').focus();
        $('#cph_Base_txt_FechaHasta').css("background-color", "Yellow");
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