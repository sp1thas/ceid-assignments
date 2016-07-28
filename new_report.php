<?php

 require 'session.php';
 require 'mysql_connect.php';

    $email=$_SESSION['currentmail'];
    include 'userinfo.php';
    include 'index-theme.html';
	
?>
<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
 
</head>
 <title>Νέα Αναφορά</title>
<body>
 
  <div id="home_link">
      <a href='user-page.php'>Αρχική</a>
  </div>

 <div id="newreport">
 <fieldset style="color: #0481b1;"><legend>Νέα αναφορά</legend>
 
<form onSubmit="(sendlat() & sendlon());"action="new_report.php" enctype="multipart/form-data"  method="POST">

<input type="text" name="title" placeholder="Τίτλος" >

<textarea rows="4" cols="30"name="description" placeholder="Περιγραφή" style="margin-top: 5px;">
</textarea>
<?php
$i=1;
$query1 = "SELECT `type` FROM `categories`";
    $query_run1 = mysql_query( $query1 );
      echo "<b>Διαθέσιμες Κατηγορίες</b><br>"  ;
	  ?><fieldset style="padding: 2px; color: gray; border-color: gray; margin-top: 5px;"><?php
     while($row = mysql_fetch_array($query_run1, MYSQL_ASSOC))
     {
       	echo "$i. ";
       	echo "$row[type]";
		echo "<br>";
		$i++;
     }
?>
</fieldset>
<input type="text" name="category" placeholder="Κατηγορία" style="margin-top: 5px;"><br>
<input type="file" accept="image/*;capture=camera"  name="photo1" placeholder="Φωτογραφία 1" style="margin-top: 5px;"><br>
<input type="file" accept="image/*;capture=camera"name="photo2" style="margin-top: 5px;"><br>
<input type="file" accept="image/*;capture=camera"name="photo3" style="margin-top: 5px;"><br>
<input type="file" accept="image/*;capture=camera"name="photo4" style="margin-top: 5px;"><br>
<input type="submit" value="Προσθήκη" style="margin-top: 5px;"><br><br>
<input type="hidden" id="lat" name="lat">
<input type="hidden" id="lon" name="lng">


<?php
	$date = new DateTime();
    date_timezone_set($date, timezone_open('Europe/Athens'));
    $date =  date_format($date, 'Y-m-d H:i:s') . "\n";
    
    


   if (isset($_POST['title'])&&isset ($_POST['description'])&&isset ($_POST['category']))
 {
   $title = $_POST['title'];
   $description = $_POST['description'];
   $category = $_POST['category'];
   $latitude =  $_POST['lat'];
   $longtitude =  $_POST['lng'];


     if (empty($title)|| empty($description))
     {
       echo "<br><br><br>Εισάγετε περιγραφή και κατηγορία";
     }
     else
         {
            

				 
				       
   if((($_FILES["photo1"]["type"] == "image/gif") || ($_FILES["photo1"]["type"] == "image/jpeg") || ($_FILES["photo1"]["type"] == "image/jpg") || ($_FILES["photo1"]["type"] == "image/pjpeg") || ($_FILES["photo1"]["type"] == "image/x-png") || ($_FILES["photo1"]["type"] == "image/png"))    )
   {
   $path= "images/" . $_FILES["photo1"]["name"];
   move_uploaded_file($_FILES["photo1"]["tmp_name"], $path );
   if ($_FILES["photo1"]["error"] > 0)
    {echo "Error Code: " . $_FILES["photo1"]["error"] . "<br />";}
   

   }
   
  
  
 
   if((($_FILES["photo2"]["type"] == "image/gif") || ($_FILES["photo2"]["type"] == "image/jpeg") || ($_FILES["photo2"]["type"] == "image/jpg") || ($_FILES["photo2"]["type"] == "image/pjpeg") || ($_FILES["photo2"]["type"] == "image/x-png") || ($_FILES["photo2"]["type"] == "image/png"))    )
   {
   $path2= "images/" . $_FILES["photo2"]["name"];
   move_uploaded_file($_FILES["photo2"]["tmp_name"], $path2 );
   if ($_FILES["photo2"]["error"] > 0)
    {echo "Error Code: " . $_FILES["photo2"]["error"] . "<br />";}

   }
  
  
   if((($_FILES["photo3"]["type"] == "image/gif") || ($_FILES["photo3"]["type"] == "image/jpeg") || ($_FILES["photo3"]["type"] == "image/jpg") || ($_FILES["photo3"]["type"] == "image/pjpeg") || ($_FILES["photo3"]["type"] == "image/x-png") || ($_FILES["photo3"]["type"] == "image/png"))    )
   {
   $path3= "images/" . $_FILES["photo3"]["name"];
   move_uploaded_file($_FILES["photo3"]["tmp_name"], $path3 );
   if ($_FILES["photo3"]["error"] > 0)
    {echo "Error Code: " . $_FILES["photo3"]["error"] . "<br />";}

   }
   
  
  
   if((($_FILES["photo4"]["type"] == "image/gif") || ($_FILES["photo4"]["type"] == "image/jpeg") || ($_FILES["photo4"]["type"] == "image/jpg") || ($_FILES["photo4"]["type"] == "image/pjpeg") || ($_FILES["photo4"]["type"] == "image/x-png") || ($_FILES["photo4"]["type"] == "image/png"))    )
   {
   $path4= "images/" . $_FILES["photo4"]["name"];
   move_uploaded_file($_FILES["photo4"]["tmp_name"], $path4 );
   if ($_FILES["photo4"]["error"] > 0)
    {echo "Error Code: " . $_FILES["photo4"]["error"] . "<br />";}

   }

   $cat = "SELECT * FROM `categories` WHERE `type`='$category'";
            
          $cat_run = mysql_query($cat);

          $cat_run_rows = mysql_num_rows($cat_run);
          

          
           if ($cat_run_rows==0 )
             {
				echo "<br>" . "Η Κατηγορία που εισάγατε δεν είναι έγκυρη";
			 }
				else {

				 
                   @$query = "INSERT INTO `reports`(`title`, `status`, `category`, `description`, `date_added`, `lat`, `lng`,`user_add`,`photo1`,`photo2`,`photo3`,`photo4`)
                        VALUES ('".mysql_real_escape_string($title)."','open','".mysql_real_escape_string($category)."','".mysql_real_escape_string($description)."','".mysql_real_escape_string($date)."','".mysql_real_escape_string($latitude)."','".mysql_real_escape_string($longtitude)."','".mysql_real_escape_string($email)."','".mysql_real_escape_string($path)."','".mysql_real_escape_string($path2)."','".mysql_real_escape_string($path3)."','".mysql_real_escape_string($path4)."')";
                   if ($query_run = mysql_query($query))
                     {
                       echo 'Η αναφορά προσθέθηκε επιτυχώς. Ευχαριστούμε!';
                     }
                     else
                     {
                       echo 'Ουπς.. Κάτι πήγε στραβά!';
                     }
                 }
                } 

 } 
?>
</form>
</fieldset>
</div>


<!--______________________________xarths____________________________________________-->


<script type="text/javascript" src="scripts/googlemapsapi.js"></script> 

<script>
var coords , marker, markerPosition,pos;
function success(position) {
  var mapcanvas = document.createElement('div');
  mapcanvas.id = 'mapcontainer';
  mapcanvas.style.height = '500px';
  mapcanvas.style.width = '600px';

  document.querySelector('article').appendChild(mapcanvas);
   var lat = position.coords.latitude;
   var lon = position.coords.longitude;
  coords = new google.maps.LatLng(lat,lon);
  
  var options = {
    zoom: 15,
    center: coords,
    mapTypeControl: false,
    navigationControlOptions: {
    	style: google.maps.NavigationControlStyle.SMALL
    },
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("mapcontainer"), options);
   map.setTilt(45);
  




   marker = new google.maps.Marker({
      position: coords,
      map: map,
      draggable: false,
      title: 'Marker report'
  });
  
  
  
	

        google.maps.event.addListener(map, 'click', function(event) {
             
			placeMarker(event.latLng,map,marker);
            google.maps.event.removeListener(myListener);
        });

 /* google.maps.event.addListener(marker, 'click', function(event) {

        infoWindow.open(map, marker);
         placeMarker(event.latLng);

    });*/    

}	
    

 function placeMarker(location,map,marker) {


      
    marker.setPosition(location);
  
  coords = location;
  
   var infoWindowContent = '<div class="info_content">' +
        'Coordinates: Η τοποθεσία μου ' + coords.lat()    + coords.lng()
    '</div>';




    var infoWindow = new google.maps.InfoWindow({
        content: infoWindowContent
    });
  
  //var markerPosition = marker.getPosition();
         //  populateInputs();
            google.maps.event.addListener(marker, "drag", function (mEvent) {
                //populateInputs();
				
				
            });
  
  infoWindow.open(map, marker);
    }

function populateInputs() {
            document.getElementById("t1").value=coords.lat();
            document.getElementById("t2").value=coords.lng();
		
			
        }
	


if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(success);
} else {
  error('Geo Location is not supported');
}   

function sendlat(){

           var lat1=coords.lat();
           document.getElementById('lat').value=lat1;
}

function sendlon() {


           var lon1=coords.lng();
           document.getElementById('lon').value=lon1;
}

google.maps.event.addDomListener(window, 'load', success(position));

</script>
   <div id="wrapper">
   	
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <article>
    </article>
    

</div>

</body>
</html>



 





