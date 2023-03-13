<?php
//Απαραίτητη σύνδεση στην βάση δεδομένων 
require 'session.php';
require 'mysql_connect.php';

include 'index-theme.html';
?>

<html>
  <body>
       <link rel="stylesheet" type="text/css" href="theme.css">
          <div id="login">
            		<form action ="<?php echo $current_file; ?>" method="POST" height="400px">
            			<fieldset>
                			<legend>Φόρμα Εισόδου</legend>
                 				<div>                     
                 					<input type="text" name="email" placeholder="Email">
                  			</div>
                  			<div>
                  				<input type="password" name="password" placeholder="Κωδικός">
                  			</div>
                    				<input type="submit" value="ΕΙΣΟΔΟΣ">
                  	</fieldset>
                  </form>
                

            <?php
            //έλεγχος αν τα δύο πεδία είναι κενά
if (isset($_POST['email'])&&isset ($_POST['password']))
{
	
		 $email = $_POST['email'];
 		 $password = $_POST['password'];

		 $password_hash = md5($password);

     if (!empty($email)&&!empty($password))
	 {


       $username = mysql_query("SELECT `email`,`password` FROM admins WHERE `email`='$email' AND `password` = '$password'  ");
       $username1 = mysql_query("SELECT `email`,`password` FROM users WHERE `email`='$email' AND `password` = '$password' ");
       
       $username_run = mysql_num_rows($username);
       $username1_run = mysql_num_rows($username1);
       
        $_SESSION['currentmail']=$email;


             if ($username_run==0 && $username1_run==0 ) { echo 'Λάθος όνομα χρήστη ή κωδικός'; }
             
             else if($username1_run==1){ header ('Location: user-page.php');}
             
             else if($username_run==1){ header ('Location: admin-page.php');}
    }
    
        else{ echo 'Πρέπει να γραφτείτε πρώτα στο σύστημα';}


}
?>
</div>

                  <form method="get" action="editmyprofil.php">
                  <form method="get" action="addreport.inc.php">
                  <form method="get" action="listofmyreports.php">
                  <form method="get" action="change_status.php"></form>
 </body>
</html>

 
