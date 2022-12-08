<?php
$baseUrl = '';
require_once("database/connect.php");
require_once('layouts/header1.php');
?>

<style>
    .detail {
        padding: 50px 0 100px;
    }

    .detail-row {
        width: 1200px;
        margin: 0 auto;
    }

    .detail-form-img {
        
    }

    .detail-img {
        border-radius: 5px;
        width: 70%;
    }

    .detail-des-sub {
        font-size: 1.6rem;
        text-align: justify;
        line-height: 1.4;
        text-indent: 60px;
        margin-top: 30px;
    }

    .detail-des-title {
        font-size: 3rem;
        font-weight: 500;
        line-height: 1.4;
        margin-top: 40px;
        margin-bottom: 40px;
    }
</style>

<div class="detail">
    <div class="detail-row">
        <?php

            if (isset($_GET["id"])) {
                $id = $_GET["id"];

                $sql_update = "SELECT * FROM products WHERE id = $id";
                $query = mysqli_query($connect, $sql_update);
            }
                while ($row = mysqli_fetch_assoc($query)) { ?>
                    <h3 class="detail-des-title"><?php echo $row["title"]; ?></h3>
                    <div class="detail-form-img">
                        <img src="admin/img/<?php echo $row["image"]; ?>" alt="" class="detail-img">
                    </div>
                    <div class="detail-des">
                        <p class="detail-des-sub"><?php echo $row["description"]; ?></p>
                    </div>
                <?php } ?>
    </div>
</div>

<?php
require_once('layouts/footer.php');
?>