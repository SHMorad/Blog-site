<?php
session_start();
require "connection.php";
require "dist/inc/auth.php";
require 'dist/inc/head.php';
if(isset($_POST['userEdit'])){
    $id = $_POST['id'];
    $username = $_POST['username'];
    $em = $_POST['email'];
    $st = $_POST['status'];
$updateQuery = "update users set username='$username', email='$em', status='$st' where id='$id' limit 1";
// echo $updateQuery;
$conn->query($updateQuery);
if($conn->affected_rows){
    header("location:user.php?message=user info updated successfully");
}
}

if(isset($_GET['id'])){
    
    $idToEdit = $_GET['id'];
    $query = "select * from users where id='{$idToEdit}' limit 1";
    // echo $query;
    $res = $conn->query($query);
    if($res->num_rows){
    $row = $res->fetch_assoc();
    }
    else{
        exit;
    }    
}
?>

<body>
  <div class="container">
    <div class="row">
      <div class="col-md-8 offset-md-2 ">
        <h1>EDIT YOUR INFORMATION..</h1>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF'] ?>">
          <!-- name input -->
          <div class="form-outline mb-4">
          <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
            <label class="form-label" for="name">name address</label>
            <input type="text" name="username" value="<?php echo $row['username'] ?>" id="name" class="form-control form-control-lg"/>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
            <label class="form-label" for="email">Email address</label>
            <input type="email" name="email" value="<?php echo $row['email'] ?>"id="email" class="form-control form-control-lg"/>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button name="userEdit" type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">User Edit</button>
          </div>

        </form>
      </div>
    </div>
  </div>
</body>

</html>
