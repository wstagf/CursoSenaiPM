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
      
      Produtos::editarProduto($_PUT, $item);    
    }

    if ($method=='DELETE') { 
      Produtos::excluirProduto($item);
    }
} 