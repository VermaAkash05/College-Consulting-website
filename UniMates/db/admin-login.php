<?php
session_start();
include 'conn.php';

if (isset($_POST['submit'])) {
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = $_POST['password'];

    $query = "SELECT * FROM admin_users WHERE username='$username' AND password='$password'";
    $result = mysqli_query($conn, $query);

    if (!$result) {
        die("Query Failed: " . mysqli_error($conn)); // Debugging purpose
    }

    if (mysqli_num_rows($result) === 1) {
        $admin = mysqli_fetch_assoc($result);
        $_SESSION['admin'] = $admin['id'];
        header("Location: ../admin.php");
        exit;
    } else {
        echo "<script>
            alert('Invalid username or password!');
            window.location.href = '../index.php';
        </script>";
        exit;
    }
} else {
    header("Location: ../index.php");
    exit;
}
