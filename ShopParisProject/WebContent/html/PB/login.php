<?php include '/header.php'; ?>
		<div id="wrap">
			
			<div id="contents">
				<div class="content">
					<div class="pb_login_wrap">
						<!-- 로그인 폼 -->
						<div class="wel_area">
							<form action="login_check.php" method="POST">
								<label for="id">아이디</label>
								<input type="text"id="id" name="id" /><br />
								<label for="pw">비밀번호</label>
								<input type="password"id="pw"name="pw" />
								<input type="submit"value="로그인" />
							</form>
						</div>
						<div class="wel_area">
							<!-- 슬라이드 -->
							<!--
								1. 카드사 할인 배너
								2. 이달의 신제품
							-->
							<!-- //슬라이드 -->
							<div class="bnr_slide">
							
							</div>
							<div class="join_btn">
								<a href="join.php" >
									회원가입
								</a>
							</div>
						</div>
						<!-- //로그인 폼 -->
					</div>
				</div>
			</div>
			<?php include 'footer.php'; ?>

		</div><!-- //wrap -->
