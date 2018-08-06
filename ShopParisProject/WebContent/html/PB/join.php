<?php 
	include 'header.php';
	include '_db.php';	
?>
	
<div class="content">
	<!-- <div class="join_wrap">
		<form action="join_complete.php" method="POST">
			<ul>
				<li>
					
					<label for="name">이름</label>
					<input type="text"name="name"id="name" />
				</li>
				<li>
					<label for="id">아이디</label>
					<input type="text"name="id"id="id" />
					<span class="status1">6~15자 이내로 입력해주세요</span>
				</li>
				<li>
					<label for="pw">비밀번호</label>
					<input type="password"name="pw"id="pw" />
					<label for="pw1">비밀번호 확인</label>
					<input type="password"name="pw_check"id="pw1" />
					<span class="status2">비밀번호가 일치하지 않습니다.</span>
				</li>
			
				<li>
					<label for="addr">주소</label>
					<input type="text" readonly name="zip1"  />-
					<input type="text" readonly name="zip2" /><br />
					<input type="text" readonly name="addr" />
				</li>
			</ul>
			<div class="btn_wrap">
				<input type="submit" value="회원가입" />
			</div>
		</form>
	</div> -->

	<script type="text/javascript">
	/*
	$(function(){
		$("#btn_submit").click(function () {

            return $page.onSubmit();
        });

	})
	$(function dd(){
		$("#ee").val($('#ss").val());
	})
	$("#ss").change(dd);
;*/
	function dd(){
		$("#ee").val($("#ss").val());
	}
	$("#ss").change(dd);

	</script>
	<!-- 회원가입 -->
	<div class="join_wrap">
		<form action="join_complete.php" method="POST">
			<div class="input_area">
				<div class="login_field">
					<span>기본정보/ <br />본인확인 </span>
				</div>
				<div class="login_input">
					<ul>
						<li>
							<span class="hidden">이름</span>
							<input type="text" name="name"class="input_type1"placeholder="이름" />
						</li>
						<li>
							<span for="" class="hidden">생년월일</span>
							<select name="year" id="" class="select_type1 sel_mon">
								<option value="">생년</option>
								<option value="1">1992</option>
								<option value="2">1991</option>
								<option value="3">1990</option>
							</select>
							<select name="month" id="" class="select_type1 sel_day">
								<option value="">월</option>
								<option value="1">1월</option>
								<option value="2">2월</option>
								<option value="3">3월</option>
							</select>
							<select name="day" id="" class="select_type1 sel_day">
								<option value="">일</option>
								<option value="1">1일</option>
								<option value="2">2일</option>
								<option value="3">3일</option>
							</select>
						</li>
						<li>
							<span class="hidden">휴대폰 번호</span>
							<input type="text"  class="input_type1" placeholder="휴대폰 번호(-없이 입력)" />
						</li>
						<li>
							<span class="hidden">이메일</span><!-- select는 단지 프론트에서 보여질뿐 db로 넘어가는 값은 두개 뿐이다. 아이디랑 멜 주소
							스크립트로 셀렉트박스값을 두번째 인풋값으로 던져주기 -->
							<input type="text" class="input_type1 sm" placeholder="이메일"  />
							<input type="text" class="input_type1 sm" id="ee"/>
							<select name="year" id="ss" class="select_type1 sel_mon">
								<option value="">이메일</option>
								<option value="1">@naver.com</option>
								<option value="2">@google.com</option>
								<option value="3">직접입력</option>
							</select>
						</li>
						<li>
							<span class="hidden">주소</span>
							<input type="text" name="zip1"class="input_type1 sm " />-
							<input type="text" name="zip2"class="input_type1 sm" />
						
			
							<a href="#;" class="btn_l btn_type1">
								<span>주소찾기</span>
							</a>
								
							
							<input type="text"  class="input_type1 mt10"  name="juso"placeholder="주소"  />
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
							<input type="text" class="input_type1" placeholder="아이디(6~12자 이내의 영문 소문자+숫자)" />
						</li>
						<li>
							<span class="hidden">비밀번호</span>
							<input type="text" class="input_type1" placeholder="비밀번호" />
							<span class="hidden">비밀번호확인</span>
							<input type="text"  class="input_type1 mt10" placeholder="비밀번호 재확인" />
						</li>
					</ul>
				</div>
			</div>

			 <div class="tbl_bottom t_r" >
				<a href="join_complete.php" id="btn_submit"class="btn_l btn_type1">
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
<?php include 'footer.php'; ?>

