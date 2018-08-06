<?php 
	session_start(); 
	include '_db.php';
	$query=mysql_query("insert into board (subject,name,body) values('$_POST[subject]','$_POST[name]','$_POST[body]')");

	if(!$query){
		die(mysql_error());
	}
	echo "<script>location.href='board.php'</script>";

	//include 'header.php';
?>

