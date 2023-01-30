<?php
if(isset($_SESSION['loggedin'])){
    if($_SESSION['loggedin'] != true){
    header('Location:login.php');
    }
}
else{
    header('Location:login.php');  
}
if($_SESSION['role'] != '3'){
    header('Location:index.php');
}