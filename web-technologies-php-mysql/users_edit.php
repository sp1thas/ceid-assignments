<?php

 require 'session.php';
 require 'mysql_connect.php';
 $email=$_SESSION['currentmail'] ;
 include 'userinfo.php';
 include 'index-theme.html';
 
?>

<!DOCTYPE HTML>
<html lang="el">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Διαχείριση Χρηστών</title>
<body>
<div id="home_link">
<a href="admin-page.php/">Home</a>
</div>

<div id="edit-users">
<fieldset ><legend>Επιλογή χρήστη προς επεξεργασία</legend>
<form action ="<?php echo $current_file; ?>" method="POST">
<input type="text" name="email" placeholder="email χρήστη">
</fieldset>
<br>


<fieldset><legend>Πίνακας διαχείρησης στοιχείων χρήστη</legend>
<form action="users_edit.php" method="POST">
 <input type="text" name="new_email" placeholder="Νέο email"><br>
 <input type="password" name="new_password" placeholder="Νέος Κωδικός"><br>
 <input type="password" name="re_password" placeholder="Επαλήθευση Κωδικού"><br>
 <input type="text" name="new_first_name" placeholder="Νέο Όνομα"><br>
 <input type="text" name="new_last_name" placeholder="Νέο Επώνυμο"><br>
 <input type="text" name="new_phone" placeholder="Νέο Τηλέφωνο"><br>
 <input type="submit" value="Αλλαγή">

<?php
//έλεγχος αν τα πεδία έχουν συμπληρωθεί
   if (isset($_POST['email'])&& isset($_POST['new_email'])&& isset ($_POST['new_password'])&& isset($_POST['re_password'])&& isset($_POST['new_first_name'])&& isset($_POST['new_last_name'])&& isset($_POST['new_phone']))
 {
   $email = $_POST['email'];
   $new_email = $_POST['new_email'];
   $new_password = $_POST['new_password'];
   $re_password = $_POST['re_password'];
   $new_first_name = $_POST['new_first_name'];
   $new_last_name = $_POST['new_last_name'];
   $new_phone = $_POST['new_phone'];

        if (!empty($email))
        {
          $user_mail = "SELECT `email` FROM `users` WHERE `email`='$email'";
            
          $user_mail_run = mysql_query($user_mail);

          $user_mail_run_rows = mysql_num_rows($user_mail_run);
          

          
           if ($user_mail_run_rows==0 )
             {
				echo "<br>" . "Το email που εισάγατε δεν είναι έγκυρο <br>";
             }
             
           else
           {
                 if (empty($new_email)&& empty($new_password)&& empty($new_first_name)&& empty($new_last_name)&& empty($new_phone))
                 {
                      echo 'Πρέπει να συμπληρώσετε κάποιο πεδίο';
                 }
                 else
                 {
                 		if(!empty($new_password))
                        {
                               if($new_password!=$re_password)
                                   {
                                   echo 'Οι κωδικοί δεν ταιριάζουν';
                                    }
                               else
                               {
                                $newpass ="UPDATE `users` SET `password` = '$new_password' WHERE `email` = '$email'";
                                $newpass_run = mysql_query($newpass);
								echo "<br>";
                                echo 'Ο κωδικός άλλαξε';
                                echo "<br>";
                               }
                        }
                        
                         if(!empty($new_first_name))
                        {
                           $newfirst ="UPDATE `users` SET `first_name` = '$new_first_name' WHERE `email` = '$email'";
                           $newfirst_run = mysql_query($newfirst);
                           echo '  Το όνομα άλλαξε';
						   echo "<br>";
                        }
                          if(!empty($new_last_name))
                        {
                           $newlast ="UPDATE `users` SET `last_name` = '$new_last_name' WHERE `email` = '$email'";
                           $newlast_run = mysql_query($newlast);
                           echo '  Το επώνυμο άλλαξε';
                           echo "<br>";
                        }
                        if(!empty($new_phone))
                        {
                           $newphone ="UPDATE `users` SET `phone` = '$new_phone' WHERE `email` = '$email'";
                           $newphone_run = mysql_query($newphone);
                           echo 'Ο αριθμός τηλεφώνου άλλαξε';
						   echo "<br>";
                        }		
                        if(!empty($new_email))
                        {
                           $newmail ="UPDATE `users` SET `email` = '$new_email' WHERE `email` = '$email'";
                           $new_email_run = mysql_query($newmail);
                           echo ' Το email άλλαξε';
                        }
                        
                 }
           }






        }
   else
   {
     echo 'Απαιτείται η εισαγωγή email';
   }

 }
 ?>
</form>
</div>
<br>
</fieldset>

 <div id="userlist">
 <fieldset><legend>Λίστα Χρηστών</legend>
<?php
	$users = "SELECT * FROM users ORDER BY `last_name` ASC";
	$users_run = mysql_query($users);
	while($row = mysql_fetch_array($users_run, MYSQL_ASSOC))
	{?><fieldset style="margin-top:10px; color:#0481b1;"><?php
		echo"email χρήστη: <b>{$row['email']}</b> <br>
		Όνομα: <b>{$row['first_name']}</b> <br>
		Επώνυμο: <b>{$row['last_name']}</b> <br>
		Κωδικός: <b>{$row['password']}</b> <br>
		Τηλέφωνο: <b>{$row['phone']}</b>";		
		
 ?></fieldset><?php }
?> 
 </fieldset>
 </div>
</body>
</html>

