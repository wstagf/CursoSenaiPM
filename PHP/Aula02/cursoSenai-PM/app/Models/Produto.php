<?php
class ProdutoModel {
  private $id;
  private $nome;
  private $alt;
  private $preco;
  private $imageURL;


  public function setId($_id) {
    $this->id = $_id;
  }
  public function getId() {
    return $this->id;
  }

  public function setAlt($alt) {
    $this->alt = $alt;
  }
  public function getAlt() {
    return $this->alt;
  }

  public function setPreco($preco) {
    $this->preco = $preco;
  }
  public function getPreco() {
    return $this->preco;
  }

  public function setImagemUrl($imageURL) {
    $this->imageURL = $imageURL;
  }
  public function getImagemUrl() {
    return $this->imageURL;
  }

  public function setNome($nome) {
    $this->nome = $nome;
  }
  public function getNome() {
    return $this->nome;
  }

  public function getProdutoCopleto() {
    return $this->id."-".$this->nome."-".$this->alt."-".$this->preco."-".$this->imageURL;
  }

}




?>