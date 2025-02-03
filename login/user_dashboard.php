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

    if (!isset($_SESSION['id']) || $_SESSION['usertype'] !== 'user') {
        echo "Access denied. Only users can access this page.";
        exit;
    }

    // Get the user ID from the session
    $userId = $_SESSION['id'];

    // Get the page from the query string
    $page = $_GET['page'] ?? ''; 

    // Fetch payslips if the user is viewing the "View Payslip" page
    if ($page === 'viewPayslip') {
        $sql = "SELECT * FROM payroll WHERE empid = ?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$userId]);
        $payslips = $stmt->fetchAll();
    }
    ?>

    <div class="sidebar">
        <p>Welcome, <?php echo htmlspecialchars($_SESSION['firstname']); ?>!</p>
        <a href="user_dashboard.php?page=change_password">Change Password</a>
        <a href="user_dashboard.php?page=viewPayslip">View Payslip</a>
        <a href="logout.php" class="text-danger">Logout</a>
    </div>

    <div class="container-fluid p-4">
        <?php
        if ($page === 'change_password') {
            include 'change_password.php';
        } elseif ($page === 'viewPayslip') {
            echo "<h4>Your Payslips</h4>";

            // Display payslips in a table
            if ($payslips) {
                echo "<table class='table'>";
                echo "<thead><tr><th>Payslip No</th><th>Date From</th><th>Date To</th><th>Action</th></tr></thead>";
                echo "<tbody>";
                foreach ($payslips as $payslip) {
                    echo "<tr>";
                    echo "<td>" . htmlspecialchars($payslip['payslipno']) . "</td>";
                    echo "<td>" . htmlspecialchars(date('j-M-Y', strtotime($payslip['dtefrom']))) . "</td>";
                    echo "<td>" . htmlspecialchars(date('j-M-Y', strtotime($payslip['dteto']))) . "</td>";
                    echo "<td><a href='../payslip/view_payslip.php?payslipno=" . urlencode($payslip['payslipno']) . "' class='btn btn-primary btn-sm'>View</a></td>";
                    echo "</tr>";
                }
                echo "</tbody>";
                echo "</table>";
            } else {
                echo "<p>No payslips found.</p>";
            }
        } else {
            echo "<h4>Welcome to your dashboard!</h4>";
        }
        ?>
    </div>
</body>
</html>
