//ALGORITMO PARA CALCULO DA FILIAL MAIS PROXIMA DE UM DADO CEP
//Por Haroldo Carvalho - http://www.eiharold.com


/* Passo a passo para uso do script:

1) Associe a entrada do CEP do usuário à variável global cepUsuario;
2) Crie os objetos filial00X e preencha com os dados das filiais;
3) Acrescente a linha de distância para cada filial inserida;

ENJOY :)

*/

$(document).ready(function() {
 
 //Variaveis globais 
   
   var cepUsuario = sessionStorage.getItem('cepTemp'); //Resgata o CEP do usuario aqui
 
 
  
 //Objeto de objetos que contem cada filial e suas informacoes. Precisa ser criado um novo objeto para cada filial a ser acrescentada
  
  var filiais = {
    
    filial001: {
    id: "ARCOVERDE",
    cep:56506640,
    telefone:"(83)3333-22222",
    endereco: resgatarEndereco(56506640) + "", //Insira o endereço manualmente, entre aspas, ou gere automaticamente com a funcao resgatarEndereco() usando o CEP como entrada e concatene o número do prédio da filial.
    latitude: resgatarLatitude(56506640),
    longitude: resgatarLongitude(56506640)
    },

    filial002: {
    id: "CABEDELO",
    cep:58100263,
    telefone:"(83)3333-22222",
    endereco: resgatarEndereco(58100263) + "",
    latitude: resgatarLatitude(58100263),
    longitude: resgatarLongitude(58100263)
    },
  
    filial003: {
    id: "CAICÓ",
    cep:59300000,
    telefone:"(83)3321-22222",
    endereco: resgatarEndereco(59300000) + "",
    latitude: resgatarLatitude(59300000),
    longitude: resgatarLongitude(59300000)
    },
    
    filial004: {
    id: "CAJAZEIRAS",
    cep:58900000,
    telefone:"(83)3345-22222",
    endereco: resgatarEndereco(58900000) + "",
    latitude: resgatarLatitude(58900000),
    longitude: resgatarLongitude(58900000)
    },

    filial005: {
    id: "CAMPINA GRANDE",
    cep:58410045,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58410045) + "",
    latitude: resgatarLatitude(58410045),
    longitude: resgatarLongitude(58410045)
    },

    filial006: {
    id: "CAMPO FORMOSO",
    cep:44790000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(44790000) + "",
    latitude: resgatarLatitude(44790000),
    longitude: resgatarLongitude(44790000)
    },

    filial007: {
    id: "CANGUARETAMA",
    cep:59190000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59190000) + "",
    latitude: resgatarLatitude(59190000),
    longitude: resgatarLongitude(59190000)
    },

    filial008: {
    id: "CARUARU",
    cep:55010540,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(55010540) + "",
    latitude: resgatarLatitude(55010540),
    longitude: resgatarLongitude(55010540)
    },

    filial009: {
    id: "CRATEUS",
    cep:63700000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(63700000) + "",
    latitude: resgatarLatitude(63700000),
    longitude: resgatarLongitude(63700000)
    },

    filial010: {
    id: "CURRAIS NOVOS",
    cep:59380000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59380000) + "",
    latitude: resgatarLatitude(59380000),
    longitude: resgatarLongitude(59380000)
    },

    filial011: {
    id: "FORTALEZA",
    cep:60115190,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(60115190) + "",
    latitude: resgatarLatitude(60115190),
    longitude: resgatarLongitude(60115190)
    },

    filial012: {
    id: "GARANHUNS",
    cep:55295080,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(55295080) + "",
    latitude: resgatarLatitude(55295080),
    longitude: resgatarLongitude(55295080)
    },

    filial013: {
    id: "GOIANA",
    cep:55900000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(55900000) + "",
    latitude: resgatarLatitude(55900000),
    longitude: resgatarLongitude(55900000)
    },

    filial014: {
    id: "GUARABIRA",
    cep:58200000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58200000) + "",
    latitude: resgatarLatitude(58200000),
    longitude: resgatarLongitude(58200000)
    },

    filial015: {
    id: "JABOATÃO DOS GUARARAPES",
    cep:54080310,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(54080310) + "",
    latitude: resgatarLatitude(54080310),
    longitude: resgatarLongitude(54080310)
    },

    filial016: {
    id: "JOÃO CÂMARA",
    cep:59550000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59550000) + "",
    latitude: resgatarLatitude(59550000),
    longitude: resgatarLongitude(59550000)
    },

    filial017: {
    id: "BANCÁRIOS - JOÃO PESSOA",
    cep:58052570,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58052570) + "",
    latitude: resgatarLatitude(58052570),
    longitude: resgatarLongitude(58052570)
    },

    filial018: {
    id: "JUAZEIRO DO NORTE",
    cep:63010212,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(63010212) + "",
    latitude: resgatarLatitude(63010212),
    longitude: resgatarLongitude(63010212)
    },

    filial019: {
    id: "LIMOEIRO DO NORTE",
    cep:62930000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(62930000) + "",
    latitude: resgatarLatitude(62930000),
    longitude: resgatarLongitude(62930000)
    },

    filial020: {
    id: "MAMANGUAPE",
    cep:58280000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58280000) + "",
    latitude: resgatarLatitude(58280000),
    longitude: resgatarLongitude(58280000)
    },

    filial021: {
    id: "MONTEIRO",
    cep:58500000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58500000) + "",
    latitude: resgatarLatitude(58500000),
    longitude: resgatarLongitude(58500000)
    },

    filial022: {
    id: "MOSSORÓ",
    cep:59600195,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59600195) + "",
    latitude: resgatarLatitude(59600195),
    longitude: resgatarLongitude(59600195)
    },

    filial023: {
    id: "NATAL - LAGOA NOVA",
    cep:59064180,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59064180) + "",
    latitude: resgatarLatitude(59064180),
    longitude: resgatarLongitude(59064180)
    },

    filial024: {
    id: "OURICURI",
    cep:56200000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(56200000) + "",
    latitude: resgatarLatitude(56200000),
    longitude: resgatarLongitude(56200000)
    },

    filial025: {
    id: "PALMARES",
    cep:55540000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(55540000) + "",
    latitude: resgatarLatitude(55540000),
    longitude: resgatarLongitude(55540000)
    },

    filial026: {
    id: "PARNAMIRIM",
    cep:59146210,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59146210) + "",
    latitude: resgatarLatitude(59146210),
    longitude: resgatarLongitude(59146210)
    },

    filial027: {
    id: "PATOS",
    cep:58700590,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58700590) + "",
    latitude: resgatarLatitude(58700590),
    longitude: resgatarLongitude(58700590)
    },

    filial028: {
    id: "PAU DOS FERROS",
    cep:59900000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(59900000) + "",
    latitude: resgatarLatitude(59900000),
    longitude: resgatarLongitude(59900000)
    },

    filial029: {
    id: "PETROLINA",
    cep:56304060,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(56304060) + "",
    latitude: resgatarLatitude(56304060),
    longitude: resgatarLongitude(56304060)
    },

    filial030: {
    id: "PRINCESA ISABEL",
    cep:58755000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58755000) + "",
    latitude: resgatarLatitude(58755000),
    longitude: resgatarLongitude(58755000)
    },

    filial031: {
    id: "RECIFE",
    cep:50020140,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(50020140) + "",
    latitude: resgatarLatitude(50020140),
    longitude: resgatarLongitude(50020140)
    },

    filial032: {
    id: "RIO TINTO",
    cep:58297000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58297000) + "",
    latitude: resgatarLatitude(58297000),
    longitude: resgatarLongitude(58297000)
    },

    filial033: {
    id: "SANTA RITA",
    cep:58300380,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58300380) + "",
    latitude: resgatarLatitude(58300380),
    longitude: resgatarLongitude(58300380)
    },

    filial034: {
    id: "SAPÉ",
    cep:58340000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58340000) + "",
    latitude: resgatarLatitude(58340000),
    longitude: resgatarLongitude(58340000)
    },

    filial035: {
    id: "SOBRAL",
    cep:62010560,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(62010560) + "",
    latitude: resgatarLatitude(62010560),
    longitude: resgatarLongitude(62010560)
    },

    filial036: {
    id: "SOLÂNEA",
    cep:58225000,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(58225000) + "",
    latitude: resgatarLatitude(58225000),
    longitude: resgatarLongitude(58225000)
    },

    filial037: {
    id: "SERRA TALHADA",
    cep:56903480,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(56903480) + "",
    latitude: resgatarLatitude(56903480),
    longitude: resgatarLongitude(56903480)
    },

    filial038: {
    id: "SÃO LUIS",
    cep:65075260,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(65075260) + "",
    latitude: resgatarLatitude(65075260),
    longitude: resgatarLongitude(65075260)
    },


  };
  
  //Variaveis para guardar as distancias. Precisa ser acrescentada uma para cada filial
  
  var todasAsDistancias = {
  distanciaFilial001: distanciaFilialCEP(cepUsuario,filiais.filial001.cep),
  distanciaFilial002: distanciaFilialCEP(cepUsuario,filiais.filial002.cep),
  distanciaFilial003: distanciaFilialCEP(cepUsuario,filiais.filial003.cep),
  distanciaFilial004: distanciaFilialCEP(cepUsuario,filiais.filial004.cep),
  distanciaFilial005: distanciaFilialCEP(cepUsuario,filiais.filial005.cep),
  distanciaFilial006: distanciaFilialCEP(cepUsuario,filiais.filial006.cep),
  distanciaFilial007: distanciaFilialCEP(cepUsuario,filiais.filial007.cep),
  distanciaFilial008: distanciaFilialCEP(cepUsuario,filiais.filial008.cep),
  distanciaFilial009: distanciaFilialCEP(cepUsuario,filiais.filial009.cep),
  distanciaFilial010: distanciaFilialCEP(cepUsuario,filiais.filial010.cep),
  distanciaFilial011: distanciaFilialCEP(cepUsuario,filiais.filial011.cep),
  distanciaFilial012: distanciaFilialCEP(cepUsuario,filiais.filial012.cep),
  distanciaFilial013: distanciaFilialCEP(cepUsuario,filiais.filial013.cep),
  distanciaFilial014: distanciaFilialCEP(cepUsuario,filiais.filial014.cep),
  distanciaFilial015: distanciaFilialCEP(cepUsuario,filiais.filial015.cep),
  distanciaFilial016: distanciaFilialCEP(cepUsuario,filiais.filial016.cep),
  distanciaFilial017: distanciaFilialCEP(cepUsuario,filiais.filial017.cep),
  distanciaFilial018: distanciaFilialCEP(cepUsuario,filiais.filial018.cep),
  distanciaFilial019: distanciaFilialCEP(cepUsuario,filiais.filial019.cep),
  distanciaFilial020: distanciaFilialCEP(cepUsuario,filiais.filial020.cep),
  distanciaFilial021: distanciaFilialCEP(cepUsuario,filiais.filial021.cep),
  distanciaFilial022: distanciaFilialCEP(cepUsuario,filiais.filial022.cep),
  distanciaFilial023: distanciaFilialCEP(cepUsuario,filiais.filial023.cep),
  distanciaFilial024: distanciaFilialCEP(cepUsuario,filiais.filial024.cep),
  distanciaFilial025: distanciaFilialCEP(cepUsuario,filiais.filial025.cep),
  distanciaFilial026: distanciaFilialCEP(cepUsuario,filiais.filial026.cep),
  distanciaFilial027: distanciaFilialCEP(cepUsuario,filiais.filial027.cep),
  distanciaFilial028: distanciaFilialCEP(cepUsuario,filiais.filial028.cep),
  distanciaFilial029: distanciaFilialCEP(cepUsuario,filiais.filial029.cep),
  distanciaFilial030: distanciaFilialCEP(cepUsuario,filiais.filial030.cep),
  distanciaFilial031: distanciaFilialCEP(cepUsuario,filiais.filial031.cep),
  distanciaFilial032: distanciaFilialCEP(cepUsuario,filiais.filial032.cep),
  distanciaFilial033: distanciaFilialCEP(cepUsuario,filiais.filial033.cep),
  distanciaFilial034: distanciaFilialCEP(cepUsuario,filiais.filial034.cep),
  distanciaFilial035: distanciaFilialCEP(cepUsuario,filiais.filial035.cep),
  distanciaFilial036: distanciaFilialCEP(cepUsuario,filiais.filial036.cep),
  distanciaFilial037: distanciaFilialCEP(cepUsuario,filiais.filial037.cep),
  distanciaFilial038: distanciaFilialCEP(cepUsuario,filiais.filial038.cep),
  }
  
  
//FUNCOES -- Nao precisa mexer em nada aqui

  
//Funcao para calcular o tamanho da matriz
Object.size = function(obj) {
    var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
};
  
//Funcao para calcular o menor valor entre as distancias
  var min = Infinity;
for(x in todasAsDistancias) {
    if( todasAsDistancias[x] < min) min = todasAsDistancias[x];
}

// Tamanho da Matriz de Distancias das Filiais
var size = Object.size(todasAsDistancias);

// Funcao que diz qual Filial eh a mais proxima do CEP
  
  for (i = 0; i < size; i++) { 
    if ((Object.values(todasAsDistancias)[i]) == min) {
        filialMaisProxima = Object.values(filiais)[i];
      }
    }
  
  //Funcao para extrair a Latitude do local baseado no CEP
  
  function resgatarLatitude(cep) {
    var resultadoLat;
    $.ajax({
    type: "GET",
    async: false,
    url: "https://maps.google.com/maps/api/geocode/xml?components=country:Brasil|postal_code:"+cep,
    dataType: "xml",
    success: function(xml) {
      return resultadoLat = ($("geometry location lat", xml).text());

    },
    error: function() {
      alert("Ocorreu um erro inesperado durante o processamento.");
    }
  })
          return (resultadoLat); 
    ;}
  
//Funcao para extrair a Longitude do local baseado no CEP
function resgatarLongitude(cep) {
    var resultadoLong;
    $.ajax({
    type: "GET",
    async: false,
    url: "https://maps.google.com/maps/api/geocode/xml?components=country:Brasil|postal_code:"+cep,
    dataType: "xml",
    success: function(xml) {
      return resultadoLong = ($("geometry location lng", xml).text());

    },
    error: function() {
      alert("Ocorreu um erro inesperado durante o processamento.");
    }
  })
          return (resultadoLong); 
    ;}

//Funcao para resgatar o endereco baseado no CEP
function resgatarEndereco(cep) {
    var resultadoEndereco;
    $.ajax({
    type: "GET",
    async: false,
    url: "https://maps.google.com/maps/api/geocode/xml?components=country:Brasil|postal_code:"+cep,
    dataType: "xml",
    success: function(xml) {
      return resultadoEndereco = ($("formatted_address", xml).text());
    },
    error: function() {
      alert("Ocorreu um erro inesperado durante o processamento.");
    }
  })
          return (resultadoEndereco); 
    ;}
  

  //Funcao que calcula a distancia entre dois pontos na Terra
  
  function getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {
    var R = 6371; // Raio da Terra em KM
    var dLat = deg2rad(lat2-lat1);  // deg2rad abaixo
    var dLon = deg2rad(lon2-lon1); 
    var a = 
      Math.sin(dLat/2) * Math.sin(dLat/2) +
      Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
      Math.sin(dLon/2) * Math.sin(dLon/2)
      ; 
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
    var d = R * c; // Distancia em KM
    return d;
}

function deg2rad(deg) {
  return deg * (Math.PI/180)
}
  
  
//Funcao para calcular a distancia entre a filial e o CEP do Usuario
  function distanciaFilialCEP (cepUser, cepFilial) {
    var latUsuario = resgatarLatitude(cepUser);
    var longUsuario = resgatarLongitude(cepUser);
    var latFilial = resgatarLatitude(cepFilial);
    var longFilial = resgatarLongitude(cepFilial);
    return getDistanceFromLatLonInKm(latUsuario,longUsuario,latFilial,longFilial);
  };
  
  
//FIM DAS FUNCOES
  
//Alguns exemplos de uso -- ESSA PARTE PODE SER REMOVIDA DO CODIGO
  
  $('#conteudo1').html(
                      "<h1 class='cep__titulo cep__titulo--result titulo titulo-subtitulo'>Escritório mais Próximo:</h1>" +
                       "Nome: " + filialMaisProxima.id + "<br>" +
                       "Endereço: " + filialMaisProxima.endereco + "<br>"
                       //"Telefone: " + filialMaisProxima.telefone + "<br>"
                      );
  
//Fim dos exemplos de uso. Toda essa parte pode ser removida do codigo final
  
});

//FIM DO ALGORITMO