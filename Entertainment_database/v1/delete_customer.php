<!-- author:Abhishek Gupta -->
<?php

 $host = "localhost:3307";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname = "entertainment_database";
    //create connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     
     $DELETE = "Delete from customer";
     
      $stmt = $conn->prepare($DELETE);
      $stmt->execute();
      echo "All records deleted sucessfully";
       $stmt->close();
        $conn->close();
     } 
    
    
?>
