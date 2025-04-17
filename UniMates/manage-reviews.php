<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header('Location: admin-login.php');
    exit;
}
include 'db/conn.php';

// Get the search term if it exists
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';

// Get the sort option if it exists
$sort_by = isset($_GET['sort_by']) ? $_GET['sort_by'] : 'submitted_at'; // Default sort by 'submitted_at'
$order = isset($_GET['order']) && $_GET['order'] == 'asc' ? 'asc' : 'desc'; // Default order is descending

// Update the query to filter based on search input and sort option
$query = "SELECT * FROM reviews WHERE 
            (user_email LIKE '%$search%' OR comment LIKE '%$search%')
            ORDER BY $sort_by $order";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Manage Reviews</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container py-5">
<a href="admin.php" class="btn btn-secondary mb-3"><i class="bi bi-arrow-left"></i> Back</a>
    <h2>Manage Reviews</h2>

    <!-- Search Form -->
    <form method="GET" action="manage-reviews.php">
        <div class="mb-3">
            <input type="text" name="search" class="form-control" placeholder="Search by User Email or Comment" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <!-- Sort Options -->
    <form method="GET" action="manage-reviews.php" class="mt-3">
        <div class="mb-3">
            <select name="sort_by" class="form-select" onchange="this.form.submit()">
                <option value="submitted_at" <?= $sort_by == 'submitted_at' ? 'selected' : ''; ?>>Sort by Submitted At</option>
                <option value="rating" <?= $sort_by == 'rating' ? 'selected' : ''; ?>>Sort by Rating</option>
            </select>
            <select name="order" class="form-select mt-2" onchange="this.form.submit()">
                <option value="desc" <?= $order == 'desc' ? 'selected' : ''; ?>>Descending</option>
                <option value="asc" <?= $order == 'asc' ? 'selected' : ''; ?>>Ascending</option>
            </select>
        </div>
    </form>

    <table class="table table-bordered mt-4">
        <thead class="table-light">
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Item ID</th>
                <th>Rating</th>
                <th>Comment</th>
                <th>User Email</th>
                <th>Status</th>
                <th>Submitted At</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <?php while ($row = mysqli_fetch_assoc($result)): ?>
            <tr>
                <td><?= $row['id'] ?></td>
                <td><?= ucfirst($row['type']) ?></td>
                <td><?= $row['item_id'] ?></td>
                <td><?= $row['rating'] ?></td>
                <td><?= $row['comment'] ?></td>
                <td><?= $row['user_email'] ?></td>
                <td>
                    <?php if ($row['status'] === 'pending'): ?>
                        <span class="badge bg-warning text-dark">Pending</span>
                    <?php elseif ($row['status'] === 'approved'): ?>
                        <span class="badge bg-success">Approved</span>
                    <?php else: ?>
                        <span class="badge bg-danger">Rejected</span>
                    <?php endif; ?>
                </td>
                <td><?= $row['submitted_at'] ?></td>
                <td>
                    <?php if ($row['status'] === 'pending'): ?>
                        <a href="db/review-action.php?id=<?= $row['id'] ?>&status=approved" class="btn btn-success btn-sm">Approve</a>
                        <a href="db/review-action.php?id=<?= $row['id'] ?>&status=rejected" class="btn btn-danger btn-sm">Reject</a>
                    <?php else: ?>
                        <em>No actions</em>
                    <?php endif; ?>
                </td>
            </tr>
        <?php endwhile; ?>
        </tbody>
    </table>
</div>

</body>
</html>
