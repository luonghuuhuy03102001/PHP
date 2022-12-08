<?php
$baseUrl = '';
require_once("database/connect.php");
require_once('layouts/header.php');
?>

<style>
	/* banner */
	.banner {
		position: relative;
	}

	.banner-img {
		width: 100%;
		height: 750px;
	}

	.banner-form-sub {
		position: absolute;
		width: 620px;
		bottom: 200px;
		left: 500px;
		align-items: center;
	}

	.banner-title {
		font-size: 4rem;
		line-height: 6rem;
		font-weight: 600;
		color: #fff;
	}

	.banner-btn {
		border: none;
		padding: 10px 20px;
		border-radius: 4px;
		margin-top: 50px;
		font-size: 1.4rem;
		cursor: pointer;

	}


	/* content */

	.content {
		margin-top: 30px;
	}

	.products-row {
		width: 1200px;
		margin: 0 auto;
	}

	.category-title {
		font-size: 2.6rem;
		font-weight: 600;
		text-align: center;
		margin: 84px 0 22px;
	}

	.products-list {
		display: flex;
		flex-wrap: wrap;
	}

	.products-item {
		width: 33.333333%;
		padding: 15px;
	}

	.products-img {
		width: 100%;
		height: 300px;
		border-top-left-radius: 3px;
		border-top-right-radius: 3px;
	}

	.products-form {
		padding: 20px 25px;
		border: 1px solid #e7eaed;
		border-radius: 5px;
	}

	.products-title {
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

	.products-des {
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

	.products-btn {
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

<div class="container">
	<div class="banner">
		<img src="./assets/image/banner1.jpg" alt="" class="banner-img">
		<div class="banner-form-sub">
			<h1 class="banner-title">Khám phá di tích lịch sử & văn hóa tỉnh Tuyên Quang</h1>
			<button class="banner-btn">Khám phá</button>
		</div>
	</div>
	<div class="content">
		<div class="products-row">
			<div class="products">
				<h3 class="category-title">văn hóa</h3>
				<ul class="products-list">
					<?php
					$sql = "SELECT * FROM products";
					$query = mysqli_query($connect, $sql);

					while ($row = mysqli_fetch_assoc($query)) { ?>
						<li class="products-item">
							<div class="products-form">
								<img src="admin/img/<?php echo $row["image"]; ?>" alt="" class="products-img">
								<h4 class="products-title"><?php echo $row["title"]; ?></h4>
								<span class="products-des"><?php echo $row["description"]; ?></span>
								<a href="detail.php?id=<?php echo $row['id']; ?>" style="text-decoration: none;"><button class="products-btn">Xem</button></a>
							</div>
						</li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
</div>


<?php
require_once('layouts/footer.php');
?>