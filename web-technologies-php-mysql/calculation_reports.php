
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
 <html lang="el">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >


  <div>

    <fieldset>
    <legend>Λεπτομέριες αναφορών συστήματος</legend>

<?php

require 'mysql_connect.php';
   
    //μέτρηση των αναφορών που υπάρχουν στο σύστημα
   $summary = "SELECT COUNT(id) FROM `reports` ";
   $summary_run = mysql_query($summary);
   if(! $summary_run)
   {
     die('Δεν μπορέσαμε να προσπελάσουμε τα δεδομένα: ' . mysql_error());
   }
    //εκτύπωση του αριθμού
    echo "Συνολικά στο σύστημα έχουν καταχωρηθεί: " . mysql_result($summary_run, 0) . " αναφορές για βλάβες.<br>" ;

      //άθροιση των αναφορών που βρίσκονται σε κατάσταση open
    $summary_open = "SELECT COUNT(id) FROM `reports` WHERE `status`='open'  ";
    $summary_open_run = mysql_query($summary_open);
    if(! $summary_open_run )
    {
     die('Δεν μπορέσαμε να προσπελάσουμε τα δεδομένα: ' . mysql_error());
    }
            //και τύπωμα αυτών
            echo "Από αυτές οι: " . mysql_result($summary_open_run, 0) . " εκρεμούν ακόμα<br>";
              //άθροιση των αναφορών που βρίσκονται σε κατάσταση closed
             $summary_closed = "SELECT COUNT(id) FROM `reports` WHERE `status`='closed '  ";
             $summary_closed_run = mysql_query($summary_closed);
          if(! $summary_closed_run )
            {
               die('Δεν μπορέσαμε να προσπελάσουμε τα δεδομένα: ' . mysql_error());
            }
                      //και τύπωμα αυτών 

                      echo "Ενώ οι: " . mysql_result($summary_closed_run, 0) . " έχουν επισκευαστεί.<br>";

              //άθροιση των αναφορών που βρίσκονται σε κατάσταση closed

                     $summary_closed = "SELECT COUNT(id) FROM `reports` WHERE `status`='closed'  ";
                     $summary_closed_run = mysql_query($summary_closed);
                        if(! $summary_closed_run )
                           {
                             die('Δεν μπορέσαμε να προσπελάσουμε τα δεδομένα: ' . mysql_error());
                           }

                 $summary_num_rows = mysql_num_rows($summary_closed_run);

                 $i=0;
 
                $sum = mysql_result($summary_closed_run, 0);
                $ath = 0;
                $summary1 = "SELECT * FROM `reports` WHERE `status`='closed'";
                $summary1_run = mysql_query($summary1);


 
                  while($row = mysql_fetch_array($summary1_run, MYSQL_ASSOC))
                   {



                    $date_added = $row['date_added'];
                    $date_resolved = $row['date_resolved'];

                $d1 = strtotime( $date_added);
                $d2 = strtotime($date_resolved);
        
                $d = $d2 - $d1;
                $ath = $ath + $d;
                      //echo $ath;
                   }
                    //υπολογισμός του μέσου όρου που απαιτείται για την επίλυση  των αναφορών 
                     @$mo =  $ath/$sum;
                     $mo = $mo/3600;
                     echo "O μέσος χρόνος που απαιτείται για την επίλυση τους είναι: " . $mo . "h";


       
?>

</fieldset><br>

<fieldset><legend>Τελευταίες 20 Αναφορές</legend>
<?php
 $reports = "SELECT * FROM `reports` WHERE `status`='open' ORDER BY `reports`.`date_added` DESC LIMIT 20";

 $reports_run = mysql_query($reports);
$i=1;

while($row = mysql_fetch_array($reports_run, MYSQL_ASSOC))
{
echo " $i. <i>{$row['date_added']}</i> <b>{$row['title']}</b> <br>";
$i++;		}
?>

</fieldset>
</div>
</html>
