<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "unimate";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password_raw = $_POST['password'];

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $_SESSION['signup_status'] = 'error';
        $_SESSION['signup_message'] = 'Invalid email format!';
        header("Location: ../index.php?modal=signup");
        exit();
    }

    if (strlen($password_raw) < 6) {
        $_SESSION['signup_status'] = 'error';
        $_SESSION['signup_message'] = 'Password must be at least 6 characters long!';
        header("Location: ../index.php?modal=signup");
        exit();
    }

    $check_email_sql = "SELECT * FROM users WHERE email = '$email'";
    $result = $conn->query($check_email_sql);
    if ($result->num_rows > 0) {
        $_SESSION['signup_status'] = 'error';
        $_SESSION['signup_message'] = 'Email is already registered!';
        header("Location: ../index.php?modal=signup");
        exit();
    }

    $password_hashed = password_hash($password_raw, PASSWORD_DEFAULT);
    $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password_hashed')";

    if ($conn->query($sql) === TRUE) {
        $_SESSION['signup_status'] = 'success';
        $_SESSION['signup_message'] = 'Sign Up Successful! You can now log in.';
        header("Location: ../index.php?modal=signup");
        exit();
    } else {
        $_SESSION['signup_status'] = 'error';
        $_SESSION['signup_message'] = 'Something went wrong. Please try again.';
        header("Location: ../index.php?modal=signup");
        exit();
    }

    $conn->close();
}
?>
