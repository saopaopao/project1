<?php
$user = 'host'
$password = 'host'
$db = 'classmate';
$host = 'localhost';
$port = 3306;

$conn = mysqli_connect()
$vip = mysql_connect(
	$conn,
	$host,
	$user,
	$password,
	$db,
	$port
);

if($vip != 1){
	die("连接失败");
}
?>