
<?php include ('PHP/config.inc.php');
include ('PHP/connexion.inc.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="CSS/style.css">
   
</head>
<body>

    <div id="page-container">

        <div id="formulaire">
            <from id='search'>
        
</form>
            <img src="CSS/market.png" alt="logo" class='img-market'>


         
</div>

<div class='product-detail-container'>
<?php 


$idProduct = $_POST['id'];
$price = $_POST['price'];

$result = $mysqli->query("SELECT productName, shortDescription, longDescription, productUrl FROM products WHERE productCode = '$idProduct'");
        
        $row =  $result->fetch_all();
$productname = $row[0][0];
$productShort = $row[0][1];
$productLong = $row[0][2];
$productUrl = $row[0][3];
    ?>
       
<div class='product-detail apparition'>
<div><img src='<?php echo $productUrl ;?>'>
</div>
<div class='product-head'>
<h2> <?php echo $productname;?></h2>
<h5 class='price'> <?php echo $price;?></h5>

        <p> <?php echo $productLong ;?><p>
</div>



</div>

</body>
</html>
