<?php
require 'config.php';

if(isset($_GET["doctor"])) {
    $sql2 = "SELECT id, vizito_data FROM vizitai WHERE gydytojo_id=".$_GET['doctor']." AND paciento_id IS NULL";
    $times = $mysqli->query($sql2);
    $mysqli->close();

if ($times->num_rows > 0) {
    while($time = $times->fetch_assoc()) {
        echo "<option value=\"".$time["id"]."\">".$time["vizito_data"]."</option>";
    }
}

}


