<?php
session_start();
require '../db.php';

if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit;
}

if (!isset($_GET['id'])) {
    echo "User ID is required.";
    exit;
}

$user_id = $_GET['id'];


// var_dump($user_id);

// Fetch user details
$stmt = $pdo->prepare("SELECT username FROM tbluser WHERE id = ?");
$stmt->execute([$user_id]);
$user = $stmt->fetch();

if (!$user) {
    echo "User not found.";
    exit;
}


// var_dump($user);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // var_dump($_POST);

    $username = $_POST['username'];

  
    $stmt = $pdo->prepare("UPDATE tbluser SET username = ? WHERE id = ?");
    $stmt->execute([$username, $user_id]);
    echo "User updated successfully.";
    header('Location: admin_dashboard.php');
    exit;
}
?>
<form method="post">
    <label>Username:</label>
    <input type="text" name="username" value="<?php echo htmlspecialchars($user['username']); ?>" required>
    <br>
    <button type="submit">Update</button>


    
</form>

