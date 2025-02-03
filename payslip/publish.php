<?php
// Debugging configuration
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Ensure JSON headers
header('Content-Type: application/json');
header('X-Content-Type-Options: nosniff');

try {
    // Include database connection
    include '../db.php'; // Ensure this file connects correctly using PDO
    
    // Check if POST request has data
    $jsonInput = file_get_contents('php://input');
    $requestData = json_decode($jsonInput, true);

    // Validate input
    if (!isset($requestData['data']) || !is_array($requestData['data'])) {
        echo json_encode(["error" => "Invalid input. 'data' must be an array."]);
        exit;
    }

    $data = $requestData['data'];

    // Prepare SQL transaction
    $pdo->beginTransaction();

    // Prepare SELECT and INSERT queries
    $checkQuery = "SELECT COUNT(*) FROM payroll WHERE payslipno = :payslipno";
    $checkStmt = $pdo->prepare($checkQuery);

    $insertStmt = $pdo->prepare("
    INSERT INTO payroll (
        empid, firstname, mname, surname, department, designation, status, payslipno, 
        dtefrom, dteto, first, second, hour, days, basicpay, allowance, overload, longevity, 
        desc1, other1, desc2, other2, wtax, sss, med, peraa, pagibig, sssloanid, sssloan, 
        peraaloanid, peraaloan, pagibigloanid, pagibigloan, pagibigloanidc, pagibigloanc, 
        caloanid, othersid, others, ca, eo, late, tardiness, nosabsent, absent, 
        otherdeduction1, deduction1, otherdeduction2, deduction2, net, acctno
    ) 
    VALUES (
        :empid, :firstname, :mname, :surname, :department, :designation, :status, :payslipno, 
        :dtefrom, :dteto, :first, :second, :hour, :days, :basicpay, :allowance, :overload, :longevity, 
        :desc1, :other1, :desc2, :other2, :wtax, :sss, :med, :peraa, :pagibig, :sssloanid, :sssloan, 
        :peraaloanid, :peraaloan, :pagibigloanid, :pagibigloan, :pagibigloanidc, :pagibigloanc, 
        :caloanid, :othersid, :others, :ca, :eo, :late, :tardiness, :nosabsent, :absent, 
        :otherdeduction1, :deduction1, :otherdeduction2, :deduction2, :net, :acctno
    );
");

foreach ($data as $row) {
    // Check if payslipno already exists
    $checkStmt->execute([':payslipno' => $row['payslipno']]);
    $exists = $checkStmt->fetchColumn();

    if ($exists) {
        // Skip insertion if payslipno exists
        continue;
    }

    // Insert the row if payslipno does not exist
    $insertStmt->execute([
        ':empid' => $row['empid'],
        ':firstname' => $row['firstname'],
        ':mname' => $row['mname'],
        ':surname' => $row['surname'],
        ':department' => $row['department'],
        ':designation' => $row['designation'],
        ':status' => $row['status'],
        ':payslipno' => $row['payslipno'],
        ':dtefrom' => $row['dtefrom'],
        ':dteto' => $row['dteto'],
        ':first' => $row['first'],
        ':second' => $row['second'],
        ':hour' => $row['hour'],
        ':days' => $row['days'],
        ':basicpay' => $row['basicpay'],
        ':allowance' => $row['allowance'],
        ':overload' => $row['overload'],
        ':longevity' => $row['longevity'],
        ':desc1' => $row['desc1'],
        ':other1' => $row['other1'],
        ':desc2' => $row['desc2'],
        ':other2' => $row['other2'],
        ':wtax' => $row['wtax'],
        ':sss' => $row['sss'],
        ':med' => $row['med'],
        ':peraa' => $row['peraa'],
        ':pagibig' => $row['pagibig'],
        ':sssloanid' => $row['sssloanid'],
        ':sssloan' => $row['sssloan'],
        ':peraaloanid' => $row['peraaloanid'],
        ':peraaloan' => $row['peraaloan'],
        ':pagibigloanid' => $row['pagibigloanid'],
        ':pagibigloan' => $row['pagibigloan'],
        ':pagibigloanidc' => $row['pagibigloanidc'],
        ':pagibigloanc' => $row['pagibigloanc'],
        ':caloanid' => $row['caloanid'],
        ':othersid' => $row['othersid'],
        ':others' => $row['others'],
        ':ca' => $row['ca'],
        ':eo' => $row['eo'],
        ':late' => $row['late'],
        ':tardiness' => $row['tardiness'],
        ':nosabsent' => $row['nosabsent'],
        ':absent' => $row['absent'],
        ':otherdeduction1' => $row['otherdeduction1'],
        ':deduction1' => $row['deduction1'],
        ':otherdeduction2' => $row['otherdeduction2'],
        ':deduction2' => $row['deduction2'],
        ':net' => $row['net'],
        ':acctno' => $row['acctno'],
    ]);
}

    $pdo->commit();

    // Successful response
    echo json_encode(["success" => true, "message" => "Data published successfully"]);
} catch (Exception $e) {
    if ($pdo->inTransaction()) {
        $pdo->rollBack(); // Rollback on error
    }
    echo json_encode(["error" => "Failed to publish data: " . $e->getMessage()]);
}
?>
