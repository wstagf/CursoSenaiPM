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

  public static function obterPorID($id) {
    $db = DB::connect();
    $rs = $db->prepare("SELECT * FROM produtos WHERE id={$id}");
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

  public static function inserirProduto($dados) {
    //var_dump(array_keys($_POST));

    $sql = "INSERT INTO produtos (";

    $contador = 1;

     // array_keys retorna as chaves de um array
    foreach (array_keys($dados) as $valor) {
      if (count($dados) > $contador) {
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


  public static function editarProduto($id) {
     // obtem o que foi pasado e salva na variavel formdata
     $form_data= json_encode(file_get_contents("php://input")); 
      $key_size=52;
      $key=substr($form_data, 1, $key_size);

      $acc_params=explode($key,$form_data);
      array_shift($acc_params);
      array_pop($acc_params);
      foreach ($acc_params as $item_hack){
          $start_key=' name=\"';
          $end_key='\"\r\n\r\n';
          $start_key_pos=strpos($item_hack,$start_key)+strlen($start_key);
          $end_key_pos=strpos($item_hack,$end_key);
          
          $key=substr($item_hack, $start_key_pos, ($end_key_pos-$start_key_pos));
          
          $end_value='\r\n';
          $value=substr($item_hack, $end_key_pos+strlen($end_key), -strlen($end_value));
          $_PUT[$key]=$value;
      }
      $GLOBALS["_PUT"]=$_PUT;
    

    $sql = "UPDATE produtos SET ";

    $contador = 1;

     // array_keys retorna as chaves de um array
    foreach (array_keys($_PUT) as $indice) {
      if (count($_PUT) > $contador) {
        $sql .= "{$indice} = '{$_PUT[$indice]}', ";
      } else {
        $sql .= "{$indice} = '{$_PUT[$indice]}' ";
      }
      $contador++;
    }


    $sql .= " WHERE id={$id}";

    // var_dump($sql);
    $db = DB::connect();
    $rs = $db->prepare($sql);
    $exec = $rs->execute();

    if ($exec) {
        echo json_encode(["dados" => 'Dados atualizados com sucesso.']);
    } else {
        echo json_encode(["dados" => 'Houve erro ao atualizar dados.']);
    }
  }
}