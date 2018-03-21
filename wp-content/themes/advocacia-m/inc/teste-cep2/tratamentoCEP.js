//Funcoes para tratamento do input do CEP

  var cepTemporario;

  function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i)
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}

$("#botao").click(function(){
   var item = $("#selecao" ).val();
  if (item == "") {
    $("#resposta").html('Campo vazio. Digite o CEP desejado.');
  }
  else if (/^[ 0-9\b]+$/.test(item) == false) {
      $("#resposta").html('O cep não pode conter letras nem caracteres especiais.');
  }
   else if (item.length < 8) {
        $("#resposta").html('CEP Inválido.<br> Certifique-se de ter digitado os 8 números.');
      } else 
    imprimir(item);
});

function imprimir(num) {
    $.get("https://viacep.com.br/ws/" + num + "/json/" , function(data){
      if (data.erro == true) {
      $("#resposta").html('Este CEP não existe!'); 
      } else {
       sessionStorage.setItem('cepTemp', num);
       window.location.href = "localhost/advocacia-marcos/cep-result/"; //colocar a pagina a ser redirecionada aqui
      }
     }); 

  }
