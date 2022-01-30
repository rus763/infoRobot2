<?php

require_once('require/open_mysql.php'); /* Открытие базы */

// Переобозначаем аргументы из командной строки в новые переменные
// $argv[0] is '/path/to/wwwpublic/path/to/script.php'
$pcName2 = $argv[1];
$pcDomain2 = $argv[2];
$pcUser2 = $argv[3];
$pcTotalMem2 = $argv[4];
$osCaption2 = $argv[5];
$osArch2 = $argv[6];
$osRegUser2 = $argv[7];
$osSerial2 = $argv[8];
$boardManufacturer2 = $argv[9];
$boardProduct2 = $argv[10];
$boardSerial2 = $argv[11];
$cpuName2 = $argv[12];
$cpuSoket2 = $argv[13];
$alldrive = $argv[14];
$allvideo = $argv[15];

//Проверка повтора записей идет по имени компьютера
	$selectSQLU = "SELECT COUNT(*) FROM `pc` WHERE `name_pc` = '$pcName2'";
	$Ru = $mysql->query($selectSQLU);
	if ( $Ru->fetch_assoc()['COUNT(*)'] != 0 ) {
		// Если запись существует, то обновляем в ней значения
		$insertSQL="UPDATE `pc` SET `date_pc` = CURRENT_TIMESTAMP,
									`domain_pc` = '$pcDomain2',
									`owner_pc` = '$pcUser2', 
									`totalmemory_pc` = '$pcTotalMem2', 
									`osCaption_pc` = '$osCaption2', 
									`osArchitecture_pc` = '$osArch2', 
									`osRegUser_pc` = '$osRegUser2', 
									`osSerial_pc` = '$osSerial2',
									`boardManufacturer_pc` = '$boardManufacturer2',
									`boardProduct_pc` = '$boardProduct2',
									`boardSerial_pc` = '$boardSerial2',
									`procName_pc` = '$cpuName2',
									`procSocket_pc` = '$cpuSoket2',
									`drive_pc` = '$alldrive',
									`video_pc` = '$allvideo'
									WHERE `name_pc` = '$pcName2'";
	} else {
		// Если записи нет, то добавляем новую запись
		$insertSQL="INSERT INTO `pc` (`id_pc`, `name_pc`, `domain_pc`, `owner_pc`, `totalmemory_pc`, `osCaption_pc`, `osArchitecture_pc`, `osRegUser_pc`, `osSerial_pc`, `boardManufacturer_pc`, `boardProduct_pc`, `boardSerial_pc`, `procName_pc`, `procSocket_pc`, `memory_pc`, `drive_pc`, `video_pc`) VALUES (NULL, '$pcName2', '$pcDomain2', '$pcUser2', '$pcTotalMem2', '$osCaption2', '$osArch2', '$osRegUser2', '$osSerial2', '$boardManufacturer2', '$boardProduct2', '$boardSerial2', '$cpuName2', '$cpuSoket2', '', '$alldrive', '$allvideo')";
	}
	// Очистим запрос
	$Ru->free();


// Передадим результат запроса в переменную, если она окажется истиной, то все прошло без ошибок. Иначе ошибка будет выведена в консоли
$success=$mysql->query ($insertSQL);

	if (!$success){
		die('Error : ('. $mysql->errno .') '. $mysql->error);
	}  
	 else {
		  echo "Запись добавлена </br>";
	 }





require_once('require/close_mysql.php'); /* Закрытие базы */ ?>