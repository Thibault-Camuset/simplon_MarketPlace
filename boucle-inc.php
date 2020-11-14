<?php 


include ('config.inc.php');
include ('connexion.inc.php');

$result = $mysqli->query('SELECT* FROM products');
        
        $row =  $result->fetch_all();
      
      
        for($i=0;$i<sizeof($row);$i++){ 
            $result2 = $mysqli->query("SELECT DISTINCT priceHT FROM products_vendors WHERE productCode = '{$row[$i][0]}'");
            $price =  $result2->fetch_all();
           
       ?>
         <div class='popo'><div class='bottom'><hr><p class='price'><?php echo $price[0][0]; ?> €</p><p class='opacity'>Playstation 2</p><p class='pro'><?php echo $row[$i][1]; ?></p></div>
        <div id="product-details-page" class="hidden"></div>
    </div>
       <?php }
    ?>