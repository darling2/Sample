<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/ShopParisProject/js/postcode.js"></script>
<script>
$(document).ready(function(){
	//setTimeout(function() { 
		$("body").css("background","#fff");
		
	//},2000)
})
</script>
<div class="content">
<!-- <c:set var="x" value ="dto" /> -->
<%-- ${dto.getUserid }
${mesg} --%>
<!-- <c:if test="">
	
</c:if> -->

<%-- <c:if test="${! empty mesg}">
	<script type="text/javascript">
		alert("${mesg}");
	</script>
</c:if>

<c:if test="${ empty mesg}">
	<script type="text/javascript">
		alert("로그인 해주세요");
	</script>
</c:if> --%>

<!--  마이페이지 정보수정 제이슨으로 아이디랑 비번 틀렸을 시에 result에 무슨 값이 틀렸다고 뿌려주기!!!!!!!!!!!!!!!!!!  -->
<!-- 스크립트에서 세션을 받아서, 세션의 아이디와 세션의 비밀번호가 내가 입력한 인풋 박스 값과 일치 안하면 alert -->
	<!-- 마이페이지  -->
	<div class="content sub">
		<div class="nav">
			<img src="images/mypage/mypageTitle.jpg" alt="파리바게트 마이페이지" />
		</div>
	
		<div class="section">
			<div class="myBox">
				<span class="title">MY 해피포인트</span>
				<div class="inner">
					<img src="images/mypage/logoHappy.gif" alt="해피로고" class="happyLogo" />
					<span class="txtName">My Happypoint</span>
					<img src="images/mypage/bgHappy.jpg" alt="해피로고" class="happyBG" />
					<span class="cont"> 홍일선님은 <em class="fc_red">정회원</em>이며 
						회원등급은 <em class="fc_blue">일반</em>입니다.
					</span>
					
					<div class="pointBox">
						2,703 p 
						<a href="" class="btnView">자세히보기</a>
					</div>
				</div>
			</div>
			
			<!-- 선호 매장 -->
			<div class="myBox">
				<span class="title">MY 선호매장</span>
				<div class="inner">
					<div class="tbl_type1">
						<table>
							<tr>
								<th>매장명</th>
								<th>주소</th>
								<th>전화번호</th>
								<th>삭제</th>
							</tr>
							<tr>
								<td colspan="4">해당 정보가 없습니다.</td>
								<!-- <td></td>
								<td></td>
								<td></td> -->
							</tr>
						</table>
						<span class="txtInfo">자주 이용하시는 파리바게트 매장을 등록해 주세요. 다양한 이벤트, 쿠폰, 행사를 안내해드립니다.</span>
						<a href=""><img src="images/mypage/btnBookmark.jpg" /></a>
					</div>
				</div>
			</div>
			<!--// 선호 매장 myBox -->
			
			<!-- 회원정보 수정 -->
			<div class="myBox">
				<span class="title">MY 정보수정</span>
				<div class="inner">
					<div class="BoxInner">
						<div class="imgBox">
							<img src="images/loginTitle.jpg" alt="로그인이미지" />
							<span class="txt">로그인이 필요한 서비스 입니다. 고객님의 아이디와 비밀번호를 입력해주세요.</span>
						</div>
						<div class="inputBox">
							<form action="UpdateUIServlet" method="post" id="UpdateForm">
								<span>아이디</span>
								<input type="text" name="userid" class="input_type1" id="useridLogin" /><br />
								<span class="mt15 ">비밀번호</span>
								<input type="password" name="passwd" class="input_type1" id="passwdLogin" /><br />
								<span class="result"></span>
							</form>
							
							<a href="#" id="btnSubmitmypage" class="btnLogin_big" title="로그인" >
								정보수정
							</a>
						</div>
					</div>
				</div>
			</div><!-- //회원정보 수정 -->
		</div><!-- //content  -->
	</div>
	<!-- //마이페이지 -->

</div>