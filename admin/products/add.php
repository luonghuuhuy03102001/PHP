<?php
$baseUrl = '../';
require_once('../layouts/header.php');
require_once("../../database/connect.php");
?>

<?php
if (isset($_POST["add"])) {
    $title = $_POST["title"];
    $description = $_POST["description"];
    $image = $_FILES["image"]['name'];
    $image_tmp = $_FILES["image"]['tmp_name'];
    $category_id = $_POST["category_id"];

    $sql = "INSERT INTO products(category_id, title, image, description) VALUES('$category_id', '$title', '$image', '$description')";
    $result = mysqli_query($connect, $sql);
    move_uploaded_file($image_tmp, '../img/' .$image);
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
                        <div class="col-md-3 col-12" style="border: solid grey 1px; padding-top: 10px; padding-bottom: 10px;">
                            <div class="form-group">
                                <label for="thumbnail">Ảnh:</label>
                                <input type="file" class="form-control" id="thumbnail" name="image">
                            </div>

                            <div class="form-group">
                                <label for="usr">Danh Mục:</label>
                                <select class="form-control" name="category_id" id="category_id" required="true">
                                    <option value="">-- Chọn --</option>
                                    <?php
                                    $sql = "SELECT * FROM category";
                                    $result = mysqli_query($connect, $sql);
                                    while ($row_category = mysqli_fetch_array($result)) { ?>
                                        <option value="<?php echo $row_category['id'] ?>"><?php echo $row_category['name'] ?></option>

                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>