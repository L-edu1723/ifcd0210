<?php
 /* 
    Crear una función suma que reciba dos números como parámetros
    y muestra por pantalla su suma con un echo

    Hacer otra versión de la función, pero esta vez tiene que devolver el valor
     
 */

 function suma($parametro1,$parametro2){
   echo "$parametro1 + $parametro2";
 }

 suma(16,29);

 function resultado_suma($parametro1,$parametro2){
   $resultado=$parametro1+$parametro2;
   return $resultado;
 }
echo "<br>";
 echo resultado_suma(1,5);