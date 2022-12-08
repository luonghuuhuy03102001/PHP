<?php
$baseUrl = '../';
require_once("../../database/connect.php");
require_once('../layouts/header.php');

?>

<?php
	$sql = "SELECT * FROM introduce";
	$query = mysqli_query($connect, $sql);
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>quản lý phần giới thiệu</h3>

		<a href="add.php"><button class="btn btn-success">Thêm</button></a>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tiêu đề phần giới thiệu</th>
					<th>Nội phần giới thiệu</th>
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
							<td><?php echo $row["title"]; ?></td>
							<td><?php echo $row["description"]; ?></td>
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
		return confirm("bạn có chắc muốn xóa phầm giới thiệu: " + name + "này không ?");
	}
</script>