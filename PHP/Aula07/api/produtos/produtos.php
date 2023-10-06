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
      Produtos::editarProduto($item);    
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
    if ($method=='DELETE') { 
      Produtos::excluirProduto($item);
    }
} 