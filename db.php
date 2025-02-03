<?php
try {
    $dsn = 'mysql:host=localhost;dbname=srceduc_db';
    $username = 'ccsadmin';
    $password = '12345678';

    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}
?>
