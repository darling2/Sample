<?php 
	//session_start(); 
	include '_db.php';
	$query=mysql_query("select * from board");
	$row=mysql_fetch_assoc($query);
	include 'header.php';
?>

<div class="content ">
	<!-- tbl_type1 -->
	<div class="tbl_type1">
		<table>
			<colgroup>
				<col width="" />
				<col width="" />
				<col width="" />
				<col width="" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				while($row=mysql_fetch_assoc($query)){
				?>
				<tr>
					<td>
						<?php echo $row['num'] ?>
					</td>
					<td>
						<a href="board_body.php?num=<?php echo $row['num'] ?>">
							<?php echo $row['subject'] ?>
						</a>
					</td>
					
					<td>
						<?php echo $row['name']?>
					</td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
	<!-- //tbl_type1 -->
	<div class="tbl_bottom t_r" >
		
		<a href="board_write.php" class="btn_l btn_type1">
			<span>질문하기</span>
		</a>
		
	</div>
</div>
<?php include 'footer.php'; ?>
