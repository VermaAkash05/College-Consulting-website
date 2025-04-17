<?php
include 'db/conn.php';

if (isset($_GET['id']) && isset($_GET['status'])) {
    $id = intval($_GET['id']);
    $status = $_GET['status'];

    // Validating allowed statuses
    if (!in_array($status, ['approved', 'rejected'])) {
        die("Invalid status value.");
    }

    $update = "UPDATE reviews SET status = '$status' WHERE id = $id";
    if (mysqli_query($conn, $update)) {
        header("Location: manage-reviews.php?msg=updated");
        exit;
    } else {
        die("Failed to update review status.");
    }
} else {
    die("Invalid request.");
}
?>
