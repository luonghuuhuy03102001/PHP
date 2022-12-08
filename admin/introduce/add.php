<?php
$baseUrl = '../';
require_once('../layouts/header.php');
require_once("../../database/connect.php");
?>

<?php
if (isset($_POST["add"])) {
    $title = $_POST["title"];
    $description = $_POST["description"];

    $sql = "INSERT INTO introduce (title, description) VALUES('$title', '$description')";
    $result = mysqli_query($connect, $sql);
    header("location: index.php");
}
?>


<div class="row" style="margin-top: 20px;">
    <div class="col-md-12 table-responsive">
        <h3>Thêm tài liệu</h3>
        <div class="panel panel-primary">
            <div class="panel-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-9 col-12">
                            <div class="form-group">
                                <label for="usr">Tên:</label>
                                <input required="true" type="text" class="form-control" id="usr" name="title">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nội Dung:</label>
                                <textarea class="form-control" rows="5" name="description" id="description"></textarea>
                            </div>

                            <button name="add" class="btn btn-success" type="submit">Lưu</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>