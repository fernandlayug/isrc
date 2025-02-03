<?php
session_start();
require '../db.php';

// Check if the user is logged in and has valid session
// if (!isset($_SESSION['id']) || $_SESSION['usertype'] !== 'user') {
//     echo "Access denied. Only users can access this page.";
//     exit;
// }

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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payslip - SRC Pampanga</title>
    <link rel="stylesheet" href="../css/payslip.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

    <!-- Payslip Container -->
    <div class="payslip-container">
        <div class="header">
            <img src="../resources/srclogo.png" alt="SRC Pampanga Logo" class="logo">
            <div class="title">
                <h2 style="padding-left: 80px;">SANTA RITA COLLEGE OF PAMPANGA</h2>
                <h3 style="padding-left: 200px;">PAYSLIP</h3>
            </div>
        </div>

        <!-- Employee Details -->
        <table class="details">
            <tr>
                <td><strong>ID No.:</strong> <?php echo htmlspecialchars($payslip['empid']); ?></td>
                <td><strong>Name:</strong> <?php echo htmlspecialchars($payslip['surname'] . ', ' . $payslip['firstname'] . ' ' . $payslip['mname']); ?></td>
            </tr>
            <tr>
                <td><strong>Payslip No.:</strong> <?php echo htmlspecialchars($payslip['payslipno']); ?></td>
                <td><strong>Designation:</strong> <?php echo htmlspecialchars($payslip['designation']); ?></td>
            </tr>
            <tr>
                <td><strong>Status:</strong> <?php echo htmlspecialchars($payslip['status']); ?></td>
                <td><strong>Department:</strong> <?php echo htmlspecialchars($payslip['department']); ?></td>
            </tr>
            <tr>
                <td colspan="2"><strong>Duration Covered:</strong> 
                <?php 
                echo htmlspecialchars(date('j-M-y', strtotime($payslip['dtefrom'])) . ' - ' . date('j-M-y', strtotime($payslip['dteto']))); 
                ?>
                </td>
            </tr>
        </table>

        <!-- Salary Breakdown -->
        <table class="salary-breakdown">
            <tr>
                <th colspan="2">Basic Pay</th>
                <th colspan="2">Deductions</th>
            </tr>
            <tr>
                <td>Basic Pay:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['basicpay'], 2)); ?></td>
                <td>Withholding Tax:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['wtax'], 2)); ?></td>
            </tr>
            <tr>
                <td>Allowance:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['allowance'], 2)); ?></td>
                <td>SSS Premium:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['sss'], 2)); ?></td>
            </tr>
            <tr>
                <td>Overload:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['overload'], 2)); ?></td>
                <td>Med. Premium:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['med'], 2)); ?></td>
            </tr>
            <tr>
                <td>Longevity:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['longevity'], 2)); ?></td>
                <td>PERAA Premium:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['peraa'], 2)); ?></td>
            </tr>
            <tr>
                <td><?php echo htmlspecialchars($payslip['desc1']); ?></td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['other1'], 2)); ?></td>
                <td>PAGIBIG Premium:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['pagibig'], 2)); ?></td>
            </tr>
            <tr>
                <th colspan="4">Loans</th>
            </tr>
            <tr>
                <td>SSS Loan:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['sssloan'], 2)); ?></td>
                <td>PERAA Loan:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['peraaloan'], 2)); ?></td>
            </tr>
            <tr>
                <td>PAGIBIG Salary Loan:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['pagibigloan'], 2)); ?></td>
                <td>PAGIBIG Calamity Loan:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['pagibigloanc'], 2)); ?></td>
            </tr>
            <tr>
                <td>Cash Advance:</td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['ca'], 2)); ?></td>
                <td><?php echo htmlspecialchars($payslip['otherdeduction1']); ?></td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['deduction1'], 2)); ?></td>
            </tr>
           
            <tr>
                <td><?php echo htmlspecialchars($payslip['otherdeduction2']); ?></td>
                <td><?php echo htmlspecialchars('₱ ' . number_format($payslip['deduction2'], 2)); ?></td>
                <td></td>
                <td></td>
            </tr>
  
        </table>

        <!-- Total & Net Compensation -->
        <table class="summary">
            <tr>
                <td><strong>Gross Pay:</strong> 
               
                </td>

                <td><strong>Total Deduction:</strong>
              
            
                </td>

                <td><strong>Net Compensation:</strong> <span class="net-pay"></span></td>
            </tr>

            <tr>
                <td> 
                <?php 
                $gross = $payslip['basicpay'] + $payslip['allowance'] + $payslip['overload'] + $payslip['longevity'] + $payslip['other1'] ;
                echo htmlspecialchars('₱ ' . number_format($gross, 2)); 
                ?>
                </td>

                <td>
                <?php 
                $totalLoans = $payslip['wtax'] + $payslip['sss'] + $payslip['med'] + $payslip['peraa'] + $payslip['pagibig'] + $payslip['sssloan'] + $payslip['peraaloan'] + $payslip['pagibigloan'] + $payslip['pagibigloanc'] + $payslip['ca'] + $payslip['deduction1'] + $payslip['deduction2'];
                echo htmlspecialchars('₱ ' . number_format($totalLoans, 2)); 
                ?>
                </td>

                <td> <span class="net-pay"><?php echo htmlspecialchars('₱ ' . number_format($payslip['net'], 2)); ?></span></td>
            </tr>
        </table>

        <!-- Employee Signature -->
        <div class="signature">
            <p>Employee Signature: _________________________</p>
        </div>

        <!-- Print Button -->
        <center>
            <button class="print-btn" onclick="window.print()">Print Payslip</button>
        </center>
    </div>

</body>
</html>