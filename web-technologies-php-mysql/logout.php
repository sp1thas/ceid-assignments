<?php
 require 'session.php';
 session_destroy();
 header('Location: index.php');
 ?>