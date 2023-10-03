<?php


class DB {

  public static function connect() {
    $host = 'localhost';
    $port = '3307';
    $user = 'root';
    $pass = '';
    $base = 'pmgo';

    return new PDO("mysql:host={$host}:{$port};dbname={$base};charset=UTF8;", $user, $pass);
  }
}