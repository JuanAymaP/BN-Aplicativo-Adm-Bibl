$.datepicker.regional['es'] = {
 closeText: 'Cerrar',
 prevText: '<Ant',
 nextText: 'Sig>',
 currentText: 'Hoy',
 monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
 monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
 dayNames: ['Domingo', 'Lunes', 'Martes', 'Mi�rcoles', 'Jueves', 'Viernes', 'S�bado'],
 dayNamesShort: ['Dom','Lun','Mar','Mi�','Juv','Vie','S�b'],
 dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sa'],
 weekHeader: 'Sm',
 //dateFormat: 'yy-mm-dd',
 //firstDay: 1,
 dateFormat: 'dd/mm/yy', //01/12/2021
 firstDay: 7, //inicia Dominigo
 isRTL: false,
 showMonthAfterYear: false,
 yearSuffix: ''
};
$.datepicker.setDefaults($.datepicker.regional['es']);