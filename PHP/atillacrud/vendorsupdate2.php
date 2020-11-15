<?php

include('vendorsconnexion.inc.php');

$vendorCode = $_POST["vendorCode"];
$vendorName = $_POST["vendorName"];
$description = $_POST["description"];

$mysqli->query("UPDATE vendors SET vendorCode = '$vendorCode', vendorName = '$vendorName', description = '$description'");

header('Location: ../../index.php');
exit();

?>
