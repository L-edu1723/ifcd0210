<?php
/* 
Función "filtrar" que recibe un array de películas
y devuelve otro array con aquellas películas que pertenecen a un género especificado por parámetro


Función "mostrar" que recibe un array de películas 
y las muestra en sus correspondientes divs html como en  el ejercicio 7 del apartado 4_arrays

*/

function filtrar($peliculas,$genero){
    $filtrado=[];
    foreach($peliculas as $pelicula){
        if($pelicula['genero']=="$genero"){
        $filtrado[]=array_push($pelicula)
        } 
    }
    return $filtrado;
    }

function mostrar($peliculas) {
    echo "<div class='contenedor-peliculas'>";
    foreach ($peliculas as $pelicula) {
        echo "<div class='pelicula'>";
        echo "<h2>" . $pelicula['titulo'] . "</h2>";
        echo "<p><strong>Género:</strong> " . $pelicula['genero'] . "</p>";
        echo "<p><strong>Año:</strong> " . $pelicula['anio'] . "</p>";
        echo "</div>";
    }
    echo "</div>";
}