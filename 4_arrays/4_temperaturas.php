<?php

/* 
Dado un array con la temperatura media de  cada día de la semana, sacar:
- la temperatura máxima, 
- la mínima 
- y la temperatura media

*/


$temperaturas = [12, 15, 13, 12, 16, 11, 13,14,-1,10,29,-10];

function minimo($array){
    $minimo=100;
    for($i = 0; $i < (count($array)); $i++){
        if($array[$i]<$minimo){
            $minimo=$array[$i];
        }
    }
return "La temperatura minima fue ".$minimo;
}

echo minimo($temperaturas);

function maximo($array){
    $maximo= 0;
    for($i = 0; $i < count($array); $i++){
        if($array[$i] > $maximo){
            $maximo=$array[$i];
        }
    }
    return "La temperatura maxima fue ".$maximo;
}
echo "<hr>";
echo maximo($temperaturas);

function media($array){
    $media=0;
    for ( $i = 0; $i < (count($array)); $i++){
        $media+=$array[$i];
    }
    return floor($media/count($array));
}

echo "<hr>";
echo media($temperaturas);
