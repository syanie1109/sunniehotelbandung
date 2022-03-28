<?php

session_start();

include 'config.php';

$username = $_POST['username'];
$password = md5($_POST['password']);

$data = mysqli_query($koneksi,"select * from tamu where username='$username' and password='$password'");

$cek = mysqli_num_rows($data);

if($cek > 0){
    $_SESSION['username'] = $username;
    $_SESSION['status'] = "signin";
    header("location:tamu/mainpage.php");
}else{
    header("location:index.php?pesan=gagal");
}
?>