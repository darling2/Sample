<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/ShopParisProject/js/postcode.js"></script>
    
<div class="content">

	<!-- 로그인 -->
	<div class="content">
		<div class="etcLoginWrap">
			<div class="etcloginInner">
				<div class="loginBox">
					<div class="BoxInner">
						<div class="imgBox">
							<img src="images/loginTitle.jpg" alt="로그인이미지" />
							<span class="txt">로그인이 필요한 서비스 입니다. 고객님의 아이디와 비밀번호를 입력해주세요.</span>
						</div>
						<div class="inputBox">
							<form action="LoginServlet" method="post" id="loginForm">
								<span>아이디</span>
								<input type="text" name="userid" class="input_type1" id="useridLogin" />
								
								<br />
								
								<span class="mt15">비밀번호</span>
								<input type="password" name="passwd" class="input_type1" id="passwdLogin" />
							</form>
						</div>
						<a href="#" id="btnSubmitLogin" class="btnLogin" title="로그인">
							<img src="images/btnLogin.jpg" alt="로그인버튼" />
						</a>
						
						<ul class="findInfo">
							<li class="txt">아이디를 잊으셨나요?
							<a href="">
								<img src="images/btnFindid.jpg" alt="아이디찾기" />
							</a>
							</li>
							<li class="txt">비밀번호가 기억나지 않으신가요?
							<a href="">
								<img src="images/btnFindpw.jpg" alt="비번찾기" />
							</a>
							</li>
						</ul>
					</div>
				</div>
				
				
				<div class="evtBox BoxInner">
					<img src="images/spconepass.jpg" alt="spc통합페이지 설명 " />
					<span class="txt">
					파리크라상 & 비알코리아 회원으로 가입하시면 <br />
					해피포인트카드, 파리크라상, 파리바게뜨, 배스킨라빈스, 던킨도너츠, <br />
					파스쿠찌, 해피이샵, 잠바주스, 헬륨 등 SPC에서 운영하는 <br />
					웹사이트의 서비스를 하나의 아이디 비밀번호로 이용하실 수 있습니다.
					</span>
				</div>
			</div>
		</div>
		
		<div class="spcFamily">
			<img src="images/spcFamily.jpg" alt="spc회사 모음 이미지" />
		</div>
	</div>
	<!-- //로그인 -->

</div>