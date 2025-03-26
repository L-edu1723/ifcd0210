<?php
define("USER", "user");
define("PASSWORD", '1234');



if ( $_GET['user']==USER && $_GET['password']==PASSWORD ) {
    echo "Bienvenido"." ".$_GET["user"];
}else{
 header("Location: error.php");
}

