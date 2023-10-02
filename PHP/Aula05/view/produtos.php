<?php
    include 'controller/banco.php';
?>

<main > 
    <section id="capacetes" style="border: 1px solid blue;"> 
    <?php
        $pdo = Banco::conectar();
        $sql = "select * from  produtos where tipo = 'capacete';";

        foreach ($pdo->query($sql) as $key => $row) {
            echo ( 
                "<div class='produto'>"
                ." <img src='" .$row['imagemURL']."' alt='".$row['alt']."'/>"
                ."<h2>" .$row['nome'].  "</h2>"
                ."<p>R$ " .$row['preco']."</p>"
                ."<button class='adicionarCarrinho' "
                ."onclick='adicionarCarrinho(" .$row['id'].")'> "
                ."Adicionar ao Carrinho</button>"
                ."</div>" 
            ); 
        }
        Banco::desconectar();
    ?>
    </section>
    <section id="blusas" style="border: 1px solid red;">
        <?php

            // connectar no banco de dados
            $pdo = Banco::conectar();

            // declara a consulta que sera executada no banco de dados
            $sql = "select * from  produtos where tipo = 'blusa';";


            // foreach... executa uma repeticao, a primeiro parte do foreach é a lista
            // $pdo->query($sql)  == lista...
            // Acessou o objeto $pdo, executou função query() passando o aramento '$sql'
            // assim, o resultado é a lista que será enviada como primeira parte do foreach


            // a segunda parte do foreach (depois do '=>' ) é o $row, com ela estamos 
            // dizendo ao php para criar array interno no foreach e nela colocar os dados do
            // registro que estamos na lista para cada vez que entrar dentro do foreach

        
            foreach ($pdo->query($sql) as $key => $row) {
                echo ( 
                    "<div class='produto'>" 
                        // utilizamos o array $row e acessamos o item pelo nome da coluna "imagemURL"
                        // este dado também poderia ser acessado pelo número da coluna
                        // É Melhor que seja com o nome da coluna, pois pelo numero pode falhar caso a sequencia
                        // seja alterada no baco de dados.
                    ." <img src='" .$row['imagemURL']."' alt='".$row['alt']."'/>"
                    ."<h2>" .$row['nome'].  "</h2>"
                    ."<p>R$ " .$row['preco']."</p>"
                    ."<button class='adicionarCarrinho' "
                    ."onclick='adicionarCarrinho(" .$row['id'].")'> "
                    ."Adicionar ao Carrinho</button>"
                    ."</div>" 
                ); 
            }
            Banco::desconectar();
        ?>
    </section>
</main>