<?php

header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

date_default_timezone_set("America/Sao_Paulo");
 
if(isset($_GET['caminho'])) {
  $caminho = explode("/" , $_GET['caminho']);
  // echo($caminho); 
  var_dump($caminho);
} else {
  echo('Caminho não existe');
}
