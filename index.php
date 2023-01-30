<?php
session_start();
require "connection.php";

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.72.0">
    <title>Blog Template</title>
    <link rel="canonical" href="https://v5.getbootstrap.com/docs/5.0/examples/blog/">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
     <!-- Custom styles for this template -->
     <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
  <!--   <style>
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
        .use{
            color:#000;
        }
        .user a : hover{
            color:#fff;
        }
    </style> -->
</head>

<body>

    <div class="container">
        <header class="blog-header py-3" >
            <div class="row flex-nowrap justify-content-between align-items-center p-2" style="background-color:#eeeeee">
                <div class="col-4 pt-1">
                    <?php
                    if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']){
                        ?>
                    <span class="btn btn-outline-secondary user mr-4">UserName : <a class="link-secondary text-decoration-none" href="#"><?php echo $_SESSION['user'] ?></a></span>
                    <span class="btn btn-outline-info user"><a class="link-secondary text-decoration-none" href="dashboard.php">Dashboard</a></span>
                    <?php
                    }
                    ?>         
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
        <!-- start navbar -->
        <div class="nav-scroller py-1">
            <nav class="nav d-flex justify-content-start mb-3">
                                <?php
                $q = "select * from categories where 1";
                $qr = $conn->query($q);
                if($qr->num_rows){
                while( $row= $qr->fetch_assoc()){
                    echo '<a class="p-2 link-secondary btn btn-outline-info mb-2 mr-2" href="category.php?id='.$row['id'].'">'.$row['name'].'</a>';
                }
                }
                ?>
            </nav>
            <!-- end navbar -->
        </div>
    </div>

    <main class="container">
        <div class="row">
            <div class="col-md-8">
            <?php
            // $q = "select * from articles where 1 order by created_at desc limit 0,10";
            $q = "select articles.*, users.id as userid,users.username from articles inner join users on articles.user_id = users.id where articles.status='1' order by created_at desc limit 0,10";
            $qr = $conn->query($q);
            if($qr->num_rows){
             while($article = $qr->fetch_assoc()){
             ?>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col-md-12 mt-2 mb-4">
                        <div class="card">
                            <img style="height:350px" src="<?php echo $article['image'] ?>" class="card-img-top"alt="Skyscrapers" />
                            <div class="card-body">
                                <h5 class="card-title"><?php echo ucwords($article['title']); ?></h5>
                                <p class="blog-post-meta"><?php echo $article['created_at'] ?> by <a href="userprofile.php?id=<?=$article['user_id'] ?>"><?php echo ucwords($article['username']); ?></a></p>
                                <p class="card-text">
                                <?php echo substr($article['description'],0,200);?><a href="article.php?id=<?php echo $article['id'] ?>">Read More</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                    }
                     }

                ?>
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

    <footer class="blog-footer text-center p-2" style="background-color:#eeeeee">
        <p>Blog template Design by Sahadat Hossain.</p>
        <p>
            <a href="#">Back to top</a>
        </p>
    </footer>



</body>

</html>