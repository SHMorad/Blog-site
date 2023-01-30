<div class="container" style="background-color:#EEEEEE">
<nav class="navbar navbar-expand-lg d-flex">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"> <img src="dist/assets/images/logoipsum-289.svg" alt=""> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="dashboard.php">Home <i class="fa fa-home" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="article-add.php">Add Article <i class="fa fa-info" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user.php">Users <i class="fa-solid fa-user"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Welcome <?php  echo $_SESSION['user'] ?></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.php">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</div>
