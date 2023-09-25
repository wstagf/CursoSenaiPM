<?php

  require_once('./produto_model.php');
    
  class ProdutoRepository {
    var  $listaProdutos = array();
    public function save($p) {
      array_push($listaProdutos, $p);
      }
      
      public function update($id, $p) {
        $found_key = array_search('blue', array_column($people, 'fav_color'));
      // logica para atualizar cliente no banco
      }
      
      public function remove() {
      // logica para remover cliente do banco
      }
      
      public function listAll() {
        return $listaProdutos;
      }
      
      /**
      * ...
      * outros métodos de abstração de banco
      * ...
      *
      */
    
  }
?>