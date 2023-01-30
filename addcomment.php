<?php
session_start();
require "connection.php";
if(isset($_POST['commentbtn'])){
    $comment = $conn->real_escape_string($_POST['comment']);
    $articleid = $_POST['id'];
    $userid = $_SESSION['userid'];
    $q = "insert into comments values(null,'{$articleid}','{$comment}','{$userid}','1',null)";
    $conn->query($q);
    if($conn->affected_rows){
        $_SESSION['message'] = "Comments Added";
    header('location:article.php?id='.$articleid);
    }
}