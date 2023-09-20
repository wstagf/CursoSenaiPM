<?php
$valor = 2890;
if($valor < 200) {
    echo('<h1>Menor</h1>');
} else {
    echo('<h1>Maior</h1>');
}


switch ($valor) {
    case 100:
        echo('<h1>100</h1>');
        break;
    case 200:
        echo('<h1>200</h1>');
        break;
    default:
        echo('<h1>outro valor</h1>');
        break;
}




?>