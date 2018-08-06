<?php 
	//session_start(); 
	include '_db.php';
	
	$query=mysql_query("select * from board where num='$_GET[num]'"); 
	$row=mysql_fetch_assoc($query);

	if(!$query){
		die(mysql_error());
	}
	include 'header.php';
?>

<div class="content ">
	<div class="tbl_type3">
		<form action="board_update_check.php" method="POST">
			<input type="hidden" name="num"  value="<?php echo $row['num'] ?>" />
			<table>
				<tr>
					<th>
						제목입력
					</th>
					<td>
						<input type="text" name="subject" class="input_type1" value="<?php echo $row['subject'] ?>" />
					</td>
				</tr>
				<tr>
					<th>
						글쓴이
					</th>
					<td>
						<input type="text" name="name" class="input_type1" disabled value="<?php echo $row['name']?>" />
					</td>
				</tr>
				<tr>
					<th>
						내용
					</th>
					<td>
						<textarea name="body" id="" cols="30" rows="10">
	<?php
		echo $row['body']
	?>
						</textarea>
					</td>
				</tr>
			
			</table>
			<div class="tbl_bottom t_r" >
		
				<button type="submit" class="btn_l btn_type1">
					<span>수정</span>
				</button>
				
			</div>
		</form>
	</div>

</div>
