<?php
require 'config.php';
$sql1 = "INSERT INTO pacientai (vardas, pavarde) VALUES ('".$_POST['vardas']."', '".$_POST['pavarde']."')";
$mysqli->query($sql1);
$paciento_id = $mysqli->query('SELECT LAST_INSERT_ID() AS id;')->fetch_object();
$sql1 = "UPDATE vizitai SET paciento_id = '".$paciento_id->id."' WHERE id = '".$_POST['laikas']."'";
$mysqli->query($sql1);
$mysqli->close();
header('Location: index.php');