<?php 
    require_once("../../database/connect.php");
?>

<?php 
    if(isset($_GET["id"])) {
        $id = $_GET["id"];
    }
?>

<?php 
    $sql = "DELETE FROM products WHERE id = $id";
    $result = mysqli_query($connect, $sql);
    header("location: index.php");
?>