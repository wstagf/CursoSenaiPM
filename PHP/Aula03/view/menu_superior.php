<header>
    <h1>Minha Loja Online</h1>
    <div class="acoes">
        <a href="#" id="link_carrinho" onclick="abrirCarrinho()">Mostrar carrinho ()</a>
        <a href="#" id="link_filtrar_todos">Todos</a>
        <a href="#" id="link_filtrar_capacetes">Capacetes</a>
        <a href="#" id="link_filtrar_blusas">Blusas</a>
    </div>
    <br><br> 
    <div class="busca"> 
        <div class="texto">
            <input type="text" id="textoBuscar" placeholder="Digite o nome para por nome do produto"/>
            <input type="button" id="botaoBuscar" value="Buscar" onclick="buscarPorTexto()" />
        </div>
        <div class="valores">
            <div class="valorMinimo">
                <p>Valor mínimo: <span id="valorMinimo">0</span> </p>
                <input type="range" 
                    id="valorRangeMin" 
                    max="100" 
                    min="0"
                    value="0"
                    onchange="alterarValorRange(event, 'min')"
                    /> 
            </div>
            <div class="valorMaximo">
                <p>Valor maximo: <span id="valorMaximo">100</span> </p>
                <input type="range" 
                    id="valorRangeMax" 
                    max="100" 
                    min="0"
                    value="100"
                    onchange="alterarValorRange(event, 'max')"
                    /> 
            </div>
        </div>
    </div>
</header>