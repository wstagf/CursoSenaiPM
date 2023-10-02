<?php

    include 'controller/banco.php';
  
    $id = $_GET['id'] ?? null; 

    if (!empty($id)) {
        $pdo = Banco::conectar();
        $sql = 'select * from produtos where id = '.$id;

        $consultar = $pdo->prepare($sql);
        $consultar -> execute();
 

        // $quantidadeDeletadas = $deletar->rowCount();

        // if($quantidadeDeletadas > 0) {
        //     echo('Excluido com sucesso');
        // } else {
        //     echo('Erro ao excluir');
        // } 
    }  
?>