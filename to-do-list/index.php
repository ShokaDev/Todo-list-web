<?php
if (isset($_GET['alert'])) { 
    switch ($_GET['alert']) {
        case "gagal":
            echo "<div class='alert alert-danger font-weight-bold text-center'>LOGIN GAGAL!</div>";
            break;
        case "belum_login":
            echo "<div class='alert alert-danger font-weight-bold text-center'>SILAHKAN LOGIN TERLEBIH DULU!</div>";
            break;
        case "logout":
            echo "<div class='alert alert-success font-weight-bold text-center'>ANDA TELAH LOGOUT!</div>";
            break;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <main>
        <div class="wrapper">
            <form action=""></form>
        </div>
    </main>
    <script src="js/script.js"></script>
</body>
</html>