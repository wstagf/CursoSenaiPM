<div class="acoes">
    <a href="#" id="link_carrinho" onclick="abrirCarrinho()">Mostrar carrinho ()</a>
    <span>
        <span>Filtrar: </span>
        <a href="#" id="link_filtrar_todos">Todos</a>
        <a href="#" id="link_filtrar_capacetes">Capacetes</a>
        <a href="#" id="link_filtrar_blusas">Blusas</a>
    </span> 
    <a href="contato.php" id="link_filtrar_blusas">Contato</a>
</div>
<br><br> 
<div class="busca"> 
    <div class="texto">
        <input type="text" id="textoBuscar" placeholder="Digite o nome para por nome do produto"/>
        <input type="button" id="botaoBuscar" value="Buscar" onclick="buscarPorTexto()" />
    </div>
    <div class="valores">
        <div class="valorMinimo">
            <p>Valor mínimo: <span id="valorMinimo">0</span>  </p>
            
        </div>
        <div class="valorMaximo">
            <p>Valor maximo: <span id="valorMaximo">100</span> <input type="range" 
                id="valorRangeMax" 
                max="100" 
                min="0"
                value="100"
                onchange="alterarValorRange(event, 'max')"
                /> 
            </p> 
        </div>
    </div>
</div>