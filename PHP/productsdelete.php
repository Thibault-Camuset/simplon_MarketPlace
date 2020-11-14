<?php

include('productsconnexion.inc.php');

$pCode = $_GET["productCode"];
$mysqli->query("DELETE FROM products WHERE productCode = '$pCode'");

header('Location: ../index.php');
exit();

?>