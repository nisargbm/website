<?php 
session_start();
session_unset();
session_destroy();
echo "<h1>Successsfully logged out!!<br/><h1/>";
echo '<a href="../index.php">Visit Main Page?<a/>';
 ?>