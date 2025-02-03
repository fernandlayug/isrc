<?php
session_start();
require '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];


    $stmt = $pdo->prepare("SELECT * FROM tbluser WHERE username = ?");
    $stmt->execute([$username]);
    $user = $stmt->fetch();

    if ($user && $user['password'] === $password) {

        $_SESSION['id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['usertype'] = $user['usertype'];
        $_SESSION['firstname'] = $user['firstname'];

    
        if ($user['usertype'] === 'admin') {
            header('Location: admin_dashboard.php');
        } else if ($user['usertype'] === 'HR') {
            header('Location: payroll_dashboard.php');
        } else {
            header('Location: user_dashboard.php');
        }
        exit;
    } else {
        echo "Invalid credentials.";
    }
}
?>	

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
    <div class="form-container">
        <h3 class="text-center mb-3">Login</h3>
        <form method="post">
            <div class="mb-3">
                <label class="form-label">Username</label>
                <input type="text" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-custom3" style="color: #372ae6">Login</button>
        </form>
    </div>
</body>
</html>
