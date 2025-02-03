<?php
session_start();
require '../db.php';

// Check if the user is logged in and has valid session
if (!isset($_SESSION['id']) || $_SESSION['usertype'] !== 'user') {
    echo "Access denied. Only users can access this page.";
    exit;
}

// Get the payslip number from the URL parameter
$payslipno = $_GET['payslipno'] ?? null;

if (!$payslipno) {
    echo "Invalid request. Payslip number is required.";
    exit;
}

// Get the user ID from session
$userId = $_SESSION['id'];

// Fetch the payslip details from the database
$sql = "SELECT * FROM payroll WHERE empid = ? AND payslipno = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$userId, $payslipno]);
$payslip = $stmt->fetch();

// Check if the payslip exists
if (!$payslip) {
    echo "Payslip not found.";
    exit;
}

// Display the payslip details
?>

<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Payslip</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container my-5">
        <h4>Payslip Details</h4>
        <table class="table">
            <tr>
                <th>Payslip No:</th>
                <td><?php echo htmlspecialchars($payslip['payslipno']); ?></td>
            </tr>
            <tr>
                <th>Date From:</th>
                <td><?php echo htmlspecialchars($payslip['dtefrom']); ?></td>
            </tr>
            <tr>
                <th>Date To:</th>
                <td><?php echo htmlspecialchars($payslip['dteto']); ?></td>
            </tr>
            <tr>
                <th>Basic Salary:</th>
                <td><?php echo htmlspecialchars($payslip['basicpay']); ?></td>
            </tr>
            <tr>
                <th>Allowance:</th>
                <td><?php echo htmlspecialchars($payslip['allowance']); ?></td>
            </tr>
            <tr>
                <th>Deductions:</th>
                <td><?php echo htmlspecialchars($payslip['deduction1']); ?></td>
            </tr>
            <tr>
                <th>Net Salary:</th>
                <td><?php echo htmlspecialchars($payslip['net']); ?></td>
            </tr>
        </table>
        <a href="user_dashboard.php?page=viewPayslip" class="btn btn-secondary">Back to Payslips</a>
    </div>
</body>
</html> -->
