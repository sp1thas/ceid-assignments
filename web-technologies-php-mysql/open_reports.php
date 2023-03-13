<?php

require 'session.php';
require 'mysql_connect.php';
$email=$_SESSION['currentmail'] ;
include 'userinfo.php';
include 'index-theme.html';



$rec_limit = 20;

//μέτρημα των αναφορών
 $summary = "SELECT count(id) FROM `reports` ";

 $summary_run = mysql_query($summary);

 if(!$summary_run )
{
  die('Δεν ήταν δυνατή η προσπέλαση δεδομέων: ' . mysql_error());
}

 $summary_num_rows = mysql_num_rows($summary_run);

 $i=0;

 $row = mysql_fetch_array($summary_run, MYSQL_NUM );

 $rec_count = $row[0];

if(isset($_GET{'page'} ) )
{
   $page = $_GET{'page'} + 1;
   $offset = $rec_limit * $page ;
}
else
{
   $page = 0;
   $offset = 0;
}
$left_rec = $rec_count - ($page * $rec_limit);
//επιλογή των "ανοιχτών" αναφορών και ταξινόμηση τους με βάση την ημερομηνία που προσθέθηκαν

 $list = "SELECT * FROM `reports` WHERE `status`='open' ORDER BY `date_added` ASC LIMIT $offset, $rec_limit ";

 $list_run = mysql_query( $list );

if(! $list_run )
{
  die('Could not get data: ' . mysql_error());
}

?>
<!DOCTYPE html>
<html lang"el">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <title>Ανοιχτές Αναφορές</title>
<body>
<div id="home_link">
<a href="admin-page.php">Αρχική</a>
</div>
<br>
<div id="openrep">
<fieldset><legend>Ανοιχτές Αναφορές</legend>
	<?php
	//εκτύπωση των αποτελεσμάτων

while($row = mysql_fetch_array($list_run, MYSQL_ASSOC))
{
	?>
	<fieldset style="margin-top: 10px;"><legend><?php echo "{$row['title']}";?></legend>
	<?php
     echo "ID:<b>{$row['id']}</b> <br> Τίτλος: <b>{$row['title']}</b>  <br>
         Κατηγορία:<b>{$row['category']}</b>  <br> Περιγραφή:{$row['description']}  <br>
         Ημερομηνία προσθήκης: <b>{$row['date_added']}</b> <br>
         Προσθέθηκε από τον χρήστη: <b>{$row['user_add']}</b> <br>
         Φωτογραφίες: <a href='{$row['photo1']}'>#1</a>
         				 <a href='{$row['photo2']}'>#2</a>
         				 <a href='{$row['photo3']}'>#3</a>
         				 <a href='{$row['photo4']}'>#4</a>";
		?>
</fieldset>
<?php
}
?>

</fieldset>
</div>
<?php


    if( $page > 0 )
{
   $last = $page - 2;
   echo "<a href=\"$_PHP_SELF?page=$last\">Προηγούμενες 20 αναφορές</a>";
   echo "<a href=\"$_PHP_SELF?page=$page\">Επόμενες 20 αναφορές</a>";
}
else if( $page == 0 )
{
    echo "<a href=\"$_PHP_SELF?page=$page\">Επόμενες 20 αναφορές</a>";
}
else if( $left_rec < $rec_limit )
{
   $last = $page - 2;
   echo "<a href=\"$_PHP_SELF?page=$last\">Προηγούμενες 20 αναφορές</a>";
}

?>
</body>
</html>
