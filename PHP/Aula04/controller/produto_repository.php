<?php

  require_once('./produto_model.php');
    
  class ProdutoRepository {
    private $listaProdutos =  array();
    public function save($p) {
      echo('sei la');
      array_push($listaProdutos, $p);
    }
      
    public function update($id, $p) {
      echo('sei la');
        //$found_key = array_search('blue', array_column($people, 'fav_color'));
      // logica para atualizar cliente no banco
    }
      
    public function remove() {
      echo('sei la');
      // logica para remover cliente do banco
    }
      
    public function listAll() {
      echo('sei la');
      //return $listaProdutos();
    } 
    
  }
?>