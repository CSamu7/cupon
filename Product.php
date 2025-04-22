<?php
require_once __DIR__ . '/connection.php';

class Product {
  public function getProducts() {
    $db = new Database();
    $connection = $db->connect_to_db();
    $rows = [];

    $stmt = $connection->prepare("SELECT * FROM producto");
    $stmt->execute();
    $result = $stmt->get_result();

    foreach($result as $product){
      array_push($rows, $product);
    }

    return $rows;
  }
}