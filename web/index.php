<?php
require_once('req/mysql_open.php'); /* Открытие базы */

if (isset($_GET["sort"])){
	$sorting=$_GET["sort"];
} else {
	$sorting="id_pc";	
}
if (isset($_GET["order"])){
	if ($_GET["order"] == "ASC") {
		$ordering="DESC";
	} else {
		$ordering="ASC";		
	}
} else {
	$ordering="ASC";	
}

?>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<body>

<h1>Система отслеживания текущей конфигурации компьютеров в организации</h1>


<table id="dtHorizontalVerticalExample" class="table table-striped table-bordered table-sm table-hover" cellspacing="0" width="50%">
  <thead>
    <tr>
      <th scope="col"><a href="index.php?sort=id_pc&order=<?=$ordering?>">#</a></th>
      <th scope="col"><a href="index.php?sort=date_pc&order=<?=$ordering?>">Дата обновления</a></th>
      <th scope="col"><a href="index.php?sort=name_pc&order=<?=$ordering?>">Имя компьютера</a></th>
      <th scope="col"><a href="index.php?sort=domain_pc&order=<?=$ordering?>">Домен</a></th>
      <th scope="col"><a href="index.php?sort=owner_pc&order=<?=$ordering?>">Пользователь</a></th>
      <th scope="col"><a href="index.php?sort=totalmemory_pc&order=<?=$ordering?>">Объем ОЗУ</a></th>
      <!--<th scope="col"><a href="index.php?sort=osRegUser_pc&order=<?=$ordering?>">Рег. пользователь</a></th>-->
      <!--<th scope="col"><a href="index.php?sort=osSerial_pc&order=<?=$ordering?>">Ключ ОС</a></th>-->
      <th scope="col"><a href="index.php?sort=osCaption_pc&order=<?=$ordering?>">Система</a></th>
      <th scope="col"><a href="index.php?sort=boardManufacturer_pc&order=<?=$ordering?>">Материнка производитель</a></th>
      <th scope="col"><a href="index.php?sort=boardProduct_pc&order=<?=$ordering?>">Материнка модель</a></th>
      <th scope="col"><a href="index.php?sort=boardSerial_pc&order=<?=$ordering?>">Материнка серийный номер</a></th>
      <th scope="col"><a href="index.php?sort=procName_pc&order=<?=$ordering?>">Процессор</a></th>
      <th scope="col"><a href="index.php?sort=procSocket_pc&order=<?=$ordering?>">Сокет</a></th>
      <!-- <th scope="col">Оперативка</th> -->
      <th scope="col">Диски</th>
      <th scope="col">Видео</th>
    </tr>
  </thead>
  <tbody>
	<?php
		$readSQL="SELECT * FROM `pc` ORDER BY `pc`.`$sorting` $ordering";
		$Rsql=$mysql->query($readSQL);
		while ($row = $Rsql->fetch_assoc()){
			?>
			<tr>
			  <td scope="row"><?=$row["id_pc"]?></td>
			  <td><?=$row["date_pc"]?></td>
			  <td><?=$row["name_pc"]?></td>
			  <td><?=$row["domain_pc"]?></td>
			  <td><?=$row["owner_pc"]?></td>
			  <?php $ozu = round($row["totalmemory_pc"]/1024/1024/1024,0,PHP_ROUND_HALF_EVEN);
			  if ($ozu <= 4) {
				  ?>
				  <td style="color:red"><?=$ozu?> Гб</td>
				  <?php
			  } else {
				  ?>
				  <td><?=$ozu?> Гб</td>
				  <?php
			  }?>
			  <!-- <td><?=$row["osRegUser_pc"]?></td> -->
			  <!--<td><?=$row["osSerial_pc"]?></td> -->
			  <td><?=$row["osCaption_pc"]?></td>
			  <td><?=$row["boardManufacturer_pc"]?></td>
			  
			  <td><?=$row["boardProduct_pc"]?></td>
			  <td><?=$row["boardSerial_pc"]?></td>
			  <td><?=$row["procName_pc"]?></td>
			  <td><?=$row["procSocket_pc"]?></td>
			  <!-- <td><?=$row["memory_pc"]?></td> -->
			  <td><?=$row["drive_pc"]?></td>
			  <td><?=$row["video_pc"]?></td>
			</tr>
			<?php
		}
	?>
  </tbody>
</table>

</body>
</html>


<?php require_once('req/mysql_close.php'); /* Закрытие базы */ ?>