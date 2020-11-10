<?php

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
            <input type="text" id="search-input" placeholder="Rechercher un produit"/>
            <input type="button" id="search-button" value="Envoyer"/>
            <select id="select-categories">
                <option>Blabla</option>
                <option>Blabla</option>
                <option>Blabla</option>
                <option>Blabla</option>
            </select>
            <input type="button" id="switch-back-office" title="Back-Office" value="B"/>
        </div>

        <div id="products-page">
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
            <div class="popo"></div>
        </div>
        <div id="product-details-page" class="hidden"></div>
    </div>

    <div id="back-office-container" class="hidden">
    <input type="button" id="switch-front" title="Front-Office" value="F"/>
    <div id="back-office-products">Products</div>
    <div id="back-office-vendors">Vendors</div>
    <div id="back-office-categories">Categories</div>
    <div id="back-office-brands">Brands</div>
    </div>

    <div id="back-office-products-display" class="hidden">
    <input type="button" class="switch-to-back" title="Back-Office" value="B"/>

<?php
include('PHP/productsdisplay.inc.php');
?>

    </div>
    <div id="back-office-vendors-display" class="hidden">
    <input type="button" class="switch-to-back" title="Back-Office" value="B"/>
    </div>
    <div id="back-office-categories-display" class="hidden">
    <input type="button" class="switch-to-back" title="Back-Office" value="B"/>

    <?php
    include('PHP/indexcategory.php');
?>
    </div>
    <div id="back-office-brands-display" class="hidden">
    <input type="button" class="switch-to-back" title="Back-Office" value="B"/>
    </div>


    <script type="Text/Javascript" src="JS/script.js"></script>
</body>
</html>