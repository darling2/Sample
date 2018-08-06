<?php 
	include 'header.php';
	//session_start(); 
	include '_db.php';
	
	$query=mysql_query("select * from board where num='$_GET[num]'"); 
	$row=mysql_fetch_assoc($query);

	$query1=mysql_query("select * from comment");
	$row1=mysql_fetch_assoc($query1);

	if(!$query){
		die(mysql_error());
	}
	
?>

<div class="content ">
	<!-- tbl_type1 -->
	<div class="board_view">
		<table>
			<colgroup>
				<col width="30%" />
				<col width="30%" />
				<col width="20%" />
				<col width="*" />
			</colgroup>
			<thead>
				<tr>
					<th colspan="4">
						<?php echo $row['subject'] ?>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td>
						작성자 : <?php echo $row['name'] ?>
					</td>
					<td>
						작성일 : 
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<?php echo $row['body'] ?>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //tbl_type1 -->
	<div class="tbl_bottom t_r" >
		
		<a href="board_update.php?num=<?php echo $row['num']?>"class="btn_l btn_type1">
			<span>수정</span>
		</a>
		<a href="board_delete.php?num=<?php echo $row['num']?>"class="btn_l btn_type1">
			<span>삭제</span>
		</a>
		<a href="board.php"class="btn_l btn_type2">
			<span>목록</span>
		</a>
		
	</div>


	<div style="boder:1px solid #ccc; margin-top:50px;">
		<h2>댓글</h2>
		<table>
			<tr>
				<td>번호</td>
				<td>코멘트</td>
			</tr>
			<?php 
				while($row1=mysql_fetch_assoc($query1)){
			?>
			<tr>
				<td>
					<?php echo $row1['name'] ?>
				</td>
				<td>
					<?php echo $row1['body'] ?>
				</td>
			</tr>
			<?php } ?>
		</table>
	</div>
	<form action="comment_check.php" method="POST">
		이름<input type="text" name="comment_nm" readonly value="<?php echo $_SESSION['id'] ?>" /><br /> 
		댓글<input type="text" name="comment_body"value="" />
		
		<input type="submit" value="등록" />
	</form>



	
</div>
