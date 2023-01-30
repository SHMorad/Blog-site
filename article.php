<?php
session_start();
require "connection.php";
if(isset($_POST['commentbtn'])){
    $comment = $conn->real_escape_string($_POST['comment']);
    $articleid = $_POST['id'];
    $userid = $_SESSION['userid'];
    $q = "insert into comments values(null,'{$articleid}','{$comment}','{$userid}',null,null)";
    $conn->query($q);
    if($conn->affected_rows){

    }
}
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.72.0">
    <title>Blog Template · Bootstrap</title>

    <link rel="canonical" href="https://v5.getbootstrap.com/docs/5.0/examples/blog/">



    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <style>
        /* stylelint-disable selector-list-comma-newline-after */

        .blog-header {
            line-height: 1;
            border-bottom: 1px solid #e5e5e5;
        }

        .blog-header-logo {
            font-family: "Playfair Display", Georgia, "Times New Roman", serif;
            font-size: 2.25rem;
        }

        .blog-header-logo:hover {
            text-decoration: none;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: "Playfair Display", Georgia, "Times New Roman", serif;
        }

        .display-4 {
            font-size: 2.5rem;
        }

        @media (min-width: 768px) {
            .display-4 {
                font-size: 3rem;
            }
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .nav-scroller .nav-link {
            padding-top: .75rem;
            padding-bottom: .75rem;
            font-size: .875rem;
        }

        .card-img-right {
            height: 100%;
            border-radius: 0 3px 3px 0;
        }

        .flex-auto {
            flex: 0 0 auto;
        }

        .h-250 {
            height: 250px;
        }

        @media (min-width: 768px) {
            .h-md-250 {
                height: 250px;
            }
        }

        /* Pagination */
        .blog-pagination {
            margin-bottom: 4rem;
        }

        .blog-pagination>.btn {
            border-radius: 2rem;
        }

        /*
        * Blog posts
        */
        .blog-post {
            margin-bottom: 4rem;
        }

        .blog-post-title {
            margin-bottom: .25rem;
            font-size: 2.5rem;
        }

        .blog-post-meta {
            margin-bottom: 1.25rem;
            color: #727272;
        }

        /*
        * Footer
        */
        .blog-footer {
            padding: 2.5rem 0;
            color: #727272;
            text-align: center;
            background-color: #f9f9f9;
            border-top: .05rem solid #e5e5e5;
        }

        .blog-footer p:last-child {
            margin-bottom: 0;
        }
    </style>
</head>

<body>

    <div class="container">
        <header class="blog-header py-3">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1">
                    <?php
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']){
    ?>
<a class="link-secondary" href="#"><?php echo $_SESSION['user'] ?></a>
<a class="link-secondary" href="dashboard.php">Dashboard</a>
    <?php
}

                    ?>
                    
                </div>
                <div class="col-4 text-center">
                    <a class="blog-header-logo text-dark" href="#">Large</a>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-center">
                    <a class="link-secondary" href="#" aria-label="Search">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor"
                            stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
                            viewBox="0 0 24 24">
                            <title>Search</title>
                            <circle cx="10.5" cy="10.5" r="7.5" />
                            <path d="M21 21l-5.2-5.2" />
                        </svg>
                    </a>
                    <?php
if(isset($_SESSION['loggedin'])){
    ?>
    <a class="btn btn-sm btn-outline-secondary" href="logout.php">Logout</a>
    <?php
}
else{
                    ?>
                    <a class="btn btn-sm btn-outline-secondary" href="login.php">Sign in</a>
                    <a class="btn btn-sm btn-outline-secondary" href="registration.php">Sign up</a>
                    <?php } ?>
                </div>
            </div>
        </header>
<?php
if(isset($_SESSION['message'])){
?>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Message: </strong> <?php echo $_SESSION['message'];?>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<?php
unset($_SESSION['message']);
}
?>
        <div class="nav-scroller py-1 mb-2">
            <nav class="nav d-flex justify-content-start">
                <?php
$q = "select * from categories where 1";
$qr = $conn->query($q);
if($qr->num_rows){
while( $row= $qr->fetch_assoc()){
    echo '<a class="p-2 link-secondary" href="category.php?id='.$row['id'].'">'.$row['name'].'</a>';
}
}
                ?>
                
            </nav>
        </div>

    </div>

    <main class="container">
        <div class="row">
            <div class="col-md-8">
                <h3 class="pb-4 mb-4 font-italic border-bottom">
                    From the Firehose
                </h3>
<?php
$q = "select * from articles where id='".$_GET['id']. "' limit 1";
$qr = $conn->query($q);
if($qr->num_rows){
    $article = $qr->fetch_assoc();
        ?>
                <div class="blog-post">
                    <h2 class="blog-post-title"><?php echo $article['title']; ?></h2>
                    <p class="blog-post-meta"><?php echo $article['created_at'] ?> by <a href="user.php?id="<?= $article['user_id'] ?>><?php echo $article['user_id']; ?></a></p>
                        <div class="desc">
                           <img src="<?php echo $article['image'] ?>" alt="" class="img-fluid"> 
                           <hr>
                            <?php echo $article['description'];?>
                            
                        </div>
                    
                </div><!-- /.blog-post -->
        <?php
    }


?>


<!-- comments start -->
<?php
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']){
?>
<form action="addcomment.php" method="post">
    <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
    <textarea name="comment" class="form-control" ></textarea>
    <input type="submit" name="commentbtn" class="btn btn-info mt-3" value="Comment">
</form>
<!-- comments ends -->
<?php
}
else{
?>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>
<div class="alert alert-primary d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>
  <div>
    You must be logged in to post comment. Login <a href="login.php">here</a> or <a href="registration.php">Create new account</a> 
  </div>
</div>
<?php
}
?>

<!-- comments template -->
<?php
$q = "select * from comments where article_id='".$_GET['id']."' order by created_at desc";
$qr = $conn->query($q);
if($qr->num_rows){
    while($comm = $qr->fetch_assoc()){
?>
 <div class="py-3">
                  <div class="d-flex comment">
                     <img class="rounded-circle comment-img"
                          src="https://via.placeholder.com/128/99ccff/0073e6.png?text=A" />
                     <div class="flex-grow-1 ms-3">
                        <div class="mb-1"><a href="#" class="fw-bold link-dark pe-1"><?php echo $comm['user_id'] ?></a> <span class="text-muted text-nowrap"><?php echo $comm['created_at'] ?></span></div>
                        <div class="mb-2"><?php echo $comm['comment'] ?></div>
                        <div class="hstack align-items-center">
                           <a class="link-secondary me-2" href="#"><i class="zmdi zmdi-thumb-up"></i></a>
                           <span class="me-3 small">26</span>
                           <a class="link-secondary me-4" href="#"><i class="zmdi zmdi-thumb-down"></i></a>
                           <a class="link-secondary small" href="#">REPLY</a>
                        </div>
                     </div>
                  </div>
               </div>
<?php
}
}
?>
 <!-- Comment #2 //-->

<!-- comments template end -->
                

            </div>

            <aside class="col-md-4">
                <div class="p-4 mb-3 bg-light rounded">
                    <h4 class="font-italic">About</h4>
                    <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur
                        purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
                </div>

                <div class="p-4">
                    <h4 class="font-italic">Archives</h4>
                    <ol class="list-unstyled mb-0">
                        <li><a href="#">March 2014</a></li>
                        <li><a href="#">February 2014</a></li>
                        <li><a href="#">January 2014</a></li>
                        <li><a href="#">December 2013</a></li>
                        <li><a href="#">November 2013</a></li>
                        <li><a href="#">October 2013</a></li>
                        <li><a href="#">September 2013</a></li>
                        <li><a href="#">August 2013</a></li>
                        <li><a href="#">July 2013</a></li>
                        <li><a href="#">June 2013</a></li>
                        <li><a href="#">May 2013</a></li>
                        <li><a href="#">April 2013</a></li>
                    </ol>
                </div>

                <div class="p-4">
                    <h4 class="font-italic">Elsewhere</h4>
                    <ol class="list-unstyled">
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Facebook</a></li>
                    </ol>
                </div>
            </aside>

        </div><!-- /.row -->

    </main><!-- /.container -->

    <footer class="blog-footer">
        <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a
                href="https://twitter.com/mdo">@mdo</a>.</p>
        <p>
            <a href="#">Back to top</a>
        </p>
    </footer>


<script src="dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>