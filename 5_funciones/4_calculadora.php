<?php
/* 
    Crear una función por cada operación básica: suma, resta, multiplicación y división
    Probar individualmente cada función para ver si funcionan correctamente (cuidado con dividir entre 0)

    Una vez hechas, hacer una función que reciba 3 parámetros (numero1, numero2 y operación a realizar):
    Si la función recibe la operación "+", ha de llamar a la función "suma" creada con anterioridad con los números recibidos.
    de igual manera ha ocurrir si recibe la operación "-", "*" y "/"
    Si la operación no es ninguna de las anteriores, se ha de mostrar un mensaje de error: "Operación desconocida"

*/
function suma($numero1,$numero2){
    $suma = $numero1 + $numero2;
    return $suma;  
}
function resta($numero1,$numero2){
    $resta = $numero1 - $numero2;
    return $resta;
}
function multiplicacion($numero1,$numero2){
    $multiplicacion = $numero1 * $numero2;
    return $multiplicacion;
}
function division($numero1,$numero2){
    $division = $numero1 / $numero2;
    return $division;
}  

function calculadora($num1,$num2,$operacion){
    if($operacion == "+"){
        echo suma($num1,$num2);
    }
    elseif($operacion == "-"){
        echo resta($num1,$num2);
    }
    elseif($operacion == "*"){
        echo multiplicacion($num1,$num2);
    }
    elseif($operacion == "/"){
        echo division($num1,$num2);
    }
}

calculadora(2,2,"+");
echo "<br>";
calculadora(2,2,"-");
echo "<br>";
calculadora(2,2,"/");
echo "<br>";
calculadora(2,2,"*");