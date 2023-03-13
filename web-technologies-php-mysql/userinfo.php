<?php

            require 'session.php';
            require 'mysql_connect.php';
?> 
 
 <!DOCTYPE html>
<html lang="el">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <link rel="stylesheet" type="text/css" href="theme.css">

	<div id="userinfo">
            
<?php
             echo "Είστε συνδεδεμένος ως: ";             
             echo $email . "<br>";
             echo '	<a href="logout.php"> Αποσύνδεση </a>';

            ?>
    </div>
</html>
      