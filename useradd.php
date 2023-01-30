<?php
session_start();
require "dist/inc/auth.php";
require "connection.php";
require 'dist/inc/head.php';
require 'dist/inc/header.php';
require 'dist/inc/navbar.php';
if(isset($_POST['userAdd'])){
    $error = false;
    $username = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    if($username == "" || $email == "" || $password == ""){
        $error = true;
        $message = "You have to fill all the fields.";
    }
    //db work
    if(!$error){
    //check username
    $nameQuery = "select id from users where username='$username' limit 1";
    $emailQuery = "select id from users where email='$email' limit 1";
    $nameQueryResult = $conn->query($nameQuery);
    $emailQueryResult = $conn->query($emailQuery);
    if($nameQueryResult->num_rows){
        $message = "username already exists";
    }
    elseif($emailQueryResult->num_rows){
        $message = "email already taken";
    }
    else{
        $hashPass = password_hash($pass1,PASSWORD_DEFAULT);
        $insert_query = "insert into users values(null,'$username','$email','".$hashPass."','1',null)";
        // echo $insert_query;
        $conn->query($insert_query);
        if($conn->affected_rows){
            //$message ="Registration successfully registered";
            header("location: user.php");
        }
    }
        
    }
}
?>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-8 offset-md-2 ">
        <h3>Add New User</h3>
        <button class="btn btn-success">
          <a href="user.php" class="text-white"><i class="fa-solid fa-backward"></i></a>
        </button>
        
        <form method="post" action="#">
            <?php
          if(isset($message)){
            ?>
          <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <?php echo $message; ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
            <?php
          }
            ?>
          <!-- name input -->
          <div class="form-outline mb-4">
            <label class="form-label" for="name">name address</label>
            <input type="text" name="name" id="name" class="form-control form-control-lg"placeholder="Enter a valid email address" />
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
            <label class="form-label" for="email">Email address</label>
            <input type="email" name="email" id="email" class="form-control form-control-lg"placeholder="Enter a valid email address" />
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <label class="form-label" for="password">Password</label>
            <input type="password" name="password" id="password" class="form-control form-control-lg" placeholder="Enter password" />
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button name="userAdd" type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">User Add</button>
          </div>

        </form>
      </div>
    </div>
  </div>
</body>

</html>