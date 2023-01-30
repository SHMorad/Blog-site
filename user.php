<?php
session_start();
require "dist/inc/adminauth.php";
require 'dist/inc/head.php';
require 'dist/inc/header.php';
require 'dist/inc/navbar.php';

require "connection.php";
//search start
// if(isset($_GET['q'])){
//     echo $_GET['q'];

// }
//search end

$count = 20;
$page = isset($_GET['page'])?$_GET['page']:1;
$index =($page-1)*$count;
$totalRecords = "select count(*) as total from users";

$ttr = $conn->query($totalRecords);
$row = $ttr->fetch_assoc();
$totalRec = $row['total'];
$totalPage = ceil($totalRec/$count);
// echo $totalPage;

$userQ = "select * from users where 1 limit $index,$count";

$userRecords = $conn->query($userQ);
// echo $userRecords->num_rows;
?>


<body>
    <div class="container">
        <section>
            <div class="float-start">
                <h3>Users List</h3>
                <button class="btn btn-success">
                    <a href="useradd.php" class="text-white"><i class="fa-solid fa-plus"></i></a>
                </button>
            </div>
            <div class="float-end">
                <form method="get" autocomplete="off" onsubmit="return">
                    <div class="float-start">
                        <input type="input" name="search" class="form-control  form-control-lg" id="searchInput" placeholder="search information">
                    </div>
                    <input type="submit" class="btn btn-success" id="searchBtn" value="Search">
                    <!-- <button id="searchBtn">Click</button> -->
                </form>
            </div>
            <table class="table table-bordered table-hover">
                <caption><?php echo isset($_GET['message'])?$_GET['message']:""; ?></caption>
                <tr>
                    <th>ID</th>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Registration Time</th>
                    <th>Action</th>
                </tr>
            
                <?php
                if($userRecords->num_rows){
                    $record = "";
                    while($row = $userRecords->fetch_assoc()){
                    $record .= "<tr>";
                    $record .= "<td>{$row['id']}</td>";
                    $record .= "<td>{$row['username']}</td>";
                    $record .= "<td>{$row['email']}</td>";
                    $record .= "<td>{$row['status']}</td>";
                    $record .= "<td>{$row['created_at']}</td>";
                    $record .= "<td>
                        <button class='btn btn-success'>
                            <a href='useredit.php?id={$row['id']}'class='text-white'><i class='fa-solid fa-pen-to-square'></i></a>
                        </button>
                        ||
                        <button class='btn btn-danger'>
                            <a href='userdelete.php?id={$row['id']}'class='text-white' onclick=\"return confirm('Are you sure?')\"><i class='fa-solid fa-trash '></i></a>
                        </button>
                    </td>";
                    // $record .= "<td><a href='useredit.php?id={$row['id']}'><i class='fa-solid fa-pen-to-square'></i></a> | <a href='userdelete.php?id={$row['id']}' onclick=\"return confirm('Are you sure?')\"><i class='fa-solid fa-trash'></i></a></td>";
                    $record .= "</tr>";
                    }
                    echo $record;
                }
                ?>
            </table>
            <nav aria-label="..." class="float-end">
                <ul class="pagination">
                    <li class="page-item <?php echo ($page=="1")?"disabled":""; ?>">
                        <a class="page-link" href="?page=<?php echo $page-1; ?>">Previous</a>
                    </li>
                        <?php
                        for ($i=1; $i<= $totalPage ; $i++) {
                        if(abs($i - $page) < 5){
                        ?>
                    <li class="page-item <?php echo ($page==$i)?"active":"";  ?>"aria-current="page">
                        <a class="page-link" href="?page=<?php echo $i ?>"><?php echo $i ?></a>
                    </li>
                        <?php
                        }
                    }
                        ?>
                        
                        
                    <li class="page-item <?php echo ($page==$totalPage)?"disabled":""; ?>">
                        <a class="page-link" href="?page=<?php echo $page+1; ?>">Next</a>
                    </li>
                </ul>
            </nav>
        </section>
                
    </div>
    <script src="dist/js/jquery-3.6.1.min.js"></script>
    <script>
        $(document).ready(function(){
            // alert(5)
            $("#searchBtn").click(function(){
                $searchVal = $("#searchInput").val();
                // console.log($searchVal);
                window.location = "user.php?q=" + $searchVal;
            })
        })
    </script>
</body>
</html>