<?php

class Usuarios
{
  public static function login($usuario, $senha) {
    $segredo = $GLOBALS['segredoJWT'];

    $db = DB::connect();
    $rs = $db->prepare(
        "SELECT * FROM usuarios WHERE usuario = '{$usuario}'"
    );
    $exec = $rs->execute();
    $obj = $rs->fetchObject();
    $rows = $rs->rowCount();

    if ($rows > 0) {
 
      $verificacaoSenha = password_verify($senha, $obj->senha) ? true : false;
      if($verificacaoSenha) {
        
        // calcula o tempo de uma semana convertido em segundos
        $tempoSemanaEmSegundos = 7 * 24 * 60 * 60;

        // calcula a data da expiração do nosso token 
        $expiracao = time() - $tempoSemanaEmSegundos;

        $token = JWT::encode([
            'id'         => $usuario,
            'name'       => $obj->nome,
            'expires_in' => $expiracao,
          ], $GLOBALS['segredoJWT']);

          $db->query("UPDATE usuarios SET token = '$token' WHERE id = $obj->id");
          echo json_encode(['token' => $token, 'data' => JWT::decode($token, $GLOBALS['segredoJWT'])]);
      } else {
        http_response_code(403);
        echo json_encode(['ERRO' => 'Usuario ou senha inválida']);
      }
    } else {
      http_response_code(401);
      echo json_encode(['ERRO' => 'Usuario ou senha inválida']);
    }
  }


  public static function verificar()
  {
      $headers = apache_request_headers();
      if (isset($headers['Authorization'])) {
          $token = str_replace("Bearer ", "", $headers['Authorization']);

          $db   = DB::connect();
          $rs   = $db->prepare("SELECT * FROM usuarios WHERE token = '{$token}'");
          $exec = $rs->execute();
          $obj  = $rs->fetchObject();
          $rows = $rs->rowCount();
          $segredoJWT = $GLOBALS['segredoJWT']; 
      } else {
          echo json_encode(['ERRO' => 'Você não está logado, ou seu token é inválido.']);
          http_response_code(401);
          exit;
      }

      if ($rows > 0) {
        $token_decodificado =  JWT::decode($obj->token, $segredoJWT);

        if($token_decodificado -> expires_in > time()) {
          echo('valido');
          return true;
        } else {
          $db->query("UPDATE usuarios SET token = '' WHERE id = $obj->id");
          echo('vencido');
          return false;
        }
      } else {
        echo('nao encontrado');
        return false;
      }
  }
}