<?php
require 'config.php';
require 'getDoctors.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js"></script>
    <title>Registracija pas gydytoja</title>
</head>
<body>
    <h1>Registruokites</h1>
    <form action="register_visit.php" method="POST">
        <input name="vardas" type="text" required placeholder="Jusu Vardas">
        <input name="pavarde" type="text" required placeholder="Jusu Pavarde">
        <select onchange="freeTimes(this.value)" required name="gydytojas">
            <option selected value="">Pasirinkite gydytoja</option>
            <?php
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                  echo "<option value=\"".$row["id"]."\">".$row["vardas"]." ".$row["pavarde"]."</option>";
                }
              }
            ?>
        </select>
        <select required name="laikas" id="laikas">
            <option selected value="">Pasirinkite laika</option>
        </select>
        <input type="submit" value="Registruotis">
    </form>
    <br>
    <br>
    <a href="pages/doctor_page.php">Gydytojų puslapis</a>
</body>
</html>