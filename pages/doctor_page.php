<?php
require '../config.php';
require '../getDoctors.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../js/script.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <title>Gydytojo puslapis</title>
</head>
<body>
    <form action="" method="">
        <select onchange="meetings(this.value)" required name="gydytojas">
            <option selected value="">Pasirinkite gydytoja</option>
            <?php
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                  echo "<option value=\"".$row["id"]."\">".$row["vardas"]." ".$row["pavarde"]."</option>";
                }
              }
            ?>
        </select>    
    </form>
    <div id="vizitai"></div>

</body>
</html>