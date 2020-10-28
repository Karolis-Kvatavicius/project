function freeTimes(doctor_id) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("laikas").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "freeTimes.php?doctor=" + doctor_id, true);
    xhttp.send();
}

function meetings(doctor_id) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("vizitai").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "meetings.php?doctor=" + doctor_id, true);
    xhttp.send();
}

function markCompleted(visit) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById(visit).style.textDecoration = "line-through";
      }
    };
    xhttp.open("GET", "markDone.php?visit=" + visit, true);
    xhttp.send();
}