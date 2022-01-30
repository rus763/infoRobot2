<?php
// Открываем новое соединение с  MySQL сервером
$mysql = new mysqli('192.168.1.1','root','root','myBase');

//Выводим любую ошибку соединения
if ($mysql->connect_error) {
    die('Error : ('. $mysql->connect_errno .') '. $mysql->connect_error);
}
$mysql->set_charset("utf8");
?>
