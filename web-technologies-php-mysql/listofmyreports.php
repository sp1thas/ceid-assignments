<?php
    require 'session.php';
    require 'mysql_connect.php';

	 $email=$_SESSION['currentmail'] ;
	 include 'userinfo.php';
    include 'index-theme.html';
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html lang="el" charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <link rel="stylesheet" type="text/css" href="theme.css">

    <title>Οι αναφορές μου</title>






<body>
    <div id="home_link">
      <a href='user-page.php'>Αρχική</a>
  </div>

  <div id="listreports">

<?php


 $email=$_SESSION['currentmail'] ;

 $myreports = "SELECT * FROM `reports` WHERE `user_add`='$email' ORDER BY `date_added` ASC ";

 $myreports_run = mysql_query($myreports);

?>
<fieldset><legend>Οι αναφορές μου</legend>
	<?php

while($row = mysql_fetch_array($myreports_run, MYSQL_ASSOC))
{
	?>
	<fieldset style"margin-top: 5px;"><legend><?php echo "{$row['title']}";?></legend>
	<?php echo "ID:<b>{$row['id']}</b> <br> Τίτλος: <b>{$row['title']}</b>  <br>
         Κατηγορία:<b>{$row['category']}</b>  <br> Περιγραφή:{$row['description']}  <br> Κατάσταση <b>{$row['status']}</b> <br>
         Ημερομηνία προσθήκης: <b>{$row['date_added']}</b> <br> Ημερομηνία επίλυσης:<b>{$row['date_resolved']}</b> <br>
         Ο διαχειριστής που επέλυσε την αναφορά: <b>{$row['user_resolve']}</b> <br>
         Φωτογραφίες: <a href='{$row['photo1']}'>#1</a>
         				      <a href='{$row['photo2']}'>#2</a>
         				      <a href='{$row['photo3']}'>#3</a>
         				      <a href='{$row['photo4']}'>#4</a>";
		?>
</fieldset>
<br>
<?php
}
?>
</fieldset>
</div>
  </body>
</html>
