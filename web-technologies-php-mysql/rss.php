<?php
require 'session.php';
require 'mysql_connect.php';
?>

<rss version="2.0">
<channel>
	<title>RSS-Σύστημα Αναφορών Ζημιών Π.Π</title>
	<description>Συνεχής ροή αναφορών ζημιών στο Πανεπιστήμιο Πατρών</description>
	<link>http://pixel2life.com</link>

<?
$sql = "SELECT * FROM `reports` ORDER BY `reports`.`date_added` DESC LIMIT 20";
$result = mysql_query($sql);
while($row = mysql_fetch_assoc($result)){
?>

<item>
	 <title><?=$row['title']; ?></title>
	 <description><?=$row['description']; ?></description>
	 <comment></comment>
	 <category> <?=$row['category'];?></category>
	 <author> <?=$row['user_add']; ?></author>
	 <link>http://MYSITE.com/news.php?id=<?=$row['id']; ?></link>
</item>

<?
}
?>

</channel>
</rss>