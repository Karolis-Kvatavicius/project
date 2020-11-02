<?php
session_start();
require '../config.php';

if(isset($_POST['password'])) {
    $sql = "SELECT * FROM gydytojai WHERE CONCAT(vardas, ' ', pavarde)='".$_POST['uname']."';";
    $result = $mysqli->query($sql);
    if($result->num_rows == 0) {
        session_destroy();
        header('Location: login.php');
    }
    $row = $result->fetch_assoc();
    if($row['vardas']." ".$row['pavarde'] === $_POST['uname'] && $row['slaptazodis'] === md5($_POST['password'])) {
        $_SESSION['uname'] = $_POST['uname'];
        $_SESSION['id'] = $row['id'];
        header('Location: doctor_page.php');
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Prisijunkite</h1>
    <form action="login.php" method="post">
    <input placeholder="Vartotojo vardas" required name="uname" type="text">
    <input placeholder="Slaptažodis" required name="password" type="password">
    <input type="submit" value="Log In">
    </form>
    <br>
    <a href="../index.php">Į pacientų puslapį</a>
</body>
</html>