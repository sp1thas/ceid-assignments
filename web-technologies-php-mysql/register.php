<?php
 include 'index-theme.html';
?>
<!DOCTYPE HTML >

<html lang="el">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--φόρμα εισαγωγής στοιχείων για την εγγραφή-->
<body>
    <div id="sign_in_form">
        <form action="register.php" method="post">
            <fieldset>
                <legend>Φόρμα Εγγραφής</legend>
                <div>
                    <input type="text" name="email" placeholder="Email"/>
                </div>
                <div>
                    <input type="password" name="password" placeholder="Κωδικός"/>
                </div>
                <div>
                    <input type="password" name="re_password" placeholder="Επαλήθευση Κωδικού"/>
                </div>
                <div>
                    <input type="text" name="first_name" placeholder="Όνομα (Προαιρετικά)"/>
                </div>
                <div>
                    <input type="text" name="last_name" placeholder="Επώνυμο (Προαιρετικά)"/>
                </div>
                
                <div>
                	<input type="text" name="phone" placeholder="Τηλέφωνο (Προαιρετικά)"/>
                </div>
                  
                <input type="submit" name="submit" value="Εγγραφή"/>   
        </form>
    

<?php

 require 'session.php';
 require 'mysql_connect.php';


//αν τα πεδία είναι συμπληρωμένα με την μέθοδο post περνάμε να δεδομένα στην βάση δεδομένων

   if (isset($_POST['email'])&& isset ($_POST['password'])&& isset($_POST['re_password']))
 {
   $email = $_POST['email'];
   $password = $_POST['password'];
   $re_password = $_POST['re_password'];
   $first_name = $_POST['first_name'];
   $last_name = $_POST['last_name'];
   $phone = $_POST['phone'];


//Έλεγχος αν τα στοιχεία χρησιμοποιούνται ήδη

        if (!empty($email)&& !empty($password)&& !empty($re_password))
        {
            if($password!=$re_password)
            {
              echo 'Οι κωδικοί που εισάγατε δεν ταιριάζουν';
            }
            else
            {

              $query2 = "SELECT `email` FROM `users` WHERE `email`='$email'";

              $query_run2 = mysql_query($query2) ;

              $query_num_rows2 = mysql_num_rows($query_run2);


                   if ($query_num_rows2==1)
                   {
                     echo 'Το όνομα χρήστη:  '.$email.' υπάρχει ήδη.';
                   }

                    else
                   {
                    $query = "INSERT INTO `users` VALUES('".mysql_real_escape_string($email)."', '".mysql_real_escape_string($password)."','".mysql_real_escape_string($last_name)."', '".mysql_real_escape_string($first_name)."', '".mysql_real_escape_string($phone)."')";
                     if ($query_run = mysql_query($query))
                     {

                        echo "Η εγγραφή σας ολοκληρώθηκε επιτυχώς! Ευχαριστούμε.";
                     
                     }
                     else
                     {
                       echo 'Μας συγχωρείτε, η εγγραφή απέτυχε';
                     }
                   }

            }
        }
   else
   {

    echo "Aπαιτείται να συμπληρώσετε email και password";
     
   }

 }

 ?>
 <br>
 </fieldset>
 </div>
</body>
</html>
