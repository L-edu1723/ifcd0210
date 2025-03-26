<?php   

$compra= [
    [
        "nombre"=> "arroz",
        "precio"=> 2.99
    ],

    [
        "nombre"=> "lechuga",
        "precio"=>1.05    
    ],

    [
        "nombre"=> "yogures",
        "precio"=> 3.15
    ]
    ];

foreach ($compra as $producto){
    echo $producto["nombre"]," ", $producto["precio"]."€"."<br>";
}