<?php
session_start();
require __DIR__ . '/vendor/autoload.php';
require "dist/inc/auth.php";
require 'connection.php';
use Intervention\Image\ImageManagerStatic as Image;
$allcat = $conn->query("SELECT * FROM categories where 1");
//get form value
if (isset($_POST['add'])) {
    $title = $conn->escape_string($_POST['title']);
    $de = $conn->escape_string($_POST['description']);
    $cat = $_POST['cat'];
    $imagelocation = null;
    if (isset($_FILES['image'])) {
        $fileExtension =  '.' . pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $filename = $_SESSION['userid'] . '_' . time() . '_' . rand(1000, 9999) . $fileExtension;
        $imagelocation = 'dist/uploads/' . $filename;
        move_uploaded_file($_FILES['image']['tmp_name'], $imagelocation);
        $image = Image::make($imagelocation)->resize(800, null,function ($constraint) {
            $constraint->aspectRatio();
        })->save($imagelocation,60);
    }
    $insertQuery = "insert into articles values(null, '" . $title . "','" . $de . "','" . $imagelocation . "','" . $_SESSION['userid'] . "','" . $cat . "','',null)";
    // echo $insertQuery;
    $conn->query($insertQuery);
    if ($conn->affected_rows) {
        $_SESSION['message'] = "Article Added successfully";
        header("Location: article-add.php?message=saved");
    }
}
//get form value end

require 'dist/inc/head.php';
?>

<body>

    <?php
    require 'dist/inc/header.php';
    require 'dist/inc/navbar.php';
    ?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php
                if(isset($_GET['message'])) {
                ?>
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <?php echo $_GET['message'] ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php
                // unset($_SESSION['message']);
                // $_SESSION['message'] = null;
                }
                
                ?>
                <div class="d-flex justify-content-between">
                <h3>Add New Article</h3>
                <a href="javascript:void(0)" class="btn btn-primary" id="showArticleBtn"> + </a>
                </div>
                
                <div id="addarticleform">
                    <form action="" class="needs-validation" novalidate method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="title" class="form-label">Article Title</label>
                            <input type="text" name="title" id="title" class="form-control" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                            <div class="invalid-feedback">
                                You must give a article title
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="desc" class="form-label">Description</label>
                            <textarea name="description" id="desc" class="form-control" required minlength="100"></textarea>
                            <div class="invalid-feedback">
                                You must give a article description. min length 100 character
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="image" class="form-label">Image</label>
                            <input type="file" name="image" id="image" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="cat" class="form-label">Category</label>
                            <select name="cat" id="cat" class="form-control" required>
                                <option value="-1">Select</option>
                                <?php
                                while ($row = $allcat->fetch_assoc()) {
                                    echo "<option value='{$row['id']}'>{$row['name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group mt-3">
                            <input class="btn btn-primary" type="submit" name="add" value="Add Article">
                            <input class="btn btn-danger" type="reset" name="clear" value="Clear">
                            <input class="btn btn-danger" type="button" id="closeFormBtn"  value="Close">
                        </div>
                    </form>
                </div>
            </div>
        </div><!-- row ends -->
        <div class="row">
            <div class="col-12">
                <h2>All articles</h2>
                
<?php
if($_SESSION['role']== "3"){
    $selectarticle = "select * from articles where 1";   
}
else{
    $selectarticle = "select * from articles where user_id = '". $_SESSION['userid']."'";
}

$selectarticleresult = $conn->query($selectarticle);
if($selectarticleresult->num_rows){
    ?>
<table class="table table-hover table-primary table-responsive">
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Image</th>
                        <th>Category</th>
                        <th>Tags</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
    <?php
while($row = $selectarticleresult->fetch_assoc()){
    $stat = ($row['status']==1)?'<i class="fa-solid fa-check"></i>':'<i class="fa-solid fa-ban"></i>';
    echo "<tr>";
    echo "<td>".$row['title']."</td>";
    echo "<td>".$row['description']."</td>";
    echo "<td><img src='".$row['image']."' width='200px'/></td>";
    echo "<td>".$row['category_id']."</td>";
    echo "<td>".$row['tags']."</td>";
    echo "<td>".$stat."</td>";
    echo "<td>EDIT | DELETE</td>";
    echo "</tr>";
}
}
else{
    echo "You have no articles available. Create a new article <a href='article-add.php'>here</a>";
}
?>
                </table>
            </div>
        </div>

    </div>
    <?php require 'dist/inc/footer.php' ?>



    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="dist/js/jquery-3.6.1.min.js"></script>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function(form) {
                    form.addEventListener('submit', function(event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>

    <script>
        $(document).ready(function(){
            $("#addarticleform").hide();
            $("#showArticleBtn").click(function(){
                $("#addarticleform").show(500);
            });
            $("#closeFormBtn").click(function(){
                $("#addarticleform").hide(500);
            });
        });
    </script>
</body>

</html>