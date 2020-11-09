<?php

include('productsconnexion.inc.php');

$productCode = $_POST["productCode"];
$productName = $_POST["productName"];
$shortDescription = $_POST["shortDescription"];
$longDescription = $_POST["longDescription"];
$brandName = $_POST["brandName"];

$concat = "SELECT brandCode FROM brands WHERE brandName ='$brandName'";
$request2 = $mysqli->query($concat);
var_dump($request2);
$result = $request2->fetch_object();
$actualBrand = $result->brandCode;

$mysqli->query("UPDATE products SET productCode = '$productCode', productName = '$productName', shortDescription = '$shortDescription', longDescription = '$longDescription', brandCode = $actualBrand WHERE productCode = '$productCode'");

header('Location: ../index.php');
exit();

?>