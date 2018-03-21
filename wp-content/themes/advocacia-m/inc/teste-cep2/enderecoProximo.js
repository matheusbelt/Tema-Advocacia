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
    id: "Filial 001",
    cep:59020120,
    telefone:"(83)3333-22222",
    endereco: resgatarEndereco(59020120) + ", Número XXX", //Insira o endereço manualmente, entre aspas, ou gere automaticamente com a funcao resgatarEndereco() usando o CEP como entrada e concatene o número do prédio da filial.
    latitude: resgatarLatitude(59020120),
    longitude: resgatarLongitude(59020120)
    },

    filial002: {
    id: "Filial 002",
    cep:58020840,
    telefone:"(83)3333-22222",
    endereco: resgatarEndereco(58020840) + ", Número XXX",
    latitude: resgatarLatitude(58020840),
    longitude: resgatarLongitude(58020840)
    },
  
    filial003: {
    id: "Filial 003",
    cep:58020320,
    telefone:"(83)3321-22222",
    endereco: resgatarEndereco(58020320) + ", Número XXX",
    latitude: resgatarLatitude(58020320),
    longitude: resgatarLongitude(58020320)
    },
    
    filial004: {
    id: "Filial 004",
    cep:58020330,
    telefone:"(83)3345-22222",
    endereco: resgatarEndereco(58020330) + ", Número XXX",
    latitude: resgatarLatitude(58020330),
    longitude: resgatarLongitude(58020330)
    },

    filial005: {
    id: "Filial 005",
    cep:60873845,
    telefone:"(83)tel da filial 05",
    endereco: resgatarEndereco(60873845) + ", Número 004",
    latitude: resgatarLatitude(60873845),
    longitude: resgatarLongitude(60873845)
    }

  };
  
  //Variaveis para guardar as distancias. Precisa ser acrescentada uma para cada filial
  
  var todasAsDistancias = {
  distanciaFilial001: distanciaFilialCEP(cepUsuario,filiais.filial001.cep),
  distanciaFilial002: distanciaFilialCEP(cepUsuario,filiais.filial002.cep),
  distanciaFilial003: distanciaFilialCEP(cepUsuario,filiais.filial003.cep),
  distanciaFilial004: distanciaFilialCEP(cepUsuario,filiais.filial004.cep),
  distanciaFilial005: distanciaFilialCEP(cepUsuario,filiais.filial005.cep),
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
                       "Endereço: " + filialMaisProxima.endereco + "<br>" +
                       "Telefone: " + filialMaisProxima.telefone + "<br>"
                      );
  
//Fim dos exemplos de uso. Toda essa parte pode ser removida do codigo final
  
});

//FIM DO ALGORITMO