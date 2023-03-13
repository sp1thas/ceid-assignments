<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<?php 
  require 'session.php';
  require 'mysql_connect.php';
	$email=$_SESSION['currentmail'] ;
	include 'userinfo.php';
	include 'index-theme.html';
	

  
?>
<html lang="el">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="theme.css">
		
<title>Σελίδα διαχειριστή</title>

<div id="admin-actions">
<fieldset>
	<legend>Λίστα Ενεργιών Διαχειριστή</legend>
	<form name="input" action="open_reports.php" method="get">
		<input style="width: 250px;" type="submit" value="Ανοιχτές Αναφορές"  >
	</form><br>
	<form name="input" action="closed_reports.php" method="get">	
		<input style="width: 250px;" type="submit" value="Λυμένες Αναφορές"  >
	</form><br>
	<form name="input" action="users_edit.php" method="get">
		<input style="width: 250px;" type="submit" value="Διαχείριση Χρηστών"  >
	</form><br>
	<form name="input" action="delete_users.php" method="get">
		<input style="width: 250px;" type="submit" value="Διαγραφή Χρηστών"  >
	</form><br>
	<form name="input" action="edit_categories.php" method="get">
		<input style="width: 250px;" type="submit" value="Διαχείριση Κατηγοριών"  >
	</form><br>
	<form name="input" action="change_report_status.php" method="get">
		<input style="width: 250px;" type="submit" value="Αλλαγή Κατάστασης Αναφοράς"  >
	</form><br> 
</fieldset>
</div>

</body>
</html>
