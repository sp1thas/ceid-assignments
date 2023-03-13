 <?php
 require 'session.php';
 require 'mysql_connect.php';
 $email=$_SESSION['currentmail'] ;
 include 'userinfo.php';
 include 'index-theme.html';

 ?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html lang="el">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="theme.css">

<title>Διαχείριση Προφίλ</title>
<header>


</header>


<body> <!-- δημιουργία φόρμας για την εισαγωγή των αλλαγών που
επιθυμεί να πραγματοποιήσει ο χρήστης-->
   <div id="home_link">
      <a href='user-page.php'>Αρχική</a>
  </div>
    <div id="changemyprofile">
        <form action="" method="post">
            <fieldset style="width: 210px;">                                           <!-- γραφικά της φόρμας-->
                <legend>Αλλαγή στοιχείων λογαριασμού</legend>
 						 <div>
 						 <input style="width: 200px;" type="text" name="new_email" placeholder="Νέο email"/> <br></br>

 						 <input style="width: 200px;" type="password" name="new_password" placeholder="Νέος Κωδικός"/><br></br>

 						 <input style="width: 200px;" type="password" name="re_password" placeholder="Επαλήθευση Κωδικού"/><br></br>

 						 <input style="width: 200px;" type="text" name="new_first_name" placeholder="Νέο Όνομα (Προαιρετικά)"/><br></br>

 						 <input style="width: 200px;" type="text" name="new_last_name" placeholder="Νέο Επώνυμο (Προαιρετικά)"/><br></br>

 						 <input style="width: 200px;" type="text" name="new_phone" placeholder="Νέο Τηλέφωνο (Προαιρετικά)"/></div> <br>

                <input type="submit" name="submit" value="Αλλαγή"/>
            </fieldset>
        </form>



 <?php


   $email=$_SESSION['currentmail'] ;


   if ( isset($_POST['new_email'])&& isset ($_POST['new_password'])&& isset($_POST['re_password'])&& isset($_POST['new_first_name'])&& isset($_POST['new_last_name'])&& isset($_POST['new_phone']))
 {  //εισαουμε τα στοιχεία από την φόρμα με την μέθοδο post

   $new_email = $_POST['new_email'];
   $new_password = $_POST['new_password'];
   $re_password = $_POST['re_password'];
   $new_first_name = $_POST['new_first_name'];
   $new_last_name = $_POST['new_last_name'];
   $new_phone = $_POST['new_phone'];









                //έλεγχος αν κανένα από τα πλαίσια δεν είναι συμπληρωμένα


                 if (empty($new_email)&& empty($new_password)&& empty($new_first_name) && empty($new_last_name) && empty($new_phone)){
                      echo 'Συμπληρώστε κάποιο από τα πεδία';}
                 else{
                 //αν κάποια έχουν συμπληρωθεί
                  //αν έχει συμπληρωθεί το πλαίσιο του email
                        if(!empty($new_email)){
                          //αλλαγή του email στο table των users
                           $newmail ="UPDATE `users` SET `email` = '$new_email' WHERE `email` = '$email'";
                           $newmail_run = mysql_query($newmail);
                           echo '<br> Το mail χρήστη άλλαξε<br>';
                          //αλλαγή mail στο table των reports αν ο συγκεκριμένος χρήστης έχει αναφέρει ή έχει επιλύσει κάποια ζημιά
                           $newmail_reports = "UPDATE `reports` SET `email_added` = '$new_email' WHERE `email_added` = '$email'";
                           $newmail_reports_run = mysql_query($newmail_reports);
                           $newmail_reports1 = "UPDATE `reports` SET `email_resolve` = '$new_email' WHERE `email_resolve` = '$email'";
                           $newmail_reports1_run = mysql_query($newmail_reports1);
                           }


                        }//αν συμπληρώθηκε το πλαίσιο του κωδικού και ταιριάζει με αυτόν της επαλήθευσης τότε αλλάζει
                        if(!empty($new_password)){
                               if($new_password!=$re_password){
                                   echo 'Ο κωδικός δεν ταιριάζει';
                                    }
                               else{
                                $newpass ="UPDATE `users` SET `password` = '$new_password' WHERE `email` = '$email'";
                                $newpass_run = mysql_query($newpass);
                                echo ' <br> Ο κωδικός σας άλλαξε <br>';
                               }
                        }//αν συμπληρωθεί το πλαίσιο του ονόματος και του επωνύμου
                          //τότε αλλάζουν και αυτά
                         if(!empty($new_first_name)){
                           $newfirst ="UPDATE `users` SET `first_name` = '$new_first_name' WHERE `email` = '$email'";
                           $newfirst_run = mysql_query($newfirst);
                           echo ' <br> Το όνομα άλλαξε <br> ';
                        }
                        if(!empty($new_last_name)){
                           $newlast ="UPDATE `users` SET `last_name` = '$new_last_name' WHERE `email` = '$email'";
                           $newlast_run = mysql_query($newlast);
                           echo ' <br> Το επώνυμο άλλαξε <br> ';
                        }
                        if(!empty($new_phone)){
                      //και τέλος αν συμπληρωθεί το πλαίσιο του τηλεφώνου θα αλλάξει και αυτό
                           $newphone ="UPDATE `users` SET `phone` = '$new_phone' WHERE `email` = '$email'";
                           $newphone_run = mysql_query($newphone);
                           echo ' <br> Το τηλέφωνο άλλαξε <br>';
                        }
                  }

?>
    </div>


  </body>
</html>
