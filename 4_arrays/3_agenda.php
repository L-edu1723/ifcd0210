<?php
/*Realizar una agenda ;
Guardar en un array asociativo el nombre de la persona con clave y su numero como valor

Una vez hecho mostrar el texto "x tiene el numero 666666666"
*/

$Agenda=["Carlos"=>"63263761","Juan"=>"68439739","Miguel"=>"65478267","Pablo"=>"67443781",];

foreach($Agenda as $key=>$value){
    echo $key." tiene el numero ".$value."<br>";
}
