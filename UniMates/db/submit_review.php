<?php
session_start();
include 'conn.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $type        = $_POST['type'];
    $rating      = mysqli_real_escape_string($conn, $_POST['rating']);
    $comment     = mysqli_real_escape_string($conn, $_POST['comment']);
    $user_email  = mysqli_real_escape_string($conn, $_POST['user_email']);

    if ($type === 'college') {
        $item_id = $_POST['college_id'];
    } elseif ($type === 'hostel') {
        $item_id = $_POST['hostel_id'];
    } else {
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Invalid type selected.';
        header('Location: ../review.php');
        exit;
    }

    $insert = "INSERT INTO reviews (type, item_id, rating, comment, user_email)
               VALUES ('$type', '$item_id', '$rating', '$comment', '$user_email')";

    if (mysqli_query($conn, $insert)) {
        $_SESSION['status'] = 'success';
        $_SESSION['message'] = 'Your review has been submitted successfully!';
    } else {
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Failed to save review. Try again.';
    }

    header('Location: ../review.php');
    exit;
} else {
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Invalid request.';
    header('Location: ../review.php');
    exit;
}
