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
      <title>Διαγραφή Χρηστών</title>
      
      <body>
  <div id="home_link">
      <a href='admin-page.php'>Αρχική</a>
  </div>
  
  <div id="delete">
      <fieldset><legend>Διαγραφή Χρηστών</legend>
      εισάγετε το email του χρήστη<br> που επιθυμείτε να διαγράψετε <br></br>
			<form action ="<?php echo $current_file; ?>" method="POST">
 				<input  type="text" name="email" placeholder="Email Χρήστη"><br></br>
				<input style="color: red;" type="submit" value="Delete">
			</form>
		

<?php
if (isset($_POST['email']))
{
 $email = $_POST['email'];







     if (!empty($email) )
 {
       $query = "SELECT `email` FROM `users` WHERE `email`='$email'";

       $query_run = mysql_query($query);

       $query_num_rows = mysql_num_rows($query_run);


             if ($query_num_rows==0 )
             {
           echo '<br><b>Λάθος email</b>';
             }

              if($query_num_rows==1)
             {


                $query1 = "DELETE  FROM `users` WHERE `email`= '$email' ";
                $query_run1 = mysql_query($query1);
                 echo '<br><b>Η Διαγραφή ολοκληρώθηκε!</b>';
             }
             else { echo"dfsdfsf";}



 }


        else
                {
                 echo '<br><b>Πρέπει να εισάγετε κάποιο email</b>';
                }


}

 ?> 
 </fieldset>
 </div>
 
 <?php


 $users = "SELECT * FROM `users` ORDER BY `last_name` ASC ";

 $users_run = mysql_query($users);

?>	<div id="users">

<fieldset><legend>Λίστα Χρηστών</legend>
	<?php

while($row = mysql_fetch_array($users_run, MYSQL_ASSOC))
{
	?>
	<fieldset>
	<?php echo "Email: <b>{$row['email']}</b> <br> Κωδικός: <b>{$row['password']}</b>  <br>
         Όνομα:<b>{$row['first_name']}</b>  <br> Επώνυμο: <b>{$row['last_name']}</b>  <br> Τηλέφωνο: <b>{$row['phone']}</b> <br>";
		?>
</fieldset>
<?php 	echo "<br>";
} 
?>
 
 </div>
</body>
</html>