<?php
if(isset($_SESSION['loggedin'])){
    if($_SESSION['loggedin'] != true){
    header('Location:login.php');
    }
}
else{
    header('Location:login.php');  
}