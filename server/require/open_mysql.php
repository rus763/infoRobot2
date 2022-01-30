<?php
	// Для начала делаем проверку включен ли модуль mysqli
	if (!function_exists('mysqli_init') && !extension_loaded('mysqli')) {
		echo 'We don\'t have mysqli!!!';
		exit();
	} else {
		echo 'Phew we have it! </br>';
	}
	// Открываем новое соединение с  MySQL сервером
	//$mysql = new mysqli('ip-адрес или доменное имя','логин','пароль','имя БД');
	$mysql = new mysqli('192.168.1.1','root','root','myBase');

	//Выводим любую ошибку соединения
	if ($mysql->connect_error) {
		die('Error : ('. $mysql->connect_errno .') '. $mysql->connect_error);
	}

	//Устанавливаем кодировку
	$mysql->set_charset("utf8");
?>
