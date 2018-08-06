<?php 
	
$db=mysql_connect("localhost","root","ghddlftjs9!");
$ret=mysql_select_db("korea",$db);
$query=mysql_query("insert into member values('$_POST[name]', '$_POST[id]', '$_POST[pw]','$_POST[zip1]','$_POST[zip2]','$_POST[addr]') ");


if(!$db){
	die(mysql_error());
}
?>

<html>
	<head>
		<title></title>
	</head>
	<body>
		<h2>
			가입을 환영합니다.
			<a href="index.php">홈</a>
		</h2>
	</body>
</html>

