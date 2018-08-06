<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/ShopParisProject/js/postcode.js"></script>
<div class="contentsWrap">
	<div class="content sub contBox mb50">
		
		<!-- 회원가입 -->
		<div class="titleCont nav">
			<div class="f_left">
				<img src="images/Title.jpg" alt="파리바게트 ">
			</div>
			
			<div class="stepBox">
				<img src="/ShopParisProject/images/join_step02.png" alt="회원가입 완료 3step" />
			</div>
		</div>
		<div class="join_wrap">
			<form action="MemberJoinADDServlet" method="POST" id="memberForm">
				<div class="input_area">
					<div class="login_field">
						<span>기본정보/ <br />본인확인 </span>
					</div>
					<div class="login_input">
						<ul>
							<li>
								<span class="hidden">이름</span>
								<input type="text" name="username"class="input_type1"placeholder="이름" />
							</li>
							
							<li>
								<span class="hidden">휴대폰 번호</span>
								<input type="text"  class="input_type1" name="phone1" placeholder="휴대폰 번호(-없이 입력)" />
							</li>
							<li>
								<span class="hidden">이메일</span>
								<input type="text" class="input_type1 sm" name="email1" placeholder="이메일"  />
								<input type="text" class="input_type1 sm" name="email2" id="email2"/>
								<select name="" id="emailOption" class="select_type1 sel_mon">
									<option value="">이메일</option>
									<option value="naver.com">naver.com</option>
									<option value="google.com">google.com</option>
									<option value="">직접입력</option>
								</select>
							</li>
							<li>
								<span class="hidden">주소</span>
								<input type="text" id="sample4_postcode" placeholder="우편번호" name="post"class="input_type1 sm "  />
								<a href="javascript:void(0);" onclick="sample4_execDaumPostcode()" class="v_middle btn_l btn_type1">
									<span>주소찾기</span>
								</a><br>
								<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="addr1"class="input_type1 mt10"  />
								<input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="addr2"class="input_type1 mt10"  />
								<span id="guide" style="color:#999"></span>
							
							</li>
						</ul>
					</div>
				</div><!-- //input_area -->
			
			
				<div class="input_area">
					<div class="login_field">
						<span>ID/PW</span>
					</div>
					<div class="login_input">
						<ul>
							<li>
								<span class="hidden">아이디</span>
								<input type="text" class="input_type1" id="userid" name="userid" placeholder="아이디(6~12자 이내의 영문 소문자+숫자)" />
								<span id="idResult" class="idResult resultType"></span>
							</li>
							<li>
								<span class="hidden">비밀번호</span>
								<input type="text" id="userpwd" class="input_type1 pwChk" name="passwd"  placeholder="비밀번호" />
								<span class="hidden">비밀번호확인</span>
								<input type="text"  id="userpwd2"  class="input_type1 mt10 pwChk2"  placeholder="비밀번호 재확인" />
								<span class="pwResult resultType"></span>				
									
							</li>
						</ul>
					</div>
				</div>
				 <div class="tbl_bottom t_r" >
					<a href="#" id="btn_submit" class="btn_l btn_type1 btnSubmit">
						<span>가입하기</span>
					</a>
				</div>
				<!-- <div class="btn_wrap">
					<input type="submit" value="회원가입" />
				</div> -->
			</form>
			
	
		</div>
	
		<!-- //회원가입 -->
	</div>
</div>