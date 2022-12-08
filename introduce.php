<?php
$baseUrl = '';
require_once("database/connect.php");
require_once('layouts/header1.php');
?>

<style>

    .introduct-row {
        width: 1100px;
        margin: 0 auto;
        padding: 100px 0;
    }

    .introduct-title {
        font-size: 3rem;
        font-weight: 600;
        line-height: 4.8rem;
        color: #333;
        margin-top: 50px;
    }

    .introduct-des {
        font-size: 1.6rem;
        font-weight: 400;
        line-height: 2rem;
        text-indent: 60px;
        margin-top: 45px;
        line-height: 1.4;
    }

    .introduct-img {
        width: 100%;
        border-radius: 5px;
    }
</style>

<div class="introduct">
    <div class="introduct-row">
        <!-- <img src="https://media.truyenhinhdulich.vn/upload/news/1180_tuyen_quang_da_dang_hoat_dong_quang_ba_du_lich.jpg" alt="" class="introduct-img"> -->
        <?php
            $sql = "SELECT * FROM introduce";
            $query = mysqli_query($connect, $sql);
            while ($row = mysqli_fetch_assoc($query)) { ?>
                <h2 class="introduct-title"><?php echo $row["title"]; ?></h2>
                <p class="introduct-des"><?php echo $row["description"]; ?></p>
        <?php } ?>
    </div>
</div>

<?php
require_once('layouts/footer.php');
?>