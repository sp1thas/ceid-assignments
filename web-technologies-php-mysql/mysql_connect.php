 <?php
//σύνδεση στη βάση δεδομένων
$dbhost = 'localhost'; 
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die  ('Η σύνδεση στην βάση δεδομένων δεν ήταν εφυκτή');//συνδεση με την βάση δεδομέων
$dbname = 'database';//το όνομα της βάσης δεδομένως
mysql_query("SET NAMES 'utf8'", $conn);					//για να γίνεται σωστή κωδικοποίηση 
mysql_query("SET CHARACTER SET 'utf8'", $conn);			// των ελληνικών χαρακτήρων
mysql_select_db($dbname); 								// κατα την διάρκεια επισκόπησης δεδομένων από την ΒΔ
?>
