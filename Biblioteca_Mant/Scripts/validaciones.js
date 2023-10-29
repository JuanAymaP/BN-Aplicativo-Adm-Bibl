function verif(n) {
    Solo_Numeros = /[^0-9]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;
    
    if (Solo_Numeros.test(n.value)) {
        $('#cph_Base_lbl_Valida').show();
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números"); 
        $('#cph_Base_lbl_ValidaContrato').css("color", "red");
        $('#cph_Base_lbl_ValidaContrato').text("Solo se puede ingresar números"); 
        $('#lbl_Valida').css("color", "red");
        n.value = "";
        n.focus();
    } else {
        //$('#lbl_Aviso').hide();
        //$('#cph_Base_lbl_Valida').hide();
    } 
}

function verifPrecio(n) {
    Solo_Numeros = /[^0-9.,]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;

    if (Solo_Numeros.test(n.value)) {
        $('#cph_Base_lbl_Valida').show();
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
        $('#cph_Base_lbl_ValidaContrato').css("color", "red");
        $('#cph_Base_lbl_ValidaContrato').text("Solo se puede ingresar números");
        $('#lbl_Valida').css("color", "red");
        n.value = "";
        n.focus();
    } else {
        //$('#lbl_Aviso').hide();
        //$('#cph_Base_lbl_Valida').hide();
    }
}

// PRÉSTAMOS 
// VALIDADOR LECTOR
function verifPrest(n) {
    Solo_Numeros = /[^0-9]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;
    if ((document.getElementById("cph_Base_cBox_BusquedaLector").value == 0) || (document.getElementById("cph_Base_cBox_BusquedaLector").value == 1)) {
        if (Solo_Numeros.test(n.value)) {
            $('#cph_Base_lbl_LectorSeEncontro').show();
            $('#cph_Base_lbl_LectorSeEncontro').css("color", "red");
            $('#cph_Base_lbl_LectorSeEncontro').text("Solo se puede ingresar números");
            n.value = "";
            n.focus();
        } else {
            //$('#lbl_Aviso').hide();
            //$('#cph_Base_lbl_Valida').hide();
        }
    }
    else if (document.getElementById("cph_Base_cBox_BusquedaLector").value == 2) {
        if (!Solo_Letras.test(n.value)) {
            $('#cph_Base_lbl_LectorSeEncontro').show();
            $('#cph_Base_lbl_LectorSeEncontro').css("color", "red");
            $('#cph_Base_lbl_LectorSeEncontro').text("Solo se puede ingresar texto");
            n.value = "";
            n.focus();
        }
    }
}
// VALIDADOR LIBRO
function verificarBusqLibro(n) {
    Solo_Numeros = /[^0-9]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;
    if ((document.getElementById("cph_Base_cbox_CodRegistroLibro").value == 0)) {
        if (Solo_Numeros.test(n.value)) {
            $('#cph_Base_lbl_validaLibro').show();
            $('#cph_Base_lbl_validaLibro').css("color", "red");
            $('#cph_Base_lbl_validaLibro').text("Solo se puede ingresar números");
            n.value = "";
            n.focus();
        } 
    }
    else if (document.getElementById("cph_Base_cbox_CodRegistroLibro").value == 1 || document.getElementById("cph_Base_cbox_CodRegistroLibro").value == 2) {
        if (!Solo_Letras.test(n.value)) {
            $('#cph_Base_lbl_validaLibro').show();
            $('#cph_Base_lbl_validaLibro').css("color", "red");
            $('#cph_Base_lbl_validaLibro').text("Solo se puede ingresar texto");
            n.value = "";
            n.focus();
        }
    }
}

// MANTENIMIENTO LIBRO
function verificarBusqMantenimientoLibro(n) {
    Solo_Numeros = /[^0-9.]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;

    if ((document.getElementById("cph_Base_cboxBusqueda").value == 0)) {
        if (Solo_Numeros.test(n.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            $('#lbl_Valida').css("color", "red");
            n.value = "";
            n.focus();
        } 
    }
    else if (document.getElementById("cph_Base_cboxBusqueda").value == 1 || document.getElementById("cph_Base_cboxBusqueda").value == 2 || document.getElementById("cph_Base_cboxBusqueda").value == 3 || document.getElementById("cph_Base_cboxBusqueda").value == 4 || document.getElementById("cph_Base_cboxBusqueda").value == 5) {
        if (!Solo_Letras.test(n.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar texto");
            n.value = "";
            n.focus();
        }
    }
}

// HCC
function verificarBusqHCC(n) {
    Solo_Numeros = /[^0-9]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;
    if ((document.getElementById("cph_Base_cboxBusqueda").value == 0) || (document.getElementById("cph_Base_cboxBusqueda").value == 1)) {
        if (Solo_Numeros.test(n.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");

            n.value = "";
            n.focus();
        } else {
            //$('#lbl_Aviso').hide();
            //$('#cph_Base_lbl_Valida').hide();
        }
    }
    else if (document.getElementById("cph_Base_cboxBusqueda").value == 2) {
        if (!Solo_Letras.test(n.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar texto");
            n.value = "";
            n.focus();
        }
    }
}

// REPORTES
function verifCodLector(n) {
    Solo_Numeros = /[^0-9.]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;

    if (Solo_Numeros.test(n.value)) {
        $('#cph_Base_lbl_validaLector1').show();
        $('#cph_Base_lbl_validaLector1').css("color", "red");
        $('#cph_Base_lbl_validaLector1').text("Solo se puede ingresar números");
        $('#cph_Base_lbl_validaLector1').css("color", "red");
        $('#cph_Base_lbl_validaLector1').text("Solo se puede ingresar números");
        $('#lbl_Valida').css("color", "red");
        n.value = "";
        n.focus();
    } else {
        //$('#lbl_Aviso').hide();
        //$('#cph_Base_lbl_Valida').hide();
    }
}

function verifCodLibro(n) {
    Solo_Numeros = /[^0-9.]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;

    if (Solo_Numeros.test(n.value)) {
        $('#cph_Base_lbl_validaLibro1').show();
        $('#cph_Base_lbl_validaLibro1').css("color", "red");
        $('#cph_Base_lbl_validaLibro1').text("Solo se puede ingresar números");
        $('#cph_Base_lbl_validaLibro1').css("color", "red");
        $('#cph_Base_lbl_validaLibro1').text("Solo se puede ingresar números");
        $('#lbl_Valida').css("color", "red");
        n.value = "";
        n.focus();
    } else {
        //$('#lbl_Aviso').hide();
        //$('#cph_Base_lbl_Valida').hide();
    }
}


function verifCodPrestamo(n) {
    Solo_Numeros = /[^0-9.]/;
    Solo_Letras = /^[A-Za-zÁÉÍÓÚáéíóúñÑ0-9."--+_,;/()&¿?¡!'´ ]*$/;

    if (Solo_Numeros.test(n.value)) {
        $('#cph_Base_lbl_ValidaPrestamo1').show();
        $('#cph_Base_lbl_ValidaPrestamo1').css("color", "red");
        $('#cph_Base_lbl_ValidaPrestamo1').text("Solo se puede ingresar números");
        $('#cph_Base_lbl_ValidaPrestamo1').css("color", "red");
        $('#cph_Base_lbl_ValidaPrestamo1').text("Solo se puede ingresar números");
        $('#lbl_Valida').css("color", "red");
        n.value = "";
        n.focus();
    } else {
        //$('#lbl_Aviso').hide();
        //$('#cph_Base_lbl_Valida').hide();
    }
}


//oculta los resultados al hacer click en el input txt_Valor
$(document).ready(function () {
    $("#cph_Base_TxtBusqueda").on("click", function () {
        $('#cph_Base_lbl_Valida').text("");
    });
    //Convierte a mayúsculas automaticamente el input txt_Valor
    $('#cph_Base_txt_Valor').keyup(function () {
        var datos = new String($('#cph_Base_txt_Valor').val());
        datos = datos.toUpperCase(datos);
        $('#cph_Base_txt_Valor').val(datos);
        $('#cph_Base_btn_Cancelar').removeAttr('disabled');
    })
    //Limpia el campo txt_Valor
    $("#cph_Base_btn_Limpiar").on("click", function () {
        $("#cph_Base_TxtBusqueda").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_TxtBusqueda").focus();
    });

    $("#cph_Base_btn_Limpiar_BusquedaLector").on("click", function () {
        $("#cph_Base_txt_valorLector").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_txt_valorLector").focus();
    });

    $("#cph_Base_btn_Limpiar_BusquedaLibro").on("click", function () {
        $("#cph_Base_txt_ValorLibro").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_txt_ValorLibro").focus();
    });

    $("#cph_Base_btn_Limpiar_ReporteBusquedaLector").on("click", function () {
        $("#cph_Base_txt_ValorCodEmpleado").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_txt_ValorCodEmpleado").focus();
    });

    $("#cph_Base_btn_Limpiar_ReporteBusquedaLibro").on("click", function () {

        $("#cph_Base_txt_valorLibro1").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_txt_valorLibro1").focus();
    });

    $("#cph_Base_btn_Limpiar_ReporteBusquedaPrestamo").on("click", function () {

        $("#cph_Base_txt_ValorPrestamo1").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_txt_ValorPrestamo1").focus();
    });

    $("#cph_Base_btn_Limpiar_ReporteBusquedaHcc").on("click", function () {

        $("#cph_Base_txt_valorHcc1").val('');
        $('#cph_Base_lbl_Valida').hide();
        $("#cph_Base_txt_valorHcc1").focus();
    });

    //Desactiva el autocompletado
    $('form').attr('autocomplete', 'off');

     //Convierte a mayúsculas automaticamente el input txt_NombreOFI
    $('#cph_Base_txt_NombreOFI').keyup(function () {
        var datos = new String($('#cph_Base_txt_NombreOFI').val());
        datos = datos.toUpperCase(datos);
        $('#cph_Base_txt_NombreOFI').val(datos);
    })

    //Convierte a mayúsculas automaticamente el input txt_NombreOFI
    $('#cph_Base_txt_NombreIFI').keyup(function () {
        var datos = new String($('#cph_Base_txt_NombreIFI').val());
        datos = datos.toUpperCase(datos);
        $('#cph_Base_txt_NombreIFI').val(datos);
    })
});

////////////////FORMATEA CAMPOS FECHA DESEMBOLSO Y DEVOLUCION ANTES DEL CLICK GRABAR//////////////////
function Formatear_FechaIngreso(elEvento) {//Format6a fecha Desembolso
    var evento = elEvento || window.event;
    Solo_Numeros = /[^0-9/]/;
    var fechasinformato = new Date();
    var yyyy = fechasinformato.getFullYear().toString();
    var mm = (fechasinformato.getMonth() + 1).toString(); // getMonth() is zero-based
    var dd = fechasinformato.getDate().toString();

    var fechaFormateada = (dd[1] ? dd : "0" + dd[0]) + "/" + (mm[1] ? mm : "0" + mm[0]) + "/" + yyyy;

    if (evento.keyCode == 8) {
    } else {
        var fecha = document.getElementById("cph_Base_txt_FechaIng");
        if (Solo_Numeros.test(fecha.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            fecha.value = fechaFormateada;
            fecha.focus();
            $('#cph_Base_txt_FechaIng').text(fechaFormateada);
            return false;
        } else {
            if (fecha.value.length == 2 || fecha.value.length == 5) {
                fecha.value += "/";
            }
        }
    }
}

function Formatear_FechaDevolucion(elEvento) { //Formatea Fecha devolucion
    var evento = elEvento || window.event;
    Solo_Numeros = /[^0-9/]/;
    var fechasinformato = new Date();
    var yyyy = fechasinformato.getFullYear().toString();
    var mm = (fechasinformato.getMonth() + 1).toString(); // getMonth() is zero-based
    var dd = fechasinformato.getDate().toString();

    var fechaFormateada = (dd[1] ? dd : "0" + dd[0]) + "/" + (mm[1] ? mm : "0" + mm[0]) + "/" + yyyy;

    if (evento.keyCode == 8) {
    } else {
        var fecha = document.getElementById("cph_Base_txt_FechaDevol");
        if (Solo_Numeros.test(fecha.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            fecha.value = fechaFormateada;
            fecha.focus();
            $('#cph_Base_txt_FechaDevol').text(fechaFormateada);
            return false;
        } else {
            if (fecha.value.length == 2 || fecha.value.length == 5) {
                fecha.value += "/";
            }
        }
    }
}

function Formatear_HoraIngreso(elEvento) {//Format6a fecha Desembolso
  var evento = elEvento || window.event;
    Solo_Numeros = /[^0-9:]/;
    var fechasinformato = new Date();
    var HH = fechasinformato.getHours.toString();
    var MM = (fechasinformato.getMinutes).toString(); // getMonth() is zero-based
    var SS = fechasinformato.getSeconds.toString();
    var HoraFormateada = (HH[1] ? HH : "0" + HH[0]) + ":" + (MM[1] ? MM : "0" + MM[0]) + ":" + (SS[1] ? SS : "0" + SS[0]) ;

    if (evento.keyCode == 8) {
    } else {
        var hora = document.getElementById("cph_Base_txt_HoraIng");
        if (Solo_Numeros.test(hora.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            hora.value = fechaFormateada;
            hora.focus();
            $('#cph_Base_txt_HoraIng').text(HoraFormateada);
            return false;
        } else {
            if (hora.value.length == 2 || hora.value.length == 5) {
                hora.value += ":";
            }
        }
    }
}

function Formatear_HoraDevolucion(elEvento) {//Format6a fecha Desembolso
    var evento = elEvento || window.event;
    Solo_Numeros = /[^0-9:]/;
    var fechasinformato = new Date();
    var HH = fechasinformato.getHours.toString();
    var MM = (fechasinformato.getMinutes).toString(); // getMonth() is zero-based
    var SS = fechasinformato.getSeconds.toString();
    var HoraFormateada = (HH[1] ? HH : "0" + HH[0]) + ":" + (MM[1] ? MM : "0" + MM[0]) + ":" + (SS[1] ? SS : "0" + SS[0]);

    if (evento.keyCode == 8) {
    } else {
        var hora = document.getElementById("cph_Base_txt_HoraDevol");
        if (Solo_Numeros.test(hora.value)) {
            $('#cph_Base_lbl_Valida').show();
            $('#cph_Base_lbl_Valida').css("color", "red");
            $('#cph_Base_lbl_Valida').text("Solo se puede ingresar números");
            hora.value = fechaFormateada;
            hora.focus();
            $('#cph_Base_txt_HoraDevol').text(HoraFormateada);
            return false;
        } else {
            if (hora.value.length == 2 || hora.value.length == 5) {
                hora.value += ":";
            }
        }
    }
}

function Validar_HoraIngreso() {

    var timeStr = $('#cph_Base_txt_HoraIng').val();
    var timePat = /^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$/;
    var matchArray = timeStr.match(timePat);

    if ($('#cph_Base_txt_HoraIng').val() == "") {
        $('#cph_Base_lbl_Valida').text("Ingrese Hora de Desembolso");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraIng').val(timeStr);
        $('#cph_Base_txt_HoraIng').focus();
        return false;
    };
    if (matchArray == null) {
        $('#cph_Base_lbl_Valida').text("No es un formato valido [HH:MM:SS]");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraIng').val(timeStr);
        $('#cph_Base_txt_HoraIng').focus();
        return false;
    }

    hour = matchArray[1];
    minute = matchArray[2];
    second = matchArray[4];
    ampm = matchArray[6];

    if (second == "") { second = null; }
    if (ampm == "") { ampm = null }

    if (hour < 0 || hour > 23) {
        $('#cph_Base_lbl_Valida').text("La hora debe estar en formato 24 Hrs.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraIng').val(timeStr);
        $('#cph_Base_txt_HoraIng').focus();
        return false;
    }
    if (hour > 12 && ampm != null) {
        alert("No puedes especificar AM o PM para el formato militar.");
        $('#cph_Base_txt_HoraIng').focus();
        return false;
    }

    if (minute < 0 || minute > 59) {
        $('#cph_Base_lbl_Valida').text("Los minutos deben estar entre 0 y 59.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraIng').val(timeStr);
        $('#cph_Base_txt_HoraIng').focus();
        return false;
    }

    if (second != null && (second < 0 || second > 59)) {
        $('#cph_Base_lbl_Valida').text("Los segundos deben estar entre 0 y 59.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraIng').val(timeStr);
        $('#cph_Base_txt_HoraIng').focus();
        return false;
    }
    return true;
}

function Validar_HoraDevolucion() {

    var timeStr = $('#cph_Base_txt_HoraDevol').val();
    var timePat = /^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$/;

    var matchArray = timeStr.match(timePat);

    if ($('#cph_Base_txt_HoraDevol').val() == "") {
        $('#cph_Base_lbl_Valida').text("Ingrese Hora de Devolución");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraDevol').val(timeStr);
        $('#cph_Base_txt_HoraDevol').focus();
        return false;
    };
    if (matchArray == null) {
        $('#cph_Base_lbl_Valida').text("No es un formato valido [HH:MM:SS]");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraDevol').val(timeStr);
        $('#cph_Base_txt_HoraDevol').focus();
        return false;
    }

    hour = matchArray[1];
    minute = matchArray[2];
    second = matchArray[4];
    ampm = matchArray[6];

    if (second == "") { second = null; }
    if (ampm == "") { ampm = null }

    if (hour < 0 || hour > 23) {
        $('#cph_Base_lbl_Valida').text("La hora debe estar en formato 24 Hrs.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraDevol').val(timeStr);
        $('#cph_Base_txt_HoraDevol').focus();
        return false;
    }
    if (hour > 12 && ampm != null) {
        alert("No puedes especificar AM o PM para el formato militar.");
        $('#cph_Base_txt_HoraDevol').focus();
        return false;
    }

    if (minute < 0 || minute > 59) {
        $('#cph_Base_lbl_Valida').text("Los minutos deben estar entre 0 y 59.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraDevol').val(timeStr);
        $('#cph_Base_txt_HoraDevol').focus();
        return false;
    }

    if (second != null && (second < 0 || second > 59)) {
        $('#cph_Base_lbl_Valida').text("Los segundos deben estar entre 0 y 59.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_HoraDevol').val(timeStr);
        $('#cph_Base_txt_HoraDevol').focus();
        return false;
    }
    return true;
}

//Funcion para activar el Datepecker usando Jquery UI PARA MANTENIMIENTO
$(function () {
    $.datepicker.setDefaults($.datepicker.regional["es"]);
    $(".datepicker").datepicker();
    firstDay: 1
});

//Funcion para validar campos para nuevo registro al click en "grabar."
function Validar_FechaIngreso() {
    var Num_Contrato = $('#cph_Base_txt_NroContrato').val();
    var Entidad_IFI = $('#cph_Base_ddl_EntIFI').val();
    var Fecha_Ingreso = $('#cph_Base_txt_FechaIng').val(); // formato dd/mm/yyyy --->01/12/2000'
    if (((Num_Contrato).trim()).length == 0) {
        $('#cph_Base_lbl_Valida').show();
        $('#cph_Base_lbl_Valida').text("Ingrese el Número de Contrato");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_NroContrato').val("");
        $('#cph_Base_txt_NroContrato').css("background-color", "Yellow");
        $('#cph_Base_txt_NroContrato').focus();

    } else if ((((Num_Contrato).trim()).length > 0) && (((Num_Contrato).trim()).length < 3)) {
        $('#cph_Base_lbl_Valida').show();
        $('#cph_Base_lbl_Valida').text("Digite mínimo 3 caracteres");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_NroContrato').val("");
        $('#cph_Base_txt_NroContrato').css("background-color", "Yellow");
        $('#cph_Base_txt_NroContrato').focus();
    } else if (Entidad_IFI == 0) {
        $('#cph_Base_lbl_Valida').show();
        $('#cph_Base_lbl_Valida').text("Seleccione una Entidad IFI de la lista----");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_ddl_EntIFI').css("background-color", "Yellow");
        $('#cph_Base_ddl_EntIFI').focus();
    } else if (validarFormatoFecha(Fecha_Ingreso) == false) {
        $('#cph_Base_lbl_Valida').text("El formato de la fecha Desembolso es incorrecto.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaIng').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaIng').focus();
    } else if ( (validarFormatoFecha(Fecha_Ingreso) == true) && (existeFecha(Fecha_Ingreso) == false) ){
        $('#cph_Base_lbl_Valida').text("La fecha Desembolso introducida no existe.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaIng').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaIng').focus();
    } else if (Validar_HoraIngreso() == false) {
        $('#cph_Base_txt_HoraIng').css("background-color", "Yellow");
    } else {
        return true;
    }
    return false;
}

//Funcion para validar campos para nuevo registro al click en "grabar."
function Validar_FechaDevolucion() {
    var Fecha_Devolucion = $('#cph_Base_txt_FechaDevol').val(); // formato dd/mm/yyyy --->01/12/2000'
    if (validarFormatoFecha(Fecha_Devolucion ) == false) {
        $('#cph_Base_lbl_Valida').text("El formato de la fecha Desembolso es incorrecto.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaDevol').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaDevol').focus();
    } else if ((validarFormatoFecha(Fecha_Devolucion) == true) && (existeFecha(Fecha_Devolucion) == false)) {
        $('#cph_Base_lbl_Valida').text("La fecha Desembolso introducida no existe.");
        $('#cph_Base_lbl_Valida').css("color", "red");
        $('#cph_Base_txt_FechaDevol').css("background-color", "Yellow");
        $('#cph_Base_txt_FechaDevol').focus();
    } else if (Validar_HoraDevolucion() == false) {
        $('#cph_Base_txt_HoraDevol').css("background-color", "Yellow");
    } else {
        return true;
    }
    return false;
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