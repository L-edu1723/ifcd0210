
<?php
/*
crear un fichero que muestre un numero aleatorio entre 0 y 200 y que muestre en pantalla si es par o impar

utilizando constantes para el minimo y el maximo
 */

define('MINIMO',0);
define('MAXIMO',200);
$x=rand(MINIMO,MAXIMO);

if($x%2==0){
    echo $x;
    echo "<br>";
    echo "par";
}else{
    echo $x;
    echo "<br>";
    echo "impar";
}