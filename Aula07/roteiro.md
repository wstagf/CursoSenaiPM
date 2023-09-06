<!-- HTML5 /  HTML Semantico... -->

<header> <!-- CABEÇALHO -->
<section><!-- CADA SESSÃO DA PAGINA -->
<article> <!-- UM POST EM UMA PAGINA DE BLOG -->
<nav> <!-- NAVEGA;CÃO -->
<aside> <!-- CONTEUDO ADICIONAL -->
<main> <!-- PRINCIPAL -->
<figure> <!-- FIGURA -->
<footer> <!-- RODAPE -->
<a> <!-- LINK -->
<em> <!-- TEXTO ENFATIZADO -->
<strong> <!-- TEXTO DESTACA -->
<cite> <!-- CITAÇÃO DE TEXTO -->
<q> <!-- PERGUNTAS -->
<time> <!-- DATA E TEMPO -->

SEO... LEITORES ACESSIBILIDADE 

<figure>
    <img>
    <figcaption>Figura 1. Imagem</figcaption>
</figure>


UNIDADES DE MEDIDA  REM   PX   


O que é a dimensão Px
É importante deixar claro inicialmente que o pixel que utilizamos em CSS não é exatamente igual ao pixel físico. O CSS define o que podemos chamar de pixel referência, que mede o tamanho de um pixel em uma tela de 96dpi. Quando especificamos a unidade pixel em um projeto, o agente que irá usar o valor atribuído fará o reescalonamento para sua unidade que corresponda ao pixel de referência.

Além disso, o pixel é uma unidade absoluta e não escalável. A mudança do seu valor não afeta outros valores de unidade absolutas, ou seja, o valor do pixel continua imutável mesmo após configurações do usuário.




O que é rem
Diferente do pixel, o rem é uma unidade escalável e relativa, ele varia de acordo com a dimensão root do seu navegador (por padrão essa unidade é 16px), na maior parte das vezes 1rem = 16px. Podendo variar se o tamanho da fonte raiz for alterado.


16 + 4= 20PX...  = 1.25 REM 

Abaixo você consegue ver que o tamanho da fonte raiz do chrome está configurada para 16px.






O que é em
O em também é uma unidade dinâmica, porém sua referência não é o valor raiz do navegador, de acordo com o w3Schools o em é igual ao valor calculado da propriedade font-size do elemento no qual ela é usada, na maior parte das vezes pode ser o próprio pai do elemento. Um breve exemplo: um elemento com font-size 2rem (32px se considerarmos o valor padrão do root) possui um filho com font-size de 1em, então o valor do filho será igual a 32px, já que o valor referência neste caso é o pai.








--- 


ABSOLUTE LAYOUT...  TABLE  -- 
    ORIENTADO A TABELAS... 
    MAIS ANTIGO DE TODOS... 
    OBRIGA SEMPRE TER UM  TAMANHO, UM TAMANHO CONHECIDO...



GRID LAYOUT  - cssgrid
    ORIENTADO A DIVS... TABLELESS.... 
    FOI O PRINCIPAL ENTRE 2005 E 2015... 
    DEPENDE MUITO DOS OBJETOS.. RESPONSIVIDADE PARCIAL...
    MUITO UTILIZADO COM BOOTSTRAP.. COL-MD-4... TODA GRID TEM 12 COLUNAS... 
    RECENTEMENTE RESSUCITADO PELO tailwindcss   https://tailwindcss.com/


FLEX LAYOUT  - FLEXBOX
    MAIS ATUAL
    DESDE 2015 FOI LANÇADO... 
    É O MODELO DE APPS MOBILE... 
    POSICIONAMENTO RELATIVO... 
        POSICIONALMENTO A COLUNA / LINHA
        ALINHAMENTO - INICIO, MEIO , FIM.
        ESPACAMENTO IGUAL / NENHUM... ENTRE OBJETOS
        QUEBRA LINHA
        TAMANHO MIN
        TAMANHO MAX...
        

        https://medium.com/@lainakarosic/getting-started-with-css-flexbox-basics-58d875a574ce

    https://flexboxfroggy.com/   jogo para aprender flex-box...









