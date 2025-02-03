<?php
try {
    // $dsn = "sqlsrv:server=FERNAND-PERSONA\SQLEXPRESS01;Database=src_db";
    $dsn = "sqlsrv:server=srcserv\sqlexpress;Database=src_db";
    $username = "sa";
    $password = "masterfile";

    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // echo "Connection successful!";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>



