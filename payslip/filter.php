<?php
// Enable error reporting for debugging (remove in production)
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Include the connection string
include 'sqlpdo.php'; // Ensure the path is correct

// Set headers
header('Content-Type: application/json');
header('X-Content-Type-Options: nosniff');

try {
    // Get JSON input from the frontend
    $jsonInput = file_get_contents('php://input');
    $requestData = json_decode($jsonInput, true);

    if (!isset($requestData['dtefrom'], $requestData['dteto'])) {
        echo json_encode(["error" => "Invalid input. 'dtefrom' and 'dteto' are required."]);
        exit;
    }

    $dtefrom = $requestData['dtefrom'];
    $dteto = $requestData['dteto'];

    // Query the database for the filtered results
    $query = "
        SELECT *
        FROM payrollVIEW
        WHERE dtefrom >= :dtefrom AND dteto <= :dteto
    ";

    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':dtefrom', $dtefrom);
    $stmt->bindParam(':dteto', $dteto);
    $stmt->execute();

    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Return the filtered results as JSON
    echo json_encode(["filteredData" => $results]);
} catch (PDOException $e) {
    echo json_encode(["error" => "Database error: " . $e->getMessage()]);
}
?>
