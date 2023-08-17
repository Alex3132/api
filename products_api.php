<?php
require 'db_connection.php';
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'), true);

switch($method) {
    case 'GET':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $sql = "SELECT * FROM products INNER JOIN product_details ON products.id = product_details.product_id WHERE products.id = '$id'";
        } else {
            $sql = "SELECT * FROM products INNER JOIN product_details ON products.id = product_details.product_id";
        }
        $result = $conn->query($sql);
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        echo json_encode($data);
        break;

    case 'POST':
        $name = $input['name'];
        $createdAt = $input['createdAt'];
        $stock = $input['stock'];
        $id = $input['id'];
        $price = $input['details']['price'];
        $description = $input['details']['description'];
        $color = $input['details']['color'];

        $sql_product = "INSERT INTO products (createdAt, name, stock, id) VALUES ('$createdAt', '$name', $stock, '$id')";
        $sql_details = "INSERT INTO product_details (product_id, price, description, color) VALUES ('$id', '$price', '$description', '$color')";

        $conn->query($sql_product);
        $conn->query($sql_details);
        echo json_encode(['message' => 'Product added successfully!']);
        break;

    case 'PUT':
        // Note: Generally, you'd pass the ID as a parameter and update based on that.
        $id = $input['id'];
        $name = $input['name'];
        $stock = $input['stock'];
        $price = $input['details']['price'];
        $description = $input['details']['description'];
        $color = $input['details']['color'];

        $sql_product = "UPDATE products SET name='$name', stock=$stock WHERE id='$id'";
        $sql_details = "UPDATE product_details SET price='$price', description='$description', color='$color' WHERE product_id='$id'";

        $conn->query($sql_product);
        $conn->query($sql_details);
        echo json_encode(['message' => 'Product updated successfully!']);
        break;

    case 'DELETE':
        $id = $_GET['id'];
        $sql_product = "DELETE FROM products WHERE id='$id'";
        $sql_details = "DELETE FROM product_details WHERE product_id='$id'";

        $conn->query($sql_details);
        $conn->query($sql_product);
        echo json_encode(['message' => 'Product deleted successfully!']);
        break;
}

$conn->close();
?>
