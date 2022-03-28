<!DOCTYPE html>
<html>

<head>
        
    <title>Sunnie Hotel</title>
    <link rel="icon" href="assets/img/image/logosh.png">
    
    <style>

        body{
        background-image: url(assets/img/image/bg.PNG);
        background-position: center; 
        background-repeat: no-repeat;
        background-size: cover;
        }

        input[type=text],
        input[type=email],
        input[type=tel],
        input[type=password],
        input[type=hidden],
        select {
            width: 100%;
            height: 40px;
            color: white;
            padding: 12px 20px;
            margin: 5px auto 12px;
            display: inline-block;
            border: none ;
            border-radius: 50px;
            box-sizing: border-box;
            background-color: transparent;
            font-family: serif;
            box-shadow: 0px 0px 10px  black;
        }

        input[type=submit] {
            width: 80%;
            height: 40px;
            font-size: 15px;
            font-family: serif;
            background-color:darkgoldenrod;
            color: white;
            padding: 5px 20px;
            margin: 0px 12px 0px 28px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
        }

        input [type=submit] :hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            border-color: #f2f2f2;
            padding: 10px;
        }

        .inilogin {
            width: 200px;
            height: 100px;
            padding: 0%;
            border: none;
            margin: 0px 10px 0px auto;
            background-color: none;
        }

        .inilogin2 {
            width: 425px;
            height: 50px;
            padding: 0%;
            border: none;
            margin: 0px auto 0px auto;
            background-color: none;
        }

        .inilogin3 {
            width: 125px;
            height: 50px;
            padding: 0%;
            border: none;
            margin: 0px auto 0px auto;
            background-color: none;
        }

        .inilogin4 {
            width: 270px;
            height: 40px;
            border: none;
            margin: 0px auto 0px auto;
            background-color: none;
        }

        .inilogin5 {
            width: 200px;
            height: 100px;
            padding: 0%;
            border: none;
            margin: 0px auto 0px 10px;
            background-color: none;
        }

        .inilogin7 {
            width: 200px;
            height: 18px;
            padding: 0%;
            border: none;
            margin: 0px auto 0px auto;
            background-color: none;
        }

        label {
            padding: 10px auto;
            position: relative;
        }

        .iniform::-webkit-input-placeholder {
            color: white;
            opacity: .65;
        }

        h1 {
            font-size: 25px;
            text-align: center;
            margin: 60px auto 40px auto;
            font-family: serif;
            color: white;
        }

        h6 {
            font-size: 10px;
            text-align: center;
            margin: 0px auto 60px auto;
            font-family: 'Courier New', Courier, monospace;
            color: white;
        }

        img {
            display: block; 
            margin: 50px auto 30px auto; 
            width: 150px; 
            height: auto;
        }

        .table1 {
            width: 450px;
            height: 125px;
            border: none;
            margin: 0px auto 0px auto;
            padding: 0%;
        }

        .table2 {
            width: 450px;
            height: 100px;
            border: none;
            margin: 0px auto 0px auto;
            padding: 0%;
        }
        .table3 {
            width: 450px;
            height: 50px;
            border: none;
            margin: 0px auto 0px auto;
            padding: 0%;
        }

        .table4 {
            width: 450px;
            height: 100px;
            border: none;
            margin: 0px auto 0px auto;
            padding: 0%;
        }

        .table5 {
            width: 450px;
            height: 20px;
            border: none;
            margin: 0px auto 0px auto;
            padding: 0%;
        }
    </style>
</head>

<?php

include 'config.php';

$query = mysqli_query($koneksi, "SELECT max(id_tamu) as id_tamu FROM tamu");
$data = mysqli_fetch_array($query);
$id_tamu = $data['id_tamu'];

$urutan = (int) substr($id_tamu, 3, 3);

$urutan++;

$huruf = "SN";
$id_tamu = $huruf . sprintf("%03s", $urutan);
?>

    <body>

    <?php
if (isset($_GET['pesan'])){
    if($_GET['pesan']=="gagal"){
        echo "Data tidak tersimpan";
    }
}
?>
        <table class="table4">
            <tr>
                <td>
                <img src="assets/img/image/ASRT5941.PNG">
                </td>
            </tr>
        <tr>
            <td>
            <h1>
                SIGN UP
            </h1>
            </td>
        </tr>
        </table>
            <form method="post" action="aksi_daftar.php">
            <table class="table5">
                <tr>
                    <td>  
                    </div>
                    </td>
                    <td>
                    <div class="inilogin7">
                    <input type="hidden" value="<?php echo $id_tamu ?>" name="id_tamu" autocomplete="off" class="iniform" readonly required/>
                    </div>
                    </td>
                </tr>
                </table>
                <table class="table1">
                <tr>
                    <td>
                        
                     <div class="inilogin">
                        <input type="text" placeholder="username"  autocomplete="off" class="iniform" name="username" required/></br>
                        <input type="tel" name="no_telp" placeholder="9999999999999"  autocomplete="off" class="iniform" required /></br>
                    </div>
                    </td>
                    <td>
                    <div class="inilogin5">
                        <input type="email" placeholder="yourname@gmail.com" name="email" autocomplete="off" class="iniform" required/></br>
                        <input type="password" placeholder="Password" name="password" autocomplete="off" class="iniform" required/></br>
                    </div>
                    </td>
                    </tr>
                </table>
                <table class="table2">
                    <tr>
                        <td colspan="3">
                        <div class="inilogin2">
                            <input type="text" placeholder="Address" name="alamat" autocomplete="off" class="iniform" required/></br>
                        </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="inilogin3">
                            <input type="text" placeholder="Districts" class="iniform" autocomplete="off" name="kec" required/>
                            </div>
                        </td>
                            <td>
                                <div class="inilogin3">
                                <input type="text" placeholder="City" autocomplete="off" class="iniform" name="kab" required/> 
                                </div>
                            </td>
                            <td>
                            <div class="inilogin3">
                            <input type="text" placeholder="Province" autocomplete="off" class="iniform" name="provinsi" required/></br>
                            </div>
                            </td>
                    </tr>
                    </table>
                </table>

                <table class="table3">
                    <tr>
                        <td colspan="2">
                            <div class="inilogin4">
                                <input type="submit" value="SIGN UP"></a>
                            </div>
                        </td>
                    </tr>
                </form>
                </table>
            <a href="signin.php" style="text-decoration: none;"><h6>Have an account?</h6></a>
    </body>
</html>