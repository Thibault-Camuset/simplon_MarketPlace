<?php

$dbuser = 'root';
$dbpass = 'saithamsama';
$dbdatabase = 'marketplace';
$dbhost = 'localhost';


$mysqli = new mysqli($dbhost, $dbuser, $dbpass, $dbdatabase);

if ($mysqli->connect_error) {
    echo 'Erreur à la connexion';
}

?>