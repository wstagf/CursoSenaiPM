<?php

$x_inteiro = 25;  // varivel do tipo inteiro; 
$x_decimal = 25.90;  // varivel do tipo inteiro; 
$x_hexadecimal = 0xFF0000;  // varivel do tipo inteiro; 
$x_octal = 0123;


//echo(is_int($x));

if(is_numeric($x_hexadecimal)) {
  echo('verdadeiro');
} else {
  echo('falso');
  
}


// is_numeric() // testa se é numerico (int, float, hexadecimal, octal...) 

// is_int() // testa se é inteiro

// is_double() // testa se é numero com virgula (ex: 90.99)



// variavel do tipo string
$nome_do_usuario = "Thiago Augusto";


// variavel do tipo string
$houve_sucesso = true;
$houve_erro = false;

// variavel do tipo lista / matriz / array
$lista = array('a', 'b', 0, 190, true, false, null);


echo('<br/>');
echo(sizeof($lista));

echo('<br/>' ); 
echo($lista[3]);


// 1 == "1"  => true;
// 1 === "1"  => false;
?>