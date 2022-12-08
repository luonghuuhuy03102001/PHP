<?php
$baseUrl = '../';
require_once('../layouts/header.php');
require_once("../../database/connect.php");
?>

<?php

if(isset($_GET["id"])) {
    $id = $_GET["id"];

    $sql_update = "SELECT * FROM introduce WHERE id = $id";
    $query_update = mysqli_query($connect, $sql_update);
    $row_update = mysqli_fetch_assoc($query_update);


    if (isset($_POST["add"])) {
        $title = $_POST["title"];
        $description = $_POST["description"];

        $sql = "UPDATE introduce SET title = '$title', description = '$description' WHERE id=$id";
        $result = mysqli_query($connect, $sql);
        header("location: index.php");
    }

}

?>

<div class="row" style="margin-top: 20px;">
    <div class="col-md-12 table-responsive">
        <h3>Sửa tài liệu</h3>
        <div class="panel panel-primary">
            <div class="panel-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-9 col-12">
                            <div class="form-group">
                                <label for="usr">Tên:</label>
                                <input required="true" type="text" class="form-control" id="usr" name="title" value="<?php echo $row_update["title"]?>">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nội Dung:</label>
                                <textarea class="form-control" rows="5" name="description" id="description"><?php echo $row_update["title"]?></textarea>
                            </div>

                            <button name="add" class="btn btn-success" type="submit">Lưu</button>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>