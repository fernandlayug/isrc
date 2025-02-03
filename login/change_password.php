<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $current_password = $_POST['current_password'];
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];

    if ($new_password !== $confirm_password) {
        echo "New password and confirm password do not match.";
    } else {
        $stmt = $pdo->prepare("SELECT password FROM tbluser WHERE id = ?");
        $stmt->execute([$_SESSION['id']]);
        $user = $stmt->fetch();

        // Direct string comparison instead of password_hash/password_verify
        if ($user && $current_password === $user['password']) {
            $stmt = $pdo->prepare("UPDATE tbluser SET password = ? WHERE id = ?");
            $stmt->execute([$new_password, $_SESSION['id']]);
            echo "Password changed successfully.";
        } else {
            echo "Current password is incorrect.";
        }
    }
}
?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="css/changepass.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="form-container mb-4">
        <h3 class="text-center mb-3">Change Password</h3>
        <form method="post">
            <div class="mb-3">
                <label class="form-label">Current Password</label>
                <input type="password" name="current_password" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">New Password</label>
                <input type="password" name="new_password" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Confirm Password</label>
                <input type="password" name="confirm_password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Change Password</button>
        </form>
    </div>
</body>
</html>