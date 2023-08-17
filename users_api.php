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

require 'phpqrcode/qrlib.php';

switch($method) {
    case 'GET':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $sql = "SELECT * FROM Users WHERE id = '$id'";
        } else {
            $sql = "SELECT * FROM Users";
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
        $email = $input['email'];
        
        $sql = "INSERT INTO Users (name, email) VALUES ('$name', '$email')";
        $conn->query($sql);
        
        $userId = $conn->insert_id;
        $qrContent = 'http://localhost/user/' . $userId;
        $qrCodePath = 'qrcodes/' . $userId . '.png';

        QRcode::png($qrContent, $qrCodePath);

        $sql = "UPDATE Users SET qr_code_path='$qrCodePath' WHERE id='$userId'";
        $conn->query($sql);

        echo json_encode(['message' => 'User added successfully!']);
        break;

    case 'PUT':
        $id = $input['id'];
        $name = $input['name'];
        $email = $input['email'];

        $sql = "UPDATE Users SET name='$name', email='$email' WHERE id='$id'";
        $conn->query($sql);
        
        echo json_encode(['message' => 'User updated successfully!']);
        break;

    case 'DELETE':
        $id = $_GET['id'];
        
        // Supprimer d'abord le fichier QR Code
        $sql = "SELECT qr_code_path FROM Users WHERE id='$id'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        if ($row['qr_code_path']) {
            unlink($row['qr_code_path']);
        }

        $sql = "DELETE FROM Users WHERE id='$id'";
        $conn->query($sql);
        echo json_encode(['message' => 'User deleted successfully!']);
        break;
}

$conn->close();
?>
