<?php

use ProdutoModel;
 
class ProdutoController {
  public function obterListaDeProdutos() {

    $p1 = new ProdutoModel();
    $p1->setNome('Capacete');
    $p1->setId('1');
    $p1->setAlt('Capacete de formula 1');
    $p1->setImagemUrl('https://sanmarino.fbitsstatic.net/img/p/capacete-formula-1-r-grafic-preto-70188/256908.jpg');
    $p1->setPreco(360.98);
    return [
      $p1
    ];
  }
}
?>