<?php
session_start();
require '../config.php';

if(isset($_GET["doctor"])) {
    $sql2 = "SELECT vardas, pavarde, vizitai.id, vizito_data, busena FROM pacientai, vizitai WHERE gydytojo_id=".$_GET['doctor'].
    " AND paciento_id IS NOT NULL AND vizitai.paciento_id=pacientai.id";
    $times = $mysqli->query($sql2);

if (is_object($times) && $times->num_rows > 0) {
    echo "<tr><td>Pacientas</td><td>Vizito laikas</td></tr>";
    while($time = $times->fetch_assoc()) {
        if($time['busena'] == 0) { 
            if($_GET['doctor'] != $_SESSION['id']) {
                $str = "<tr id=".$time['id']."><td>".$time['vardas']." ".$time['pavarde']."</td><td>".$time['vizito_data']."</td></tr>";
            } else {
                $str = "<tr id=".$time['id']."><td>".$time['vardas']." ".$time['pavarde']."</td><td>".$time['vizito_data'].
                " <button id=\"row".$time['id']."\" onclick=\"markCompleted(".$time['id'].")\">Ivykdyta</button>"."</td></tr>";
            }
            echo $str;
        } else {
            echo "<tr style=\"text-decoration:line-through;\" id=".$time['id']."><td>".$time['vardas']." ".$time['pavarde']."</td><td>".$time['vizito_data'].
            " <button disabled id=\"row".$time['id']."\" onclick=\"markCompleted(".$time['id'].");\">Ivykdyta</button>"."</td></tr>";
        }
    }
}

$mysqli->close();
}