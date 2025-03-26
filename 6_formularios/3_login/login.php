<?php
define("USER", "user");
define("PASSWORD", '1234');



if ( $_POST['user']==USER && $_POST['password']==PASSWORD ) {
    echo "Bienvenido"." ".$_POST["user"];
}else{
 header("Location: error.php");
}

