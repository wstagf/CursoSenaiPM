<?php

if ($method=='POST') { 

  //echo password_hash("123456", PASSWORD_DEFAULT);

  Usuarios::login($_POST['usuario'], $_POST['senha']);
}

if ($method=='GET') { 
  Usuarios::verificar();
}