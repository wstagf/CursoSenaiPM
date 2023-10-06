<?php 

class Produtos {
  public static function obterTodos() {

    $db = DB::connect();
    $rs = $db->prepare("SELECT * FROM produtos ");
    $rs->execute();

    // "fetchAll" busca todo os registros
    // FETCH_ASSOC serve para trazer o nome da coluna para o indice 
    $obj = $rs->fetchAll(PDO::FETCH_ASSOC); 

    if ($obj) {
     // http_response_code(200);
      echo json_encode(["dados" => $obj]);
    } else {
      //http_response_code(200);
      echo json_encode(["dados" => 'Não existem dados para retornar']);
    }
  }
