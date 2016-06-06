<?php require('includes/config.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mysite</title>
    <link rel="stylesheet" href="style/main.css">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"> <!-- Bootstrap -->
</head>
<body>

     <nav class="navbar navbar-dark bg-primary navbar-fixed-top">
         <div class="container">
             <div class="navbar-header">
                 <a class="navbar-brand" href="#">My App</a></div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
        </div>
    </nav>
    
    <div class="container">

        
        
<?php
    try {
			
				$pages = new Paginator('6','p');
				$stmt = $db->query('SELECT postID FROM list');
				$pages->set_total($stmt->rowCount());
        $stmt = $db->query('SELECT postID, title, postdesc, date FROM list ORDER BY date DESC '.$pages->get_limit());
        while($row = $stmt->fetch()){
            
            echo '<div>';
                echo '<h1><a href="viewpost.php?id='.$row['postID'].'">'.$row['title'].'</a></h1>';
                echo '<p>Posted on '.date('jS M Y H:i:s', strtotime($row['date'])).'</p>';
                echo '<p>'.$row['postdesc'].'</p>';                
                echo '<p><a href="viewpost.php?id='.$row['postID'].'">Read More</a></p>';                
            echo '</div>';

        }
			
			echo '<nav>'.$pages->page_links().'</nav>';

    } catch(PDOException $e) {
        echo $e->getMessage();
    }
?>       
	</div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"       crossorigin="anonymous"></script>
</body>
</html>