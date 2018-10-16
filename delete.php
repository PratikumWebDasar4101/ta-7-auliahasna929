<?php
session_start();
require_once("db.php");
$nim = $_GET["nim"];
$sql = "DELETE FROM pendataan WHERE nim=$nim";
if (mysqli_query($conn, $sql)) {
    header("Location: lihatdata.php");
}else {
    echo "Gagal";
}
?>