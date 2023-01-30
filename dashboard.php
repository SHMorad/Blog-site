<?php
session_start();
require "dist/inc/adminauth.php";
require 'connection.php';

?>
<?php
require 'dist/inc/head.php';
?>
<body>
    <?php
require 'dist/inc/header.php';
require 'dist/inc/navbar.php';
?>
    <div class="container">

        <div class="row">
            <div class="col-md-8">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam dolor saepe magni sunt nostrum quaerat modi sint voluptates repellat? Vel fugiat laborum cumque voluptatum eligendi provident deserunt fuga, quod error aliquid esse non, labore, quibusdam qui cum eius blanditiis? Id hic ab minus, quibusdam exercitationem odit alias praesentium eius velit perspiciatis dolores suscipit laboriosam amet pariatur quia perferendis voluptatem? Voluptatum, laborum odio quia ad labore officia ut beatae aut, repudiandae molestiae nobis voluptate nihil numquam quis possimus iusto harum sed aspernatur nam ducimus rerum vero, tenetur nulla nemo? Exercitationem veniam laboriosam molestiae dolorem aliquid esse similique, ab doloribus ad.</p>
            </div>
            <div class="col-md-4">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aspernatur laudantium aliquam eligendi voluptatibus laboriosam quo, modi quos atque dolores quae cumque, autem adipisci maxime dicta. Omnis veniam deleniti excepturi doloremque, expedita veritatis iusto culpa atque alias. Tempore corrupti dolorem ab totam temporibus modi maxime voluptatibus illum recusandae pariatur. Provident, omnis.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit aperiam dolor saepe magni sunt nostrum quaerat modi sint voluptates repellat? Vel fugiat laborum cumque voluptatum eligendi provident deserunt fuga, quod error aliquid esse non, labore, quibusdam qui cum eius blanditiis? Id hic ab minus, quibusdam exercitationem odit alias praesentium eius velit perspiciatis dolores suscipit laboriosam amet pariatur quia perferendis voluptatem? Voluptatum, laborum odio quia ad labore officia ut beatae aut, repudiandae molestiae nobis voluptate nihil numquam quis possimus iusto harum sed aspernatur nam ducimus rerum vero, tenetur nulla nemo? Exercitationem veniam laboriosam molestiae dolorem aliquid esse similique, ab doloribus ad.</p>
            </div>
            <div class="col-md-4">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aspernatur laudantium aliquam eligendi voluptatibus laboriosam quo, modi quos atque dolores quae cumque, autem adipisci maxime dicta. Omnis veniam deleniti excepturi doloremque, expedita veritatis iusto culpa atque alias. Tempore corrupti dolorem ab totam temporibus modi maxime voluptatibus illum recusandae pariatur. Provident, omnis.</p>
            </div>
        </div>
    </div>
    <?php require 'dist/inc/footer.php' ?>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script>
        function imageTrigger(){
            document.getElementById('image').click();
        }
        function displayImage(e){
            // console.log(e.files[0]);
            var reader = new FileReader;
            reader.onload = function(event){
                document.getElementById('imagePlaceholder').setAttribute('src',event.target.result);
            }
            reader.readAsDataURL(e.files[0]);
        }
    </script>
</body>

</html>