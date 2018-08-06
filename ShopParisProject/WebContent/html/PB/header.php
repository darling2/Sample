<?php

session_start();
include '_db.php';
//$query=mysql_query("select * from member where id='$_SESSION[id]'"); 

//$row=mysql_fetch_assoc($query); 

//echo $query;


?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title> 파리바게트에 오신걸 환영합니다 </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" href="css/common.css" type="text/css" />
  <link rel="stylesheet" href="css/header.css" type="text/css" />
  <link rel="stylesheet" href="css/sub.css" type="text/css" />
  <link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" />

	<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/bxslider.js"></script>
	<script type="text/javascript" src="js/common.js"></script>

</head>
<div id="header">
	<div class="header_mu">
		<p class="inp_area">
			<input type="text"  class="text_1" value="&nbsp;&nbsp;제품/매장검색 예) 딸기,치즈,역삼">
			<a href="#;"class="img_1" />
				<img src="images/find.jpg "alt="검색"  />
			</a>
		</p>
		<a href="index.php"class="logo">
			<img src="images/logo.png" />
		</a>
		<ul>
		
			 <?php if(isset($_SESSION['id']) ){ ?>
				<li><?php echo $_SESSION['id'] .'님' ?></li>

			<?php }else{ ?> 
				<li><a href="login.php">로그인</a></li>
			 <?php }?> 
			

			 <?php if(isset($_SESSION['id'])){?>
				<li><a href="logout.php">로그아웃</a></li>
			 <?php }else{?>
				 <li><a href="join.php">회원가입</a></li>
			 <?php } ?>
			
			<li><a href="#">고객센터</a></li>
			<li><a href="#"><img src="images/facebook.jpg ">   facebook</a></li>
		</ul>
	</div><!--header_mu-->
	
	<div id="herder_nav">
		 <ul id="topnav">
			<li>
				<a href="">PRODUCT</a>
				<div class="lnb">
					<a href="sub.php">BREAD</a> 
					<a href="">CAKE</a> 
					<a href="">BEVERAGE</a>
					<a href="">DESSERT</a>
					<a href="">BRUNCH</a>
					<a href="">OTHER</a>
					<a href="">PB COLLECTION</a>
				</div>
			</li>
			<li>
				<a href="">STORE</a>
				<span class="lnb">
					<a href="">THE COMPANY</a> 
					<a href="">THE TEAM</a> 
					<a href="">CAREERS</a>
				</span>
			</li>
			<li>
				<a href="">PROMOTION</a>
				<span class="lnb">
					<a href="">What We Do</a> 
					<a href="">Our Process</a> 
					<a href="">Testimonials</a>
				</span>
			</li>
			<li>
				<a href="">회원게시판</a>
			</li>
			<li><a href="board.php">자유게시판</a></li>
		</ul>	
	</div>
</div><!--header-->