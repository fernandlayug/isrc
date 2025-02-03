<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: #fff;
            padding: 15px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
    </style>
</head>
<body>
    <?php
    session_start();
    require '../db.php';

    if (!isset($_SESSION['id']) || $_SESSION['usertype'] !== 'HR') {
        echo "Access denied. Only users can access this page.";
        exit;
    }

    $page = $_GET['page'] ?? ''; // Get page from query string
    ?>

    <div class="sidebar">
        <p>Welcome, <?php echo htmlspecialchars($_SESSION['firstname']); ?>!</p>
        <a href="payroll_dashboard.php?page=change_password">Change Password</a>
        <a href="../payslip/retrieve.html">Extract Payroll</a>
        <a href="#viewPayslip">View Payslip</a>
        <a href="logout.php" class="text-danger">Logout</a>
    </div>

    <div class="container-fluid p-4">
        <?php
        // Dynamically include content based on the selected page
        if ($page === 'change_password') {
            include 'change_password.php';
        } else {
            echo "<h4>Welcome to your dashboard!</h4>";
        }
        ?>
    </div>
</body>
</html>
