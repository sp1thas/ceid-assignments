<?php

$username="root";
$password="";
$database="database";

// Start XML file, create parent node

$dom = new DOMDocument("1.0");
$node = $dom->createElement("markers");
$parnode = $dom->appendChild($node);

// Opens a connection to a MySQL server

$connection=mysql_connect ('localhost', $username, $password);
if (!$connection) {  die('Not connected : ' . mysql_error());}

// Set the active MySQL database

$db_selected = mysql_select_db($database, $connection);
if (!$db_selected) {
  die ('Can\'t use db : ' . mysql_error());
}
mysql_query("SET NAMES 'utf8'", $connection);         //για να γίνεται σωστή κωδικοποίηση 
mysql_query("SET CHARACTER SET 'utf8'", $connection);     // των ελληνικών χαρακτήρων
mysql_select_db('database'); 

// Select all the rows in the markers table

$query = "SELECT * FROM `reports` WHERE `status`='open' ORDER BY `reports`.`date_added` DESC LIMIT 20";
$result = mysql_query($query);
if (!$result) {
  die('Invalid query: ' . mysql_error());
}

header("Content-type: text/xml");


// Iterate through the rows, adding XML nodes for each

while ($row = @mysql_fetch_assoc($result)){
  // ADD TO XML DOCUMENT NODE
  $node = $dom->createElement("marker");
  $newnode = $parnode->appendChild($node);
  $newnode->setAttribute("name",$row['title']);
  $newnode->setAttribute("address", $row['description']);
  $newnode->setAttribute("lat", $row['lat']);
  $newnode->setAttribute("lng", $row['lng']);
  $newnode->setAttribute("type", $row['status']);
}

echo $dom->saveXML();

?>