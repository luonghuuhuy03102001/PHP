<?php
$baseUrl = '../';
require_once("../../database/connect.php");
require_once('../layouts/header.php');
require_once('inset.php');
?>

<?php
    $sql = "SELECT * FROM category";
    $result = mysqli_query($connect, $sql);
?>

<div class="row" style="margin-top: 20px;">
    <div class="col-md-12" style="margin-bottom: 20px;">
        <h3>Quản Lý Danh Mục</h3>
    </div>
    <div class="col-md-6">
        <form method="post" action="">
            <div class="form-group">
                <label for="usr" style="font-weight: bold;">Tên Danh Mục:</label>
                <input required="true" type="text" class="form-control" id="usr" name="name">
            </div>
            <input class="btn btn-success" type="submit" value="Lưu" name="save">
        </form>
    </div>
    <div class="col-md-6 table-responsive">
        <table class="table table-bordered table-hover" style="margin-top: 20px;">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên Danh Mục</th>
                    <th style="width: 50px"></th>
                    <th style="width: 50px"></th>
                </tr>
            </thead>
            <tbody>
                <?php

                $count = 1;
                while ($row = mysqli_fetch_array($result)) { ?>
                    <tr>
                        <th><?php echo  $count++; ?></th>
                        <td><?php echo $row["name"]; ?></td>
                        <td style="width: 50px">
                            <a href="update.php?id=<?php echo $row['id']; ?>"><button class="btn btn-warning">Sửa</button></a>
                        </td>
                        <td style="width: 50px">
                            <a onclick="return Del('<?php echo $row['name'] ?>')" href="delete.php?id=<?php echo $row['id']; ?>"><button class="btn btn-danger">Xoá</button></a>
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