<?php

include('productsconnexion.inc.php');

$productCode = $_POST["productCode"];
$productName = $_POST["productName"];
$shortDescription = $_POST["shortDescription"];
$longDescription = $_POST["longDescription"];
$brandName = $_POST["brandName"];



$concat = "SELECT brandCode FROM brands WHERE brandName ='$brandName'";
$request2 = $mysqli->query($concat);
$result = $request2->fetch_object();
$actualBrand = $result->brandCode;

$mysqli->query("INSERT INTO products (productCode, productName, shortDescription, longDescription, brandCode) VALUES ('$productCode', '$productName', '$shortDescription', '$longDescription', $actualBrand)");

// besoin d'updater la page d'accueil pour voir les modif/refresh liste produits?

header('Location: ../index.php');
exit();
?>