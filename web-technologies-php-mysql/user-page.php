<?php
require 'session.php';
require 'mysql_connect.php';
$email=$_SESSION['currentmail'] ;
include 'userinfo.php';

include 'index-theme.html';

?>

	<!DOCTYPE html>

<html lang="el">
<meta http-equiv="Content-Type" content="text/html; charset="utf-8" >

<title>Σελίδα χρήστη</title>


<link rel="stylesheet" type="text/css" href="theme.css">

<body>


	<div id="user-actions">
<fieldset>
	<legend>Λίστα Ενεγριών Χρήστη</legend>

	  <form name="input1" action="listofmyreports.php" method="get">  
	  <input style="width: 200px;" type="submit" value="Λίστα των αναφορών μου"  >
      </form>
	  <form name="input2" action="new_report.php" method="get">
        <input style="width: 200px;" type="submit" value="Νέα αναφορά"  >
      </form>
      <form name="input3" action="edit_my_profile.php" method="get">
        <input style="width: 200px;" type="submit" value="Διαχείριση προφίλ"  >
     </form>

</fieldset>
 </div>

</body>

</html>
