<!-- <nav>
    <a href="#">Home <i class="fa fa-home" aria-hidden="true"></i></a>
    <a href="#">About <i class="fa fa-info" aria-hidden="true"></i></a>
    <a href="#">Shop <i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
    <a href="#">Cart <i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
    <a href="user.php">Users <i class="fa-solid fa-user"></i></a>
    <a href="#">Welcome <?php  echo $_SESSION['user'] ?></a>
    <a href="logout.php">Logout</a>
    <a href="#"> </a>
</nav>
<hr> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
          <a class="nav-link" href="#">About <i class="fa fa-info" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="article-add.php">Add Article <i class="fa fa-info" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Shop <i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Cart <i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user.php">Users <i class="fa-solid fa-user"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Welcome <?php  echo $_SESSION['user'] ?></a>
        </li>
        <li class="nav-item float-end">
          <a class="nav-link" href="logout.php">Logout</a>
        </li>

        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown link
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->
      </ul>
    </div>
  </div>
</nav>