<?php
require '../config.php';

if(isset($_GET["visit"])) {
    $sql = "UPDATE vizitai SET busena = 1 WHERE id = '".$_GET["visit"]."';";
    $mysqli->query($sql);
    $mysqli->close();
}