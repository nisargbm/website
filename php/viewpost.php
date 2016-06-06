<?php
require('includes/config.php'); 
$stmt = $db->prepare('SELECT postID, title, content, date FROM list WHERE postID = :postID');
$stmt->execute(array(':postID' => $_GET['id']));
$row = $stmt->fetch();

if($row['postID']==''){
    header('Location; ./');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MySite - <?php echo $row['title'];?></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>

	<div class="container">

		<h1>Mysite</h1>
		<hr />
		<p><a href="./">Main Page</a></p>


		<?php	
echo '<div>';
    echo '<h1>'.$row['title'].'</h1>';
    echo '<p>Posted on '.date('jS M Y', strtotime($row['date'])).'</p>';
    echo '<p>'.$row['content'].'</p>';                
echo '</div>';


?>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"       crossorigin="anonymous"></script>
     
</body>
</html>