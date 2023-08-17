<?php
// Connexion à la base de données
require 'db_connection.php';

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Configuration des headers
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
            $sql = "SELECT * FROM product_details WHERE product_id = '$id'";
        } else {
            $sql = "SELECT * FROM product_details";
        }
        $result = $conn->query($sql);
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        echo json_encode($data);
        break;

    case 'POST':
        $id = $input['product_id'];
        $price = $input['price'];
        $description = $input['description'];
        $color = $input['color'];

        $sql = "INSERT INTO product_details (product_id, price, description, color) VALUES ('$id', '$price', '$description', '$color')";
        $conn->query($sql);
        echo json_encode(['message' => 'Product detail added successfully!']);
        break;

    case 'PUT':
        $id = $input['product_id'];
        $price = $input['price'];
        $description = $input['description'];
        $color = $input['color'];

        $sql = "UPDATE product_details SET price='$price', description='$description', color='$color' WHERE product_id='$id'";
        $conn->query($sql);
        echo json_encode(['message' => 'Product detail updated successfully!']);
        break;

    case 'DELETE':
        $id = $_GET['id'];
        $sql = "DELETE FROM product_details WHERE product_id='$id'";
        $conn->query($sql);
        echo json_encode(['message' => 'Product detail deleted successfully!']);
        break;
}

$conn->close();
?>
