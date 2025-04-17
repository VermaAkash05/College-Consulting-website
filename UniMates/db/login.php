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
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            $_SESSION['login_user'] = $row['name'];
            $_SESSION['login_status'] = 'success';
            $_SESSION['login_message'] = 'Login Successful!';
            header("Location: ../index.php?modal=login");
            exit();
        } else {
            $_SESSION['login_status'] = 'error';
            $_SESSION['login_message'] = 'Invalid password!';
            header("Location: ../index.php?modal=login");
            exit();
        }
    } else {
        $_SESSION['login_status'] = 'error';
        $_SESSION['login_message'] = 'No user found with that email!';
        header("Location: ../index.php?modal=login");
        exit();
    }

    $conn->close();
}
?>
