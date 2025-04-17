<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header('Location: login.php');  // If admin is not logged in, redirect to login page
    exit;
}

include 'db/conn.php';

// Query to fetch admin data if needed
$admin_id = $_SESSION['admin'];
$query = "SELECT * FROM admin_users WHERE id = '$admin_id' LIMIT 1";
$result = mysqli_query($conn, $query);
$admin = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #007bff;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
        }
        .navbar-nav .nav-link:hover {
            color: #ffdd57 !important;
        }
        .card {
            margin-bottom: 20px;
        }
        .card-header {
            background-color: #007bff;
            color: white;
        }
        .list-group-item {
            font-size: 1.1rem;
            padding: 15px;
        }
        .list-group-item:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">UniMates Admin</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Admin Dashboard -->
<div class="container py-5">
    <div class="card">
        <div class="card-header">
            <h3>Welcome, <?php echo htmlspecialchars($admin['username']); ?></h3>
        </div>
        <div class="card-body">
            <p>This is your admin dashboard.</p>

            <!-- Links for managing sections -->
            <div class="list-group">
                <a href="manage-reviews.php" class="list-group-item list-group-item-action">Manage Reviews</a>
                <a href="manage-colleges.php" class="list-group-item list-group-item-action">Manage Colleges</a>
                <a href="manage-hostels-pgs.php" class="list-group-item list-group-item-action">Manage Hostels/PGs</a>
                <a href="manage-users.php" class="list-group-item list-group-item-action">Manage Users</a>
                <a href="view-contact-messages.php" class="list-group-item list-group-item-action">View Contact Messages</a>
                <a href="analytics-dashboard.php" class="list-group-item list-group-item-action">Analytics Dashboard</a>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<div class="container text-center mt-5">
    <footer class="text-muted py-4">
        <p>&copy; 2025 UniMates. All rights reserved.</p>
    </footer>
</div>

</body>
</html>
