<?php	

/*
crear un programa que simule los controles de un videojuego

si puslo w tiene que salir el texto "arriba o adelante"
si pulso s tiene que salir el text "abajo o atras"
si putlo a tiene que salir el texto "izquierda"
si pulso d tiene que salir el texto "derecha"
*/

$tecla= 'd';

switch($tecla){
    case 'w';
    echo 'El personaje se mueve hacia delante';
    break;
    case 's';
    echo 'El personaje se mueve hacia atras';
    break;
    case 'a';
    echo 'El personaje se mueve hacia la izquierda';
    break;
    case 'd';
    echo 'El personaje se mueve hacia la derecha';
    break;
    case '';
    echo 'AFK';
    break;
}