<?php
require 'dist/inc/head.php';
require 'dist/inc/header.php';
if(isset($_POST['register'])){
    $error = false;
    $username = $_POST['username'];
    $email = $_POST['email'];
    $pass1 = $_POST['pass1'];
    $pass2 = $_POST['pass2'];
    if($username == "" || $email == "" || $pass1 == "" || $pass2 ==""){
        $error = true;
        $message = "You have to fill all the fields.";
    }
    if($pass1 !== $pass2 ){
        $error = true;
        $message = "Your password mismatch.";
    }

    //db work
    if(!$error){
        require "connection.php";
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
        $insert_query = "insert into users values(null,'$username','$email','".$hashPass."','1','1',null)";
        // echo $insert_query;
        $conn->query($insert_query);
        if($conn->affected_rows){
            //$message ="Registration successfully registered";
            header("location: login.php");
        }
    }
        
    }
}
?>

<body>
  <hr>
    <?php
if(isset($message)){
    echo "<h1>{$message}</h1>";
}
    ?>
<section class="vh-100" >
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-6 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <form class="mx-1 mx-md-4" action="" method="post">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example1c">Your Name</label>
                      <input type="text" name="username" id="username" class="form-control" />
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example3c">Your Email</label>
                      <input type="email" id="email" name="email" class="form-control" />
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example4c">Password</label>
                      <input type="password" name="pass1" id="pass1" class="form-control" />
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                      <input type="password" name="pass2" id="pass2" class="form-control" />
                    </div>
                  </div>

                  <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="submit" name="register" class="btn btn-primary btn-lg">Register</button>
                  </div>

                </form>

              </div>
              <div class="col-md-6 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="dist/assets/images/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>