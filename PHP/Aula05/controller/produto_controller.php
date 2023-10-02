<?php
require_once 'model/produto_model.php';
 
class ProdutoController {

 public function listar() {
 $produto = new ProdutoModel();
 $produtos = $produto->listAll();

 $_REQUEST['produtos'] = $produtos;

 require_once 'view/produto_view.php';
 }
}

?>