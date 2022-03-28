<?php 
session_start();
 
include 'config.php';
 
$username = $_POST['username'];
$password = md5($_POST['password']);
 
$login = mysqli_query($koneksi,"select * from multiuser where username='$username' and password='$password'");
$cek = mysqli_num_rows($login);
 
if($cek > 0){
 
	$data = mysqli_fetch_assoc($login);
 
	if($data['level']=="admin"){
 
		$_SESSION['username'] = $username;
		$_SESSION['level'] = "admin";
		header("location:admin/mainpage.php");
 
	}else if($data['level']=="resepsionis"){
		$_SESSION['username'] = $username;
		$_SESSION['level'] = "resepsionis";
		header("location:resepsionis/mainpage.php");
 
	}else{
		header("location:index_petugas.php?pesan=gagal");
	}	
}else{
	header("location:index_petugas.php?pesan=gagal");
}
 
?>