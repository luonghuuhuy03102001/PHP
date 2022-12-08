<?php
$baseUrl = '';
require_once("database/connect.php");
require_once('layouts/header1.php');
?>

<style>
    .content {
        margin-top: 30px;
    }

    .category-row {
        width: 1200px;
        margin: 0 auto;
    }

    .category-title {
        font-size: 2.6rem;
        font-weight: 600;
        text-align: center;
        margin: 84px 0 22px;
    }

    .category-list {
        display: flex;
        flex-wrap: wrap;
    }

    .category-item {
        width: 33.333333%;
        padding: 15px;
    }

    .category-img {
        width: 100%;
        height: 300px;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
    }

    .category-form {
        padding: 20px 25px;
        border: 1px solid #e7eaed;
        border-radius: 5px;
    }

    .category-title {
        font-size: 1.8rem;
        font-weight: 600;
        color: #333;
        line-height: 1.8rem;
        height: 3.6rem;
        margin: 20px 0px 30px;
        overflow: hidden;
        display: block;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        text-overflow: ellipsis;
    }

    .category-des {
        font-size: 1.2rem;
        color: #333;
        line-height: 1.8rem;
        overflow: hidden;
        display: block;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 6;
        text-overflow: ellipsis;
    }

    .category-btn {
        border: none;
        width: 100%;
        height: 40px;
        background-color: #dc3a1a;
        border-radius: 5px;
        color: #fff;
        margin-top: 30px;
        cursor: pointer;
    }
</style>

<div class="catrgory">
    <div class="category-row">
        <div class="category">
            <ul class="category-list">
                <?php

                if (isset($_GET["id"])) {
                    $id_category = $_GET["id"];

                    $sql_update = "SELECT * FROM products WHERE category_id = $id_category";
                    $query = mysqli_query($connect, $sql_update);
                }

                while ($row = mysqli_fetch_assoc($query)) { ?>
                    <li class="category-item">
                        <div class="category-form">
                            <img src="admin/img/<?php echo $row["image"];?>" alt="" class="category-img">
                            <h4 class="category-title"><?php echo $row["title"]; ?></h4>
                            <span class="category-des"><?php echo $row["description"]; ?></span>
                            <a href="detail.php?id=<?php echo $row['id']; ?>" style="text-decoration: none;"><button class="category-btn">Xem</button></a>
                        </div>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
<?php
require_once('layouts/footer.php');
?>