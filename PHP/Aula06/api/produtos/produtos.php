<?php

  if ($method=='GET' && $item == '') {
    $db = DB::connect();
    $rs = $db->prepare("SELECT * FROM produtos ");
    $rs->execute();

    // "fetchAll" busca todo os registros
    // FETCH_ASSOC serve para trazer o nome da coluna para o indice 
    $obj = $rs->fetchAll(PDO::FETCH_ASSOC); 

    if ($obj) {
      echo json_encode(["dados" => $obj]);
    } else {
      echo json_encode(["dados" => 'Não existem dados para retornar']);
    }
  }

  if ($method=='GET' && $item != '') { 
    $db = DB::connect();
    $rs = $db->prepare("SELECT * FROM produtos WHERE id={$item}");
    $rs->execute();

    // "fetchObject" retorna somente um objeto com o
    //     item que foi buscado do banco de dados
    $obj = $rs->fetchObject();

    if ($obj) {
      echo json_encode(["dados" => $obj]);
    } else {
      echo json_encode(["dados" => 'Não existem dados para retornar']);
    }
  }


  if ($method=='POST') { 
    //var_dump(array_keys($_POST));

    $sql = "INSERT INTO produtos (";

    $contador = 1;

     // array_keys retorna as chaves de um array
    foreach (array_keys($_POST) as $valor) {
      if (count($_POST) > $contador) {
        $sql .= "{$valor},";
      } else {
        $sql .= "{$valor}";
      }
      $contador++;
    }


    $sql .= ") VALUES (";
    
    $contador = 1;

     // array_values retorna os valores  de um array
    foreach (array_values($_POST) as $valor) {
      if (count($_POST) > $contador) {
        $sql .= "'{$valor}',";
      } else {
        $sql .= "'{$valor}'";
      }
      $contador++;
    }
    $sql .= ")";

    $db = DB::connect();
    $rs = $db->prepare($sql);
    $exec = $rs->execute();

    if ($exec) {
      echo json_encode(["dados" => 'Dados foram inseridos com sucesso.']);
    } else {
        echo json_encode(["dados" => 'Houve algum erro ao inseris os dados.']);
    }


    
  }

