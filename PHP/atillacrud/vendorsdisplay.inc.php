
<?php

include('vendorsconnexion.inc.php');

?>

<a id="vendor-add" href="vendorsadd.php">Ajouter un nouveau Vendor</a>

<?php
$request = $mysqli->query('SELECT * FROM vendors');

while ($vendors = $request->fetch_object()) {

    ?>
    <div class="vendors-element">

    <a class="vendor-button-delete" href="vendorsdelete.php?vendorCode=<?php echo $vendors->vendorCode; ?>">X</a>

    <p>Vendor Code: <?php echo $vendors->vendorCode; ?></p> 
    <p>Vendor Name: <?php echo $vendors->vendorName; ?></p> 
    <p>Vendor Description: <?php echo $vendors->vendorDescription; ?> </p>

    <a class="product-button-update" href="PHP/productsupdate.php?productCode=<?php echo $products->productCode; ?>">U</a>

    </div>

<?php
 }
 ?>
