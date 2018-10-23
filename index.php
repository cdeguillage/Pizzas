<?php

// On crée une connexion à une BDD
// $db = new PDO('mysql:host=localhost;port=3306;dbname=pizzastore;charset=utf8'; 'root', '');
try
{
    $db = new PDO('mysql:host=localhost;port=3306;dbname=pizzastore', 'root', '',
                [
                // Activation de la gestion des messages d'erreur xdebug
                 PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
                // Charset
                 PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
                ]
    );
}
catch( Exception $e)
{
    echo $e->getMessage();
    header('Location: https://www.google.fr/search?q='.$e->getMessage());
}
var_dump($db);

// ******************************************************************************
$query = $db->query('SELECT * FROM pizza');
var_dump($query);

// $pizza = $query->fetch();
// var_dump($pizza);

$pizzas = $query->fetchAll();
var_dump($pizzas);

echo '* FETCHALL ***************************************************<br />';
echo '**************************************************************<br />';
echo '**************************************************************<br />';
foreach($pizzas as $pizza) {
    echo '**************************************************************<br />';
    // echo $pizza['id'].' / '.$pizza['name'].' / '.$pizza['price'].' / '.$pizza['image'];
    // var_dump($pizza);
    echo '<h1>'.$pizza['name'].'</h1><br />';
}

// ******************************************************************************
$query_one = $db->query('SELECT * FROM pizza');
// var_dump($query_one);

echo '* FETCH ******************************************************<br />';
echo '**************************************************************<br />';
echo '**************************************************************<br />';
while( $pizza = $query_one->fetch() ) {
    echo '<h1>'.$pizza['name'].'</h1><br />';
    echo '**************************************************************<br />';
}
