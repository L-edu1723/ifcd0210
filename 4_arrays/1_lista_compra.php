<?php
/* Crear un array de la lista de la compra, que tenga al menos 4 elementos*/
/* Utilizar un var_dump() para ver el contenido, modificar el contenido del primer elemnto y volver a mostarlo con el var_dump()*/

$compra=["patatas","agua","cocacola","arroz","carne"];

var_dump( $compra );

$compra[0]="pan";
echo "<br>";

var_dump( $compra );