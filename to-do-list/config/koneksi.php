<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "todolist";

$con = new mysqli($host, $user, $password, $database);

if ($con->connect_error) {
    die("Koneksi gagal: " . $con->connect_error);
}
?>
