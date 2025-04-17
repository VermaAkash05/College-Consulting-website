<?php
// Start session and include the connection file
session_start();
if (!isset($_SESSION['admin'])) {
    header('Location: admin-login.php');
    exit;
}

include 'db/conn.php';

// Handle add college
if (isset($_POST['add_college'])) {
    $name = $_POST['name'];
    $city = $_POST['city'];
    $courses = $_POST['courses'];
    $fees = $_POST['fees'];
    $rating = $_POST['rating'];

    $query = "INSERT INTO colleges (name, city, courses, fees, rating) VALUES ('$name', '$city', '$courses', '$fees', '$rating')";
    mysqli_query($conn, $query);
}

// Handle delete college
if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];
    $query = "DELETE FROM colleges WHERE id = '$delete_id'";
    mysqli_query($conn, $query);
}

// Handle edit college
if (isset($_POST['edit_college'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $city = $_POST['city'];
    $courses = $_POST['courses'];
    $fees = $_POST['fees'];
    $rating = $_POST['rating'];

    $query = "UPDATE colleges SET name = '$name', city = '$city', courses = '$courses', fees = '$fees', rating = '$rating' WHERE id = '$id'";
    mysqli_query($conn, $query);
}

// Filter Colleges by Rating
$rating_filter_query = '';
if (isset($_GET['rating'])) {
    $rating = $_GET['rating'];
    $rating_filter_query = "WHERE rating = '$rating'"; // Filter by the exact rating selected
}

// Search Colleges
$search_query = '';
if (isset($_GET['search'])) {
    $search = $_GET['search'];
    $search_query = "WHERE name LIKE '%$search%'";
}

// Pagination
$limit = 10;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;
$query = "SELECT * FROM colleges $rating_filter_query $search_query LIMIT $limit OFFSET $offset";
$result = mysqli_query($conn, $query);

// Total colleges for pagination
$total_query = "SELECT COUNT(*) FROM colleges $rating_filter_query $search_query";
$total_result = mysqli_query($conn, $total_query);
$total_rows = mysqli_fetch_array($total_result)[0];
$total_pages = ceil($total_rows / $limit);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin College Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container py-5">
<a href="admin.php" class="btn btn-secondary mb-3"><i class="bi bi-arrow-left"></i> Back</a>
    <h2>Manage Colleges</h2>

    <!-- Search Form -->
    <form method="GET" class="mb-3">
        <input type="text" name="search" placeholder="Search by name" class="form-control mb-3" value="<?= isset($_GET['search']) ? $_GET['search'] : '' ?>">
        <button type="submit" class="btn btn-primary w-100">Search</button>
    </form>

    <!-- College Rating Filter -->
    <form method="GET" class="mb-3">
        <select name="rating" class="form-select mb-3">
            <option value="">Select Rating</option>
            <option value="4.10" <?= isset($_GET['rating']) && $_GET['rating'] == '4.10' ? 'selected' : '' ?>>4.10</option>
            <option value="4.20" <?= isset($_GET['rating']) && $_GET['rating'] == '4.20' ? 'selected' : '' ?>>4.20</option>
            <option value="4.30" <?= isset($_GET['rating']) && $_GET['rating'] == '4.30' ? 'selected' : '' ?>>4.30</option>
            <option value="4.40" <?= isset($_GET['rating']) && $_GET['rating'] == '4.40' ? 'selected' : '' ?>>4.40</option>
            <option value="4.50" <?= isset($_GET['rating']) && $_GET['rating'] == '4.50' ? 'selected' : '' ?>>4.50</option>
            <option value="4.60" <?= isset($_GET['rating']) && $_GET['rating'] == '4.60' ? 'selected' : '' ?>>4.60</option>
            <option value="4.70" <?= isset($_GET['rating']) && $_GET['rating'] == '4.70' ? 'selected' : '' ?>>4.70</option>
            <option value="4.80" <?= isset($_GET['rating']) && $_GET['rating'] == '4.80' ? 'selected' : '' ?>>4.80</option>
            <option value="4.90" <?= isset($_GET['rating']) && $_GET['rating'] == '4.90' ? 'selected' : '' ?>>4.90</option>
            <option value="5.00" <?= isset($_GET['rating']) && $_GET['rating'] == '5.00' ? 'selected' : '' ?>>5.00</option>
        </select>
        <button type="submit" class="btn btn-secondary w-100">Filter by Rating</button>
    </form>

    <!-- College Listing Table -->
    <table class="table table-bordered">
        <thead class="table-light">
            <tr>
                <th>Name</th>
                <th>City</th>
                <th>Courses</th>
                <th>Fees</th>
                <th>Rating</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = mysqli_fetch_assoc($result)): ?>
                <tr>
                    <td><?= $row['name'] ?></td>
                    <td><?= $row['city'] ?></td>
                    <td><?= $row['courses'] ?></td>
                    <td><?= $row['fees'] ?></td>
                    <td><?= $row['rating'] ?></td>
                    <td>
                        <a href="edit-college.php?id=<?= $row['id'] ?>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="?delete_id=<?= $row['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this college?')">Delete</a>
                    </td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <!-- Pagination -->
    <nav>
        <ul class="pagination justify-content-center">
            <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                <li class="page-item <?= $page == $i ? 'active' : '' ?>">
                    <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
                </li>
            <?php endfor; ?>
        </ul>
    </nav>

    <!-- Add College Form -->
    <h3>Add College</h3>
    <form method="POST" class="mb-5">
        <div class="mb-3">
            <label for="name" class="form-label">College Name</label>
            <input type="text" class="form-control" name="name" required>
        </div>
        <div class="mb-3">
            <label for="city" class="form-label">City</label>
            <input type="text" class="form-control" name="city" required>
        </div>
        <div class="mb-3">
            <label for="courses" class="form-label">Courses</label>
            <input type="text" class="form-control" name="courses" required>
        </div>
        <div class="mb-3">
            <label for="fees" class="form-label">Fees</label>
            <input type="number" class="form-control" name="fees" required>
        </div>
        <div class="mb-3">
            <label for="rating" class="form-label">Rating</label>
            <input type="number" class="form-control" name="rating" required>
        </div>
        <button type="submit" name="add_college" class="btn btn-success w-100">Add College</button>
    </form>
</div>

</body>
</html>
