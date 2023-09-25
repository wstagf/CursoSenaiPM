<?php

use Illuminate\Support\Facades\Route;

require_once '../app/Http/Controllers/calculadoraController.php';
require_once '../app/Http/Controllers/ProdutoController.php';

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/produtos/{acao}', function ($acao) {
    $produtoController = new ProdutoController();

    if($acao === "listar") {
        return view('listar', ['produtos' => $produtoController->obterListaDeProdutos() ]);
    } else {
        return view('index');
    }
});



Route::get('/calculadora/{operacao}/{num1}/{num2}', 
    function ($operacao, $num1, $num2) {
        $calc = new calculadoraController();

        switch ($operacao) {
            case 'soma':
                return view('resultado', ['total' => ($calc->somar($num1, $num2)) ]);
            case 'subtracao':
                    return view('resultado', ['total' => ($calc->subtrair($num1, $num2)) ]);

            case 'divisao':
                return view('resultado', ['total' => ($calc->dividir($num1, $num2)) ]);

            case 'multiplicacao':
                return view('resultado', ['total' => ($calc->multiplicar($num1, $num2)) ]);
            
            default:
                return view('resultado', ['total' => 'outro valor' ]);
        }
    }
);
