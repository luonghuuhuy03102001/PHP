<?php
$baseUrl = '../';
require_once("../../database/connect.php");
require_once('../layouts/header.php');

?>

<?php
	$sql = "SELECT * FROM products";
	$query = mysqli_query($connect, $sql);
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>Quản lý di tích lịch sử & văn hóa</h3>

		<a href="add.php"><button class="btn btn-success">Thêm</button></a>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Ảnh</th>
					<th>Tên địa danh</th>
					<th style="width: 50px"></th>
					<th style="width: 50px"></th>
				</tr>
			</thead>
			<tbody>
				<?php

					$count = 1;
					while ($row = mysqli_fetch_assoc($query)) { ?>
						<tr>
							<td><?php echo  $count++; ?></td>
							<td>
								<img style="height: 100px; width: 100px" src="../img/<?php echo $row["image"];?>" />
							</td>
							<td><?php echo $row["title"]; ?></td>
							<td style="width: 50px">
								<a href="update.php?id=<?php echo $row['id']; ?>"><button class="btn btn-warning">Sửa</button></a>
							</td>
							<td style="width: 50px">
								<a onclick="return Del('<?php echo $row['title'] ?>')" href="delete.php?id=<?php echo $row['id']; ?>"><button class="btn btn-danger">Xoá</button></a>
							</td>
						</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>

<script>
	function Del(name) {
		return confirm("bạn có chắc muốn xóa tài liệu: " + name + "?");
	}
</script>