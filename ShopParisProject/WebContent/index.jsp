<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="common/header.jsp" flush="true" />
 <div id="wrap">
	<div id="contents">
		<div class="content">
			<!-- 메인 슬라이드 123 -->
			<div class="main_slider bxslider-default"  data-auto="true" data-pager="true" data-speed="800" data-pause="4000">
				<ul class="bxslider">
					<li><img src="images/banner1.jpg"></li>
					<li><img src="images/banner2.jpg"></li>
					<li><img src="images/banner3.jpg"></li>
				</ul>
			</div>
			<!-- //메인 슬라이드123  -->

			<div  class="containerBox">
				<div id="contents_1">
					<div class="left_contents_1">
						<p>PB PRODUCT</p>
						
						<!-- 신제품 슬라이드 -->
						<div class="new_slider  bxslider-default"  data-pager="false" data-controls="true" data-pager="true" data-speed="800" data-pause="4000">
							<ul class="bxslider">
								<li><img src="images/contents0.jpg "></li>
								<li><img src="images/contents0.jpg "></li>
								<li><img src="images/contents0.jpg "></li>
							</ul>
						</div>
						<!-- //신제품 슬라이드 -->
					</div>
					<img src="images/contents1.jpg " class="new">
				</div>

				<!-- <div id="contents_2">
					<a href="#"><img src="images/contents2.jpg "></a>
				</div> -->
				
				<div id="contents_3">
					<video src="images/cf.mp4" width="456" height="255" autoplay="true" controls="controls" ></video>
				</div>
			
		
				<div class="mainEvent">
					<ul class="bxSlider">
						<li>
							<a href="#;">
								<img src="images/main_evt1.jpg "/>
							</a>
						</li>
						<li>
							<a href="#;">
								<img src="images/main_evt2.jpg "/>
							</a>
						</li>
						<li>
							<a href="#;">
								<img src="images/main_evt3.jpg "/>
							</a>
						</li>
						
					</ul>
				</div>
			</div><!--container1-->

			<div class="containerBox mb30">
				<div class="contentsInner">
					<a href="#"><img src="images/contents4.jpg "></a>
				</div>
				<div class="contentsInner">
					<a href="#"><img src="images/contents5.jpg "></a>
				</div>
			</div><!--container2-->

			<div  class="containerBox con3 mb20">
				<div class="section">
					<div class="line">
						<span>PB NOTICE</span>
						<a href="#"><img src="images/plus.jpg "></a>
					</div>
					<div class="txt1">
							<ul>
								<li> <a href="#"> 11월 11일 소중한 사람들을 위한 달콤한 선물! </a> <span> 2014. 11. 09 </span></li>
								<li> <a href="#"> 11월 11일 소중한 사람들을 위한 달콤한 선물! </a><span> 2014. 11. 09 </span></li>
								<li> <a href="#"> 11월 11일 소중한 사람들을 위한 달콤한 선물!</a><span> 2014. 11. 09 </span></li>
								<li> <a href="#"> 11월 11일 소중한 사람들을 위한 달콤한 선물! </a><span> 2014. 11. 09 </span>s</li>
							</ul>
					</div><!--txt1-->
				</div><!--contents_6-->

				<div class="section ">
					<div class="line">
						<span>PB PROMOTION</span>
						<a href="#"><img src="images/plus.jpg "></a>
					</div>
					<img src="images/contents7.jpg " class="card">
				</div>

				<div class="section conFacebook">
					<div class="line">
						<span>PB FACEBOOK</span>
						<a href="#"><img src="images/plus.jpg "></a>
					</div>
					<div class="pt20">
						<div class="o_hidden">
							<span class="pb"><a href="#"><img src="images/contents8PB.jpg "></a></span>
							<span class="facebooklove"><img src="images/contents8love.jpg "></span>
							<p class="f_left">
								<img src="images/contents8facebook.jpg "><br/>
								<span class="love"><a href="#">파리바게뜨</a></span>
							</p>
								
						</div>
						
						<ul class="o_hidden">
							<li class="pb10"><a href="#">https://www.facebook.com/loveparisbaguette</a></li>
							<li>파리바게트 페이스북에서<br>c다양한 이벤트와 이야기를 만나보세요!</li>
						</ul>
						<span class="faceLogo"><img src="images/contents8bg.jpg"></span>
						
					</div>
				</div><!--contents_8-->

			</div><!-- containerBox con3-->
		</div><!-- content -->
	</div><!--contents-->

 </div><!--wrap-->
<jsp:include page="common/footer.jsp" flush="true" />