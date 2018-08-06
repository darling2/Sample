<?php 
session_start(); 
//echo $_SESSION['id'];
//echo isset($_SESSION['id']);

 include '_db.php';


$query=mysql_query("select * from member where id='$_POST[id]' "); 
$row=mysql_fetch_assoc($query);
//echo $query;

if($row['pw'] == $_POST['pw']){
	/* 세션버젼 로그인*/
	$_SESSION['id']=$_POST['id'];
	$_SESSION['pw']=$_POST['pw']; //로그인을 하면 아이디값과 pw가 세션에 저장

	//echo "로그인성공";
	echo "<script>location.href='index.php'</script>";

}else if($row){ // 위에 if 돌고 나머지 남은 if문 위에 if문에 걸려서 안넘어간거면 패스워드가 틀렸다는뜻 (데이터가 존재하면 무조건 참)
	//echo "패스워드 틀렸습니다.";
	echo "<script>alert('패스워드 틀렸습니다.')</script>";
	echo "<script>history.back()</script>";

}else{ //애초에 입력받은 아이디로 데이터를 못찾았을 경우
	echo "<script>alert('등록되지 않은 사용자입니다.')</script>";
	echo "<script>history.back()</script>";

}

?>
