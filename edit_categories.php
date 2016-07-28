<?php

 require 'mysql_connect.php';
 require 'session.php';
 
 $email=$_SESSION['currentmail'];
    include 'userinfo.php';
    include 'index-theme.html';
	



?>

<!DOCTYPE html>
<html>
<title>Επεξεργασία Κατηγοριών</title>
<body>
	 <div id="home_link">
      <a href='admin-page.php'>Αρχική</a>
  </div>
	<div id="editcat">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<form action="edit_categories.php" method="POST">
<fieldset style="margin-top: 10px;"><legend>Προσθέστε Κατηγορία</legend> <input type="text" name="add_category">
<input type="submit" value="Προσθήκη">

</form>
<?php
if (isset($_POST['add_category']))

{

$add_category = $_POST['add_category'];

      if (empty($add_category))
      {
        echo 'Συμπληρώστε κατηγορία!';
      }
      else
      {
              $add = "SELECT `type` FROM `categories` WHERE `type`='$add_category'";

              $add_run = mysql_query($add) ;

              $add_num_rows = mysql_num_rows($add_run);


                   if ($add_num_rows==1)
                   {
                     echo 'Η Κατηγορία:'.$add_category.' υπάρχει ήδη.';
                   }

                    else
                    {
                       $query = "INSERT INTO `categories` VALUES('".mysql_real_escape_string($add_category)."')";
                         if ($query_run = mysql_query($query))
                         {
                           echo 'Η κατηγορία προσθέθηκε';
                         }
                         else
                         {
                           echo 'Η Κατηγορία δεν προσθέθηκε';
                         }
                    }
      }
}

?>
</fieldset><br>
<fieldset>
<form action ="<?php echo $current_file; ?>" method="POST">
<legend>Επιλέξτε Κατηγορία</legend> <input type="text" name="category">
<input type="submit" value="Διαγραφή">
</form>
	</fieldset>





<?php

if (isset($_POST['category']))
{
 $category = $_POST['category'];





     if (!empty($category))
 {
       $query = "SELECT `type` FROM `categories` WHERE `type`='$category'";

       $query_run = mysql_query($query);

       $query_num_rows = mysql_num_rows($query_run);


             if ($query_num_rows==0 )
             {
           echo 'Invalid username';
             }

              else
             {


                $query1 = "DELETE  FROM `categories` WHERE `type`= '$category' ";
                $query_run1 = mysql_query($query1);
                 echo 'ok';
             }



 }


        else
                {
                 echo 'You must supply a category';
                }


}

 ?>



<?php

   $query1 = "SELECT `type` FROM `categories`";
    $query_run1 = mysql_query( $query1 );
?><br><fieldset><legend>Λίστα Κατηγοριών</legend> <?php

    while($row = mysql_fetch_array($query_run1, MYSQL_ASSOC))
     {
       $category=$row['type'];
       echo    $category;
	   echo"<br>";
     }

 ?>
 </fieldset>
 <br>
 
 <fieldset>
 	<legend>Διάλεξε κατηγορία</legend>
 <form action ="<?php echo $current_file; ?>" method="POST">
 <input type="text" name="current_category" placeholder="Επέλεξε κατηγορία">
</fieldset >
<br>
<fieldset><legend>Εισήγαγε την νέα κατηγορία</legend>
<form action="edit_categories.php" method="POST">
<input type="text" name="new_category" placeholder="Νέα Κατηγορία" style="margin-top: 10px;"><br><br>
<input type="submit" value="Αλλαγή" style="margin-top: 10px;">
</form>
<?php

 
 if (isset($_POST['current_category'])&& isset($_POST['new_category']))

 {

 $current_category = $_POST['current_category'];
 $new_category = $_POST['new_category'];
 
               if (empty($current_category)||empty($new_category))
               {
                 echo 'Η κατηγορία που εισάγατε υπάρχει ήδη';
               }
 
               else
               {
                  $query = "SELECT * FROM `categories` WHERE `type`='$current_category'";
            
                  $query_run = mysql_query($query);

                  $query_num_rows = mysql_num_rows($query_run);
                  
                  if ($query_num_rows==0 )
                   {
                     echo 'Λάθος όνομα κατηγορίας';
                     }
                     
                  else
                  {
                       $query1 ="UPDATE `categories` SET `type` = '$new_category' WHERE `type` = '$current_category'";
                       $query_run1 = mysql_query($query1);

                       $query2 ="UPDATE `reports` SET `category` = '$new_category' WHERE `category` = '$current_category'";
                       $query_run2 = mysql_query($query2);

                           echo 'Οι Κατηγορία Άλλαξε.';
                  }

               }
 }

 ?>
</div>
</body>
</html>	