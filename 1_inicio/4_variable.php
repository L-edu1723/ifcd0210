<?php
$numero1 = 1;
$numero2 = 1;
$letra = "hola";
$decimal = 1.34;
echo($numero1."<br>".$numero2."<br>".$letra."<br>".$decimal."<br>");
$boolean=true;
echo($letra." mundo");

echo("suma=".$numero1+$numero2);
echo("<br>");
echo("division".$numero1/$numero2);
echo("<br>");

echo("resto=".$numero1%$numero2);
echo("<br>");

if($numero1>$numero2){
    echo($numero1."es mayor que".$numero2);
}elseif($numero1<$numero2){
    echo("$numero1 es menos que $numero2");
}else{
    echo("son iguales");
}

echo("<br>");
echo($decimal);
echo("<br>");
if($boolean==true){
    echo("false");
}else{
    echo("true");
}

