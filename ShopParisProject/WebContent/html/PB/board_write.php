<?php 
	include 'header.php';
	include '_db.php';	
?>

<div class="content ">
	<div class="tbl_type3">
		<form action="board_write_check.php" method="POST">
			<table>
				<tr>
					<th>
						제목입력
					</th>
					<td>
						<input type="text" name="subject" class="input_type1"/>
					</td>
				</tr>
				<tr>
					<th>
						글쓴이
					</th>
					<td>
						<!-- <input type="text" readonly name="name" value="<?php echo $_SESSION['id'] ?>" /> 로그인이 안되어있으면 에러 -->
						<input type="text"  name="name"class="input_type1"  />
					</td>
				</tr>
				<tr>
					<th>
						내용
					</th>
					<td>
						<textarea name="body" id="" cols="30" rows="10"></textarea>
					</td>
				</tr>
				
			</table>
			<div class="tbl_bottom t_r" >
		
				<button type="submit" class="btn_l btn_type1">
					<span>등록</span>
				</button>
				
			</div>
		</form>
	</div>
</div>
