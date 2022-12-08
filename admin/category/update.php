<?php
$baseUrl = '../';
require_once('../layouts/header.php');
require_once("../../database/connect.php");
?>

<?php

if(isset($_GET["id"])) {
    $id = $_GET["id"];

    $sql_update = "SELECT * FROM category WHERE id = $id";
    $query_update = mysqli_query($connect, $sql_update);
    $row_update = mysqli_fetch_assoc($query_update);


    if (isset($_POST["add"])) {
        $name = $_POST["name"];

        $sql = "UPDATE category SET name = '$name' WHERE id=$id";
        $result = mysqli_query($connect, $sql);
        header("location: index.php");
    }

}

?>

<div class="row" style="margin-top: 20px;">
    <div class="col-md-12" style="margin-bottom: 20px;">
        <h3>Quản Lý Danh Mục</h3>
    </div>
    <div class="col-md-6">
        <form method="post" action="">
            <div class="form-group">
                <label for="usr" style="font-weight: bold;">Tên Danh Mục:</label>
                <input required="true" type="text" class="form-control" id="usr" name="name" value="<?php echo $row_update["name"]?>">
            </div>
            <input class="btn btn-success" type="submit" value="Lưu" name="add">
        </form>
    </div>
</div>