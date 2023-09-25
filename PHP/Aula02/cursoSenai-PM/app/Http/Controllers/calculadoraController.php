<?php
 class calculadoraController { 
  public function somar($num1, $num2) {
    return $num1 + $num2;
  }

  public function subtrair($num1, $num2) {
    return $num1 -  $num2;
  }

  public function dividir($num1, $num2) {
    return $num1 / $num2;
  }

  public function multiplicar($num1, $num2) {
    return $num1 * $num2;
  }
}


?>