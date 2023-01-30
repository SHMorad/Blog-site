<?php
session_start();
ini_set('display_errors', 0);
require "dist/inc/auth.php";
if(isset($_GET['id'])){
    require "connection.php";
    $idToDelete = $_GET['id'];
    $query = "delete from users where id='{$idToDelete}' limit 1";
    // echo $query;
    $conn->query($query);
    if($conn->affected_rows){
        header("location:user.php?message=record deleted");
    }
}
?>