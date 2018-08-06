<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <title> 파리바게트에 오신걸 환영합니다 </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" href="./css/common.css" type="text/css" />
  <link rel="stylesheet" href="./css/header.css" type="text/css" />
  <link rel="stylesheet" href="./css/sub.css" type="text/css" />
  <link rel="stylesheet" href="./css/jquery.bxslider.css" type="text/css" />

	<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/bxslider.js"></script>
	<script type="text/javascript" src="js/common.js"></script>

</head>
<body>
<div id="header">
	<div class="bdblue"></div>
	<div class="header_mu">
		<p class="inp_area">
			<input type="text"  class="text_1" placeholder="  제품/매장검색 예) 딸기,치즈,역삼">
			<a href="#" class="img_1" >
				<img src="images/find.jpg "alt="검색"  />
			</a>
		</p>
		<a href="index.jsp"class="logo">
			<img src="images/logo.png" />
		</a>
		<c:if test="${not empty sessionScope.login.userid}">
			<span class="username">${sessionScope.login.username}님 환영합니다 
				<img src="images/img_dia.jpg" alt="다이아 아이콘"  />
			 </span>
		</c:if>
		<ul>
			<c:if test="${not empty sessionScope.login.userid}">
			    <li><a href="LogoutServlet">로그아웃</a></li>
			</c:if>
			
			<c:if test="${empty sessionScope.login.userid}">
			    <li><a href="LoginUIServlet">로그인</a></li>
			</c:if>
			
			<c:if test="${not empty sessionScope.login.userid}">
				<li><a href="MemberMypageUIServlet">마이페이지</a></li>
			</c:if>
			
			<c:if test="${empty sessionScope.login.userid}">
				<li><a href="step1.jsp">회원가입</a></li>
			</c:if>
			
			<li><a href="#">고객센터</a></li>
			<li><a href="#"><img src="images/facebook.jpg "> facebook</a></li>
		</ul>
	</div><!--header_mu-->
	
	<div id="herder_nav">
		<div class="topnavBox">
			 <ul id="topnav">
				<li>
					<a href="">제품안내</a>
					<div class="lnb">
						<a href="productList.jsp" style="color:red;">BREAD</a> 
						<a href="">CAKE</a> 
						<a href="">BEVERAGE</a>
						<a href="">DESSERT</a>
						<a href="">BRUNCH</a>
						<a href="">OTHER</a>
						<a href="">PB COLLECTION</a>
					</div>
				</li>
				<li>
					<a href="">매장찾기</a>
					<span class="lnb sec">
						<a href="">THE COMPANY</a> 
						<a href="">THE TEAM</a> 
						<a href="">CAREERS</a>
					</span>
				</li>
				<li>
					<a href="">이벤트</a>
					<span class="lnb third">
						<a href="">What We Do</a> 
						<a href="">Our Process</a> 
						<a href="">Testimonials</a>
					</span>
				</li>
				<li>
					<a href="">마이페이지</a>
				</li>
				<li><a href="board.php">고객센터</a>
					<span class="lnb right">
						<a href="">자주하는 질문</a> 
						<a href="">게시판 문의</a> 
					</span>
				</li>
			</ul>
		</div>
	</div>
</div><!--header-->