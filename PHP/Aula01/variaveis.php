<?php

/* toda variavel precisa ter a 
primeira  caracter uma letra ou
 um SUBLINHADO
 */


$nome_da_variavel = "valor da variavel";


$contador = 0;

echo('<h1>'.$contador .'</h1>');

$contador = 'zero';

echo('<h1>'.$contador .'</h1>');




imprimirResultado('Isto foi enviado por parametros1');
imprimirResultado('Isto foi enviado por parametros2');
imprimirResultado('Isto foi enviado por parametros3');


function imprimirResultado($varival_recebida) {
  echo('<h1>'.$varival_recebida .'</h1>');
}



function imprimirASoma($varival_recebida1, $varival_recebida2) {
  echo('<p> isto é fixo.... <br> e isto é dinamico: '
  .($varival_recebida1 +  $varival_recebida2)
  .'</p>');
}

imprimirASoma(1, 3);
imprimirASoma(4, 3);




function calcularAreaDeLote($lado, $frente) {
  return $lado * $frente;
}

echo('<p>' . (calcularAreaDeLote(20, 30)*1250.00) . '</p>');
?>