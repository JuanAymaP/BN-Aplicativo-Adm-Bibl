//Mostrar/ocultar 
$(document).ready(function () {

    $('#cph_Base_btn_Ocultar').hide();
    $('#cph_Base_btn_Mostrar').show();
    $('#tbl_Datos_Sistemas').hide();

    $("#cph_Base_btn_Mostrar").click(function () {
        // $('#tbl_Datos_Sistemas').slideDown("slow");
        $('#tbl_Datos_Sistemas').fadeIn(300);
        $('#cph_Base_btn_Mostrar').hide();
        $('#cph_Base_btn_Ocultar').show();
        //$('.target').show("slow");
    });
    $("#cph_Base_btn_Ocultar").click(function () {
        // $('#tbl_Datos_Sistemas').slideUp("fast");
        $('#tbl_Datos_Sistemas').fadeOut(300);
        $('#cph_Base_btn_Mostrar').show();
        $('#cph_Base_btn_Ocultar').hide();
        //$('.target').hide("fast");
    });

});