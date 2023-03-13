<?php
  require 'session.php';
  require 'mysql_connect.php';

  include 'index-theme.html';



?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
  <meta name="viewport" content="width=device-width">  

 <title>Αρχική</title>

 <head>
<style>
img {
    max-width: 100%;
}
</style>

<!-- λινκ για εγγραφή στο σύστημα -->
  <div id="register" style"max-width: 100%;">
      Δεν έχετε ακόμα γραφτεί στο σύστημα;<br>
                   <a href="register.php"><img src="register.png" alt="Εγγραφή" </a>
     </div>
             <div id="login-link"> <a href="login.php">ΕΙΣΟΔΟΣ</a></div>

<div id="rss">
	<a href="rss.php"><img src="rss.png" alt="Συνεχής Ροή"/></a>
</div>




<!-- //script που απαιτείται για τον πίνακα που εμφανίζεται στην αρχική σελίδα του συστήματος -->
 <script type="text/javascript" src="scripts/googlemapsapi.js"></script>
    <script type="text/javascript">



    function load() {
      var map = new google.maps.Map(document.getElementById("map"), {
        center: new google.maps.LatLng(38.290462, 21.788940),
        zoom: 15,
        mapTypeId: 'roadmap'
      });
      var infoWindow = new google.maps.InfoWindow;

<!-- Change this depending on the name of your PHP file -->
      downloadUrl("phpsqlajax_genxml3.php", function(data) {
        var xml = data.responseXML;
        var markers = xml.documentElement.getElementsByTagName("marker");
        for (var i = 0; i < markers.length; i++) {
          var name = markers[i].getAttribute("name");
          var address = markers[i].getAttribute("address");
          var type = markers[i].getAttribute("type");
          var point = new google.maps.LatLng(
              parseFloat(markers[i].getAttribute("lat")),
              parseFloat(markers[i].getAttribute("lng")));
          var html = "<b>" + name + "</b> <br/>" + address;
          var icon = 'http://labs.google.com/ridefinder/images/mm_20_blue.png';
          var marker = new google.maps.Marker({
            map: map,
            position: point,
            icon: icon.icon
          });
          bindInfoWindow(marker, map, infoWindow, html);
        }
      });
    }

    function bindInfoWindow(marker, map, infoWindow, html) {
      google.maps.event.addListener(marker, 'click', function() {
        infoWindow.setContent(html);
        infoWindow.open(map, marker);
      });
    }

    function downloadUrl(url, callback) {
      var request = window.ActiveXObject ?
          new ActiveXObject('Microsoft.XMLHTTP') :
          new XMLHttpRequest;

      request.onreadystatechange = function() {
        if (request.readyState == 4) {
          request.onreadystatechange = doNothing;
          callback(request, request.status);
        }
      };

      request.open('GET', url, true);
      request.send(null);
    }

    function doNothing() {}

    //]]>

  </script>
  <script type="text/javascript"
    src="scripts/jquery.min.js"></script>

  </head>

  <body onload="load()">
   <div id="index-reports">
    <fieldset>	<!--γραφικά-->
                <legend>Λεπτομέριες αναφορών συστήματος</legend>περιμένετε μερικά δευτερόλεπτα...</fieldset><br />
                <fieldset><legend>Τελευταίες 20 Αναφορές</legend>
    <div id="calculation_reports">περιμένετε μερικά δευτερόλεπτα...</div>
  </fieldset><br />
</div>


     <script type="text/javascript">// <![CDATA[
    $(document).ready(function() {
    $.ajaxSetup({ cache: false }); // This part addresses an IE bug. without it, IE will only load the first number and will never refresh
    setInterval(function() {
    $('#index-reports').load('calculation_reports.php');
    }, 3000); // the "3000" here refers to the time to refresh the div. it is in milliseconds.
    });
    // ]]></script>

<div id="map"></div>


<html>
       
          <div id="login">
            		<form action ="<?php echo $current_file; ?>" method="POST" height="400px">
            			<fieldset>
                			<legend>Φόρμα Εισόδου</legend>
                 				<div>                     
                 					<input type="text" name="email" placeholder="Email">
                  			</div>
                  			<div>
                  				<input type="password" name="password" placeholder="Κωδικός">
                  			</div>
                    				<input type="submit" value="ΕΙΣΟΔΟΣ">
                  	</fieldset>
                  </form>
                

            <?php
            //έλεγχος αν τα δύο πεδία είναι κενά
if (isset($_POST['email'])&&isset ($_POST['password']))
{
	
		 $email = $_POST['email'];
 		 $password = $_POST['password'];

		 $password_hash = md5($password);

     if (!empty($email)&&!empty($password))
	 {


       
	if (email==123&&password==123)
	{
		echo 'Eisodos';
	}

}
    
        else{ echo 'Πρέπει να γραφτείτε πρώτα στο σύστημα';}


}
?>
</body>

</html>
