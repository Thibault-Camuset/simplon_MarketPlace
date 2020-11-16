<?php include ('config.inc.php');
include ('connexion.inc.php');


?>>

<form id="add-request" method="POST" action="productsadd2.php">

<input name="productCode" type="text" placeholder="Code du produit"/>
<input name="productName" type="text" placeholder="Nom du Produit"/>
<textarea name="shortDescription" placeholder="Courte Description du Produit"></textarea>
<textarea name="longDescription" placeholder="Longue Description du Produit"></textarea>


<select name="brandName">
        <?php 
        $brandsrequest = $mysqli->query('SELECT * FROM brands');
        while ($brands = $brandsrequest->fetch_object()) {
            ?>
                <option selected><?php echo $brands->brandName ?></option>
            <?php } ?>         
</select>
<textarea name="productUrl" placeholder="URL de l'image du Produit"></textarea>
<input id="submit-add" type="submit" value="Ajouter le produit"/>
</form>
