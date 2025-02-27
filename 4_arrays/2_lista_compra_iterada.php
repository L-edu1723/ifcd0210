<?php

$compra=["pan","agua","carne","arroz","patatas"];

for($i= 0;$i<count($compra);$i++){
    echo $compra[$i]."<br>";
}

echo"<hr>";
foreach($compra as $key=>$value){
    echo $value."<br>";
}