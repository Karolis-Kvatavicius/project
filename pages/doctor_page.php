<?php
session_start();

if(isset($_POST['logout'])) {
    unset($_SESSION['uname']);
}

if(!isset($_SESSION['uname'])) {
    session_destroy();
    header('Location: login.php');
}
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
<body onload="meetings(document.getElementById('gydytojas').value)">
    <h1 id="greeting">Sveiki, <?php echo $_SESSION['uname'] ?></h1>
    <form action="doctor_page.php" method="POST">
        <select onchange="meetings(this.value)" required name="gydytojas" id="gydytojas">
            <option value="">Pasirinkite gydytoja</option>
            <?php
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    if($_SESSION['id'] == $row['id']) {
                        echo "<option selected value=\"".$row["id"]."\">".$row["vardas"]." ".$row["pavarde"]."</option>";
                    } else {
                        echo "<option value=\"".$row["id"]."\">".$row["vardas"]." ".$row["pavarde"]."</option>";
                    }              
                }
              }
            ?>
        </select> 
        <input formnovalidate type="submit" name="logout" value="Log out">   
    </form>
    <br>
    <div>
        <table id="vizitai">


        </table>
    </div>

</body>
</html>