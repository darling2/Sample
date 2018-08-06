<?php 
	//session_start(); 
	include '_db.php';
	
	include 'header.php';

	$query=mysql_query("insert into comment (name,body) values ('$_POST[comment_nm]', '$_POST[comment_body]')");
	//$row1=mysql_fetch_assoc($query);

	


	echo "<script>history.back()</script>";
?>

