<?php
require "connection.php";

for ($i=0; $i < 100; $i++) { 
    $rand = rand(1000,9990);
    $pas = password_hash('12345',PASSWORD_DEFAULT);
$insertQuery = "insert into users values(null,'user{$rand}','user{$rand}.@gmail.com','".$pas."','1',null)";
$conn->query($insertQuery);
}
