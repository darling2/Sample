<?php 
	//session_start(); 
	include '_db.php';
	
	$query=mysql_query("update board set  subject='$_POST[subject]' ,body='$_POST[body]' where num='$_POST[num]'"); 


	//$row=mysql_fetch_assoc($query);

	if(!$query){
		die(mysql_error());
	}
	include 'header.php';

	echo "<script>location.href='board.php'</script>";
?>

