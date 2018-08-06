<?php 
	session_start();
	session_destroy();

 include '_db.php';

echo "<script>location.href='login.php'</script>";

?>
