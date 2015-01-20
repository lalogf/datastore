$(document).ready(function(){
	$("#analisis_mensual_hto").focusout(function(){
		$("#analisis_mensual_hb").val(($("#analisis_mensual_hto").val()/3.0).toFixed(2))
	});
});