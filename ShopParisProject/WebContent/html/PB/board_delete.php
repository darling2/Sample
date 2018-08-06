<?php 
	//session_start(); 
	include '_db.php';
	
	$query=mysql_query("delete from board where num='$_GET[num]'"); 
//	$row=mysql_fetch_assoc($query);

	if(!$query){
		die(mysql_error());
	}
	include 'header.php';

	echo "<script>location.href='board.php'</script>";
?>

<div class="content mt50">
	
	

</div>
