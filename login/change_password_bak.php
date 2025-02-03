<form method="post">
    <label>Current Password:</label>
    <input type="password" name="current_password" required><br>
    <label>New Password:</label>
    <input type="password" name="new_password" required><br>
    <label>Confirm Password:</label>
    <input type="password" name="confirm_password" required><br>
    <button type="submit">Change Password</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $current_password = $_POST['current_password'];
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];

    if ($new_password !== $confirm_password) {
        echo "<div class='text-danger'>New password and confirm password do not match.</div>";
    } else {
        $stmt = $pdo->prepare("SELECT password FROM tbluser WHERE id = ?");
        $stmt->execute([$_SESSION['id']]);
        $user = $stmt->fetch();

        if ($user && $current_password === $user['password']) {
            $stmt = $pdo->prepare("UPDATE tbluser SET password = ? WHERE id = ?");
            $stmt->execute([$new_password, $_SESSION['id']]);
            echo "<div class='text-success'>Password changed successfully.</div>";
        } else {
            echo "<div class='text-danger'>Current password is incorrect.</div>";
        }
    }
}
?>
