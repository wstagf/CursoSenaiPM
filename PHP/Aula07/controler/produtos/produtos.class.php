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


  public static function editarProduto($dados, $id) {
    $sql = "UPDATE produtos SET ";

    $contador = 1;

     // array_keys retorna as chaves de um array
    foreach (array_keys($dados) as $indice) {
      if (count($dados) > $contador) {
        $sql .= "{$indice} = '{$dados[$indice]}', ";
      } else {
        $sql .= "{$indice} = '{$dados[$indice]}' ";
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

  public static function excluirProduto($id) {
    $db = DB::connect();
    $rs = $db->prepare("DELETE FROM produtos WHERE id={$id}");
    $exec = $rs->execute();

    if ($exec) {
        echo json_encode(["dados" => 'Dados foram excluidos com sucesso.']);
    } else {
        echo json_encode(["dados" => 'Houve algum erro ao excluir os dados.']);
    }
  }
}