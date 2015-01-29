var Amazonas = ["Bagua", "Bongara", "Chachapoyas", "Condorcanqui", "Luya", "Rodriguez de Mendoza", "Utcubamba"];

var Áncash = ["Aija", "Antonio raimondi", "Asuncion", "Bolognesi", "Carhuaz", "Carlos Fermin Fitzcarrald", "Casma", "Corongo", "Huaraz", "Huari", "Huarmey", "Huaylas", "Mariscal Luzuriaga", "Ocros", "Pallasca", "Pomabamba", "Recuay", "Santa", "Sihuas", "Yungay"];

var Apurímac = ["Abancay", "Aymaraes", "Andahuaylas", "Antabamba", "Cotabambas", "Grau", "Chincheros"];

var Arequipa = ["Arequipa", "Caylloma", "Camana", "Caraveli", "Castilla", "Condesuyos", "Islay", "La Union"];

var Ayacucho =  ["Huamanga", "Cangallo", "Huanta", "La Mar", "Lucanas", "Parinacochas", "Victor Fajardo", "Huanca Sancos", "Vilcas Huaman", "Paucar Del Sara Sara", "Sucre"];

var Cajamarca = ["Cajamarca", "Cajabamba", "Celendin", "Contumaza", "Cutervo", "Chota", "Hualgayoc", "Jaen", "Santa Cruz", "San Miguel", "San Ignacio", "San Marcos", "San Pablo"];

var Cusco = ["Cusco", "Acomayo", "Anta", "Calca", "Canas", "Canchis", "Chumbivilcas", "Espinar", "La Convencion", "Paruro", "Paucartambo", "Quispicanchi", "Urubamba"];

var Huancavelica = ["Huancavelica", "Acobamba", "Angaraes", "Castrovirreyna", "Tayacaja", "Huaytara", "Churcampa"];

var Huánuco = ["Huanuco", "Ambo", "Dos De Mayo", "Huamalies", "Marañon", "Leoncio Prado", "Pachitea", "Puerto Inca", "Huacaybamba", "Lauricocha", "Yarowilca"];

var Ica = ["Chincha", "Ica", "Nazca", "Palpa", "Pisco"]

var Junín = ["Huancayo", "Concepcion", "Jauja", "Junin", "Tarma", "Yauli", "Satipo", "Chanchamayo", "Chupaca"];

var La_libertad = ["Trujillo", "Bolivar", "Sanchez Carrion", "Otuzco", "Pacasmayo", "Pataz", "Santiago De Chuco", "Ascope", "Chepen", "Julcan", "Gran Chimu", "Viru"];

var Lambayeque = ["Chiclayo", "Ferreñafe", "Lambayeque"];

var Lima = ["Lima", "Cajatambo", "Canta", "Cañete", "Huaura", "Huarochiri", "Yauyos", "Huaral", "Barranca", "Oyon"];

var Loreto =  ["Maynas", "Alto Amazonas", "Loreto", "Requena", "Ucayali", "Mariscal  Ramon  Castilla", "Datem Del Marañon"]; 

var Madre_de_dios = ["Tambopata", "Manu", "Tahuamanu"]; 

var Moquegua = ["Mariscal Nieto", "General Sanchez Cerro", "Ilo"] ;

var Pasco = ["Pasco", "Daniel Alcides Carrion", "Oxapampa"];

var Piura =  ["Piura", "Ayabaca", "Huancabamba", "Morropon", "Paita", "Sullana", "Talara", "Sechura"];

var Puno = ["Puno", "Azangaro", "Carabaya", "Chucuito", "Huancane", "Lampa", "Melgar", "Sandia", "San", "Roman", "Yunguyo", "San Antonio De Putina", "El Collao", "Moho"]; 

var San_martin = ["Moyobamba", "Huallaga", "Lamas", "Mariscal Caceres", "Rioja", "San Martin", "Bellavista", "Tocache", "Picota", "El Dorado"];

var Tacna = ["Tacna", "Tarata", "Jorge Basadre", "Candarave"]; 

var Tumbes = ["Tumbes", "Contralmirante Villar", "Zarumilla"];

var Ucayali = ["Coronel Portillo", "Padre Abad", "Atalaya", "Purus"];


var list = function(array_list) {
    $("#paciente_provincia").html(""); //reset child options
    $(array_list).each(function (i) { //populate child options 
    	$("#paciente_provincia").append("<option value=\""+array_list[i]+"\">"+array_list[i]+"</option>");
    });
};


var ready = function() {
	$("#paciente_departamento").change(function(){
		var eleccion = $("#paciente_departamento").val();
		switch(eleccion){ 
			case 'Amazonas':
			list(Amazonas.sort());
			break;
			case 'Áncash':
			list(Áncash.sort());
			break;
			case 'Apurímac':
			list(Apurímac.sort());
			break;              
			case 'Arequipa':
			list(Arequipa.sort());
			break;  
			case 'Ayacucho':
			list(Ayacucho.sort());
			break; 
			case 'Cajamarca':
			list(Cajamarca.sort());
			break; 
			case 'Cusco':
			list(Cusco.sort());
			break; 
			case 'Huancavelica':
			list(Huancavelica.sort());
			break; 
			case 'Huánuco':
			list(Huánuco.sort());
			break;
			case 'Ica':
			list(Ica.sort());
			break;    
			case 'Junín':
			list(Junín.sort());
			break;
			case 'La Libertad':
			list(La_libertad.sort());
			break;
			case 'Lambayeque':
			list(Lambayeque.sort());
			break;
			case 'Lima':
			list(Lima.sort());
			break;
			case 'Loreto':
			list(Loreto.sort());
			break;
			case 'Madre De Dios':
			list(Madre_de_dios.sort());
			break; 
			case 'Moquegua':
			list(Moquegua.sort());
			break; 
			case 'Pasco':
			list(Pasco.sort());
			break; 
			case 'Piura':
			list(Piura.sort());
			break; 
			case 'Puno':
			list(Puno.sort());
			break; 
			case 'San Martín':
			list(San_martin.sort());
			break; 
			case 'Tacna':
			list(Tacna.sort());
			break; 
			case 'Tumbes':
			list(Tumbes.sort());
			break; 
			case 'Ucayali':
			list(Ucayali.sort());
			break; 
	        default: //default child option is blank
	        $("#paciente_provincia").html('');  
	        break;
	    };
	});
};



$(document).ready(ready);
$(document).on('page:load', ready);







