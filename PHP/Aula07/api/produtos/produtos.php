<?php
  if ($method=='GET' && $item == '') {
   Produtos::obterTodos();
  }

  if(Usuarios::verificar()) {

    if ($method=='GET' && $item != '') { 
      Produtos::obterPorID($item);
    }


  if ($method=='POST') { 
      Produtos::inserirProduto($_POST);
  }


  
  if ($method=='PUT') { 
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


    $sql .= " WHERE id={$item}";

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


  if ($method=='DELETE') { 

    // caso queiram receber algum dado por form_data durante o delete 
    // pode-se utilizar este codigo abaixo...

    /* 
    $form_data= json_encode(file_get_contents("php://input"));
      $key_size=52;
      $key=substr($form_data, 1, $key_size);
      $acc_params=explode($key,$form_data);
      array_shift($acc_params);
      array_pop($acc_params);
      foreach ($acc_params as $item){
          $start_key=' name=\"';
          $end_key='\"\r\n\r\n';
          $start_key_pos=strpos($item,$start_key)+strlen($start_key);
          $end_key_pos=strpos($item,$end_key);
          
          $key=substr($item, $start_key_pos, ($end_key_pos-$start_key_pos));
          
          $end_value='\r\n';
          $value=substr($item, $end_key_pos+strlen($end_key), -strlen($end_value));
          $_DELETE[$key]=$value;
      }
      $GLOBALS["_DELETE"]=$_DELETE;
    
    var_dump($_DELETE);

    */


    $db = DB::connect();
    $rs = $db->prepare("DELETE FROM produtos WHERE id={$item}");
    $exec = $rs->execute();

    if ($exec) {
        echo json_encode(["dados" => 'Dados foram excluidos com sucesso.']);
    } else {
        echo json_encode(["dados" => 'Houve algum erro ao excluir os dados.']);
    }
  }
} 