<?php
require "connection.php";
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $q = "select * from articles where user_id=".$id;
    $qr = $conn->query($q);
    if($qr->num_rows){
        while($row = $qr->fetch_assoc()){
            echo "<h3>".$row['title']."</h3>";
        }
    }
}