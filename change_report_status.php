<?php
require 'session.php';
require 'mysql_connect.php';

$email=$_SESSION['currentmail'] ;
include 'userinfo.php';
include 'index-theme.html';
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html lang"el">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>Αλλαγή κατάστασης αναφοράς</title>
 <body>
 
 <div id="home_link">
      <a href='admin-page.php'>Αρχική</a>
  </div>
  
  


</fieldset>

</div>
  
 <div id="change_report_status">
<fieldset><legend>Αλλαγή κατάστασης αναφοράς</legend>
εισάγετε την ID της αναφοράς από το διπλανό πίνακα των ανοιχτών αναφορών για να τροποποιήσετε την κατάσταση της

<form action ="<?php echo $current_file; ?>" method="POST">
<input type="text" name="id" placeholder="ID"><br>
εισάγετε κάποιο σχόλιο σχετικό με την επίλυση της παρπούσας αναφοράς<br>
<textarea rows="4" cols="30"
name="comment" placeholder="Σχόλιο" >
</textarea>
<br>
<input type="submit" value="Αλλαγή">



<?php

 

 
 $email=$_SESSION['currentmail'] ;
 
 $date = new DateTime();
    date_timezone_set($date, timezone_open('Europe/Athens'));
    $date =  date_format($date, 'Y-m-d H:i:s') . "\n";



if (isset($_POST['id'])&& isset($_POST['comment']))
 
 {

 $id = $_POST['id'];
 $comment = $_POST['comment'];
 
 if (empty($id))
 {
   echo '<br><u><font color="red">Εισάγετε την ID της αναφοράς που θέλετε να μορφοποιήσετε</font></u>';
 }
 else
               {
                  $query = "SELECT * FROM `reports` WHERE `id`='$id' and`status`='open'";
            
                  $query_run = mysql_query($query);

                  $query_num_rows = mysql_num_rows($query_run);
                  
                   if ($query_num_rows==1 )
                   {

                  $query1 ="UPDATE `reports` SET `status` = 'closed' WHERE `id` = '$id'";
                  $query2 ="UPDATE `reports` SET `user_resolve` = '$email' WHERE `id` = '$id'";
                  $query3 ="UPDATE `reports` SET `date_resolved` = '$date' WHERE `id` = '$id'";
		 
                 
                 
                  $query_run1 = mysql_query($query1);
                  $query_run2 = mysql_query($query2);
	          		$query_run3 = mysql_query($query3);

                  echo 'Οι αλλαγές αποθηκεύτηκαν<br>' ;
                  
                  

                       if (!empty($comment))
                       {
                            $query2 ="UPDATE `reports` SET `comments` = '$comment' WHERE `id` = '$id'";
                            $query_run2 = mysql_query($query2);

                       }
                  }
                  else
                   {
                     echo '<br><font color="red"><br>Λάθος</font>';
                   }
                     
                  
                  
                  
                  
               }

 }
 ?>
 </fieldset>
 </div>
  <div id="openlist"> 
 <fieldset style="color: #0481b1;"><legend>Λίστα ανοιχτών αναφορών</legend>
 <?php
 
  $query5 = "SELECT * FROM `reports` WHERE `status`='open' ORDER BY `id` ASC ";

 $query_run5 = mysql_query($query5);

 $query_num_rows5 = mysql_num_rows($query_run5);

 $i=0;
 
 while($row = mysql_fetch_array($query_run5, MYSQL_ASSOC))
{?><fieldset><?php
    echo "ID: <b>{$row['id']}</b> <br> Τίτλος: <b>{$row['title']}</b>  <br> 
         Κατηγορία: <b>{$row['category']}</b>  <br> Περιγραφή:{$row['description']}  <br> Κατάσταση: <b>{$row['status']}</b> <br> 
         Ημερομηνία προσθήκης: <b>{$row['date_added']}</b> <br> 
         Ο Χρήστης που πρόσθεσε την αναφορά: <b>{$row['user_add']}</b> <br> 
       ";
       ?></fieldset><?php echo "<br>";
}
?>

 </div>

</body>
</html>