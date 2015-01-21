var ready = function() {
	var upre, upost, ppre, ppost;
	$("#analisis_mensual_hto").change(function(){
		$("#analisis_mensual_hb").val(($("#analisis_mensual_hto").val()/3.0).toFixed(2))
	});
	$("#analisis_mensual_peso_pre").change(function(){
		ppre = $("#analisis_mensual_peso_pre").val();
	});
	$("#analisis_mensual_peso_post").change(function(){
		ppost = $("#analisis_mensual_peso_post").val();
	});
	$("#analisis_mensual_urea_pre").change(function(){
		upre = $("#analisis_mensual_urea_pre").val();
	});
	$("#analisis_mensual_urea_post").change(function(){
		upost = $("#analisis_mensual_urea_post").val();
		if (upre > 0 && upost > 0 ){
			var urr = ((1-(upost/upre))*100).toFixed(2)
			var ktv = (-(Math.log((upost / upre) - 0.008*3.25)) + ((4 - 3.5*(upost / upre))*(ppre - ppost) / ppost)).toFixed(2)
			$("#analisis_mensual_urr").val(urr);
			$("#analisis_mensual_ktv").val(ktv);
		};
	});

};

$(document).ready(ready);
$(document).on('page:load', ready);

