<?php 
    require_once("../../database/connect.php");
?>

<?php 
        if(isset($_POST["save"])) {
            $name = $_POST["name"];

            if($name == "") {
                echo "vui long nhap name </br>";
            };

            if($name != "") {
                $sql = "INSERT INTO category(name) VALUES('$name')";
                $result = mysqli_query($connect, $sql);
                header("location: ");
            }
        }
    ?>