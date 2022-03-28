<?php

include 'config.php';

$id_tamu = $_POST['id_tamu'];
$username = $_POST['username'];
$email = $_POST['email'];
$no_telp = $_POST['no_telp'];
$alamat = $_POST['alamat'];
$password = md5($_POST['password']);
$kec = $_POST['kec'];
$kab = $_POST['kab'];
$provinsi = $_POST['provinsi'];

$data_tamu = mysqli_query($koneksi,"INSERT INTO tamu(id_tamu, username, email, no_telp, alamat, password, kec, kab, provinsi)
VALUES ('$id_tamu','$username','$email','$no_telp','$alamat','$password','$kec','$kab','$provinsi')");

if($data_tamu){
    header("location:signin.php");
}else{
    header("location:index.php?pesan=gagal");
}
?>