<?php
// Start session and include the connection file
session_start();
if (!isset($_SESSION['admin'])) {
    header('Location: admin-login.php');
    exit;
}

include 'db/conn.php';

// Handle delete message
if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];
    $query = "DELETE FROM contact_us WHERE id = '$delete_id'";
    if (!mysqli_query($conn, $query)) {
        die('Query failed: ' . mysqli_error($conn)); // Error handling if query fails
    }
}

// Fetch contact messages
$query = "SELECT id, name, email, message, created_at FROM contact_us";
$result = mysqli_query($conn, $query);

// Error handling for query
if (!$result) {
    die('Query failed: ' . mysqli_error($conn)); // If query fails, display error
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>View Contact Messages</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container py-5">
<a href="admin.php" class="btn btn-secondary mb-3"><i class="bi bi-arrow-left"></i> Back</a>
    <h2>Contact Messages</h2>

    <!-- Messages Listing Table -->
    <table class="table table-bordered">
        <thead class="table-light">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
                <th>Submitted At</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = mysqli_fetch_assoc($result)): ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['name'] ?></td>
                    <td><?= $row['email'] ?></td>
                    <td><?= $row['message'] ?></td>
                    <td><?= $row['created_at'] ?></td>
                    <td>
                        <!-- Delete message option -->
                        <a href="?delete_id=<?= $row['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this message?')">Delete</a>
                    </td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</div>

</body>
</html>
