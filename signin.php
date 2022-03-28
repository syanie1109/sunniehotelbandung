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
        input[type=password],
        select {
            width: 100%;
            height: 40px;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: none ;
            border-radius: 50px;
            box-sizing: border-box;
            background-color: transparent;
            font-family: serif;
            box-shadow: 0px 0px 10px  black;
        }

        input[type=submit] {
            width: 100%;
            height: 40px;
            font-size: 15px;
            font-family: serif;
            background-color:darkgoldenrod;
            color: white;
            padding: 5px 20px;
            margin: 10px 0;
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
            width: 275px;
            height: 170px;
            border: none;
            margin: 10px auto 10px auto;
            background-color: none;
        }

        .iniform::-webkit-input-placeholder {
            color: white;
            opacity: .65;
        }

        h1 {
            font-size: 25px;
            text-align: center;
            margin: 20px auto 30px auto;
            font-family: serif;
            color: white;
        }

        h6 {
            font-size: 10px;
            text-align: center;
            margin: 0px auto 300px auto;
            font-family: 'Courier New', Courier, monospace;
            color: white;
        }

        img {
            display: block; 
            margin: 100px auto 30px auto; 
            width: 150px; 
            height: auto;
        }

    </style>

    <body>

        <?php
		if(isset($_GET['pesan'])){
			if($_GET['pesan'] == "gagal"){
				echo "Sign in failed! username and password is wrong!";
			}else if($_GET['pesan'] == "logout"){
				echo "You have successfully to logout";
			}else if($_GET['pesan'] == "belum_login"){
				echo "You must sign in with an account to acces this page ";
			}
		}
		?>

        <img src="assets/img/image/ASRT5941.PNG">
        <div class="kotaklogin">
            <h1>
                SIGN IN
            </h1>
            <div class="inilogin">
            <form method="post" action="aksi_login.php">
                <input type="text" class="iniform" placeholder="Username" name="username" autocomplete="off" required/></br>
                <input type="password" class="iniform" placeholder="Password" name="password" required/></br>
                <input type="submit" value="SIGN IN">
            </form>
            <a href="signup.php" style="text-decoration: none;"><h6>Not have an account?</h6></a>
            </div>
        </div>
    </body>
</html>