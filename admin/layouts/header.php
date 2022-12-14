<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="<?=$baseUrl?>../assets/css/dashboard.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>	
<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
        <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link" href="<?=$baseUrl?>introduce">
              <i class="bi bi-house-fill"></i>
              Giới thiệu
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=$baseUrl?>category">
              <i class="bi bi-folder"></i>
              Quản lý danh mục
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=$baseUrl?>products">
              <i class="bi bi-file-earmark-text"></i>
              Quản lý di tích & văn hóa
            </a>
          </li>
         
        </ul>
      </div>
    </nav>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

      <!-- hien thi tung chuc nang cua trang quan tri START-->