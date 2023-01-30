<?php
session_start();
require 'dist/inc/head.php';
if(isset($_POST['login'])){
    $email = $_POST['email'];
    $password = $_POST['password'];
    require "connection.php";
    $q = "select * from users where email='$email' and status='1' limit 1";
    $qr = $conn->query($q);
    if($qr->num_rows){
        $row = $qr->fetch_assoc();
        // var_dump($row);
        if(password_verify($password,$row['password'])){
            $_SESSION['loggedin'] = true;
            $_SESSION['user'] = $row['username'];
            $_SESSION['userid'] = $row['id'];
            $_SESSION['role'] = $row['role'];
            // $_SESSION['role'] = $row['role'];
            if($row['role']==3) {header("Location: dashboard.php");}
            else {header("Location:index.php");}
        }
    }
    else{
      $message = "User Not Found";
    }
}
?>

<body>
<section class="vh-100">
  <div class="container h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-6">
        <img src="dist/assets/images/draw1.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-6">
        <form method="post" action="#">
          <h1>Enter a valid email or password</h1>
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
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" name="email" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter an email address" />
            <label class="form-label" for="form3Example3">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" name="password" id="form3Example4" class="form-control form-control-lg"
              placeholder="Enter a password" />
            <label class="form-label" for="form3Example4">Password</label>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>
            <a href="#!" class="text-body">Forgot password?</a>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button name="login" type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="registration.php"
                class="link-danger">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
</section>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>