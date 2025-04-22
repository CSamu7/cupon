<?php
require_once __DIR__ . '/Product.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Document</title>
</head>
<body>
  <h1>Productos</h1>
  <?php 
    $product = new Product();
    $products = $product->getProducts();

  ?>
  <section class="products">
  <?php
  foreach ($products as $product) {
    ?>
    <article class="productCard">
      <img src="<?php echo $product["url_imagen"] ?>" class="productImg"/>
      <div class="productInfo">
        <h2 class="productTitle"><?php echo $product["nombre"]?></h2>
        <strong class="productPrice">$<?php echo $product["precio"]?></strong>
        <a href="<?php echo $product["id_producto"] ?>" class="btnProduct">Ver producto</a>
      </div>
    </article>
    <?php
  }
  ?>
  </section>
</body>
</html>