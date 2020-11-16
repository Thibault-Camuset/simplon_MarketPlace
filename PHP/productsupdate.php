<?php 


include ('config.inc.php');
include ('connexion.inc.php');


$pCode = $_GET["productCode"];
$request = $mysqli->query("SELECT * FROM products WHERE productCode = '$pCode'");
$product = $request->fetch_object();

?>

<form id="update-form" method="POST" action="productsupdate2.php">

    <input name="productCode" type="text" value="<?php echo $product->productCode; ?>"/>
    <input name="productName" type="text" value="<?php echo $product->productName; ?>"/>
    <textarea name="shortDescription" type="text"><?php echo $product->shortDescription; ?></textarea>
    <textarea name="longDescription" type="text"><?php echo $product->longDescription; ?></textarea>

    <select name="brandName">
        <?php 
        $brandsrequest = $mysqli->query('SELECT * FROM brands');
        while ($brands = $brandsrequest->fetch_object()) {
            if($brands->brandCode == $product->brandCode) {
            ?>
                <option selected><?php echo $brands->brandName ?></option>
            <?php } else {?>  
                <option><?php echo $brands->brandName ?></option>
            <?php } 
            };
            ?>         
    </select>
    <textarea name="productUrl" placeholder="URL de l'image du Produit"><?php echo $product->productUrl; ?></textarea>
    <input id="submit-update" type="submit" value="Modifier"/>

</form>
