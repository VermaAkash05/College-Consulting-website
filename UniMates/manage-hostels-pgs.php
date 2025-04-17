<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header('Location: admin-login.php');
    exit;
}

include 'db/conn.php';

// Handle Add Hostel/PG
if (isset($_POST['add_hostel'])) {
    $name = $_POST['name'];
    $city = $_POST['city'];
    $address = $_POST['address'];
    $contact_number = $_POST['contact_number'];
    $price_range = $_POST['price_range'];
    $facilities = $_POST['facilities'];
    $rating = $_POST['rating'];

    $query = "INSERT INTO hostels (name, city, address, contact_number, price_range, facilities, rating) 
              VALUES ('$name', '$city', '$address', '$contact_number', '$price_range', '$facilities', '$rating')";
    if (!mysqli_query($conn, $query)) {
        die('Query failed: ' . mysqli_error($conn));
    }
}

// Delete Hostel/PG
if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];
    $query = "DELETE FROM hostels WHERE id = '$delete_id'";
    if (!mysqli_query($conn, $query)) {
        die('Query failed: ' . mysqli_error($conn));
    }
}

// Search & Pagination Setup
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
$where = $search ? "WHERE name LIKE '%$search%'" : '';

// Rating filter
if (isset($_GET['rating'])) {
    $rating = $_GET['rating'];
    $where .= $where ? " AND rating = '$rating'" : "WHERE rating = '$rating'";
}

$limit = 10;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;

// Fetch data
$query = "SELECT id, name, city, address, contact_number, price_range, facilities, rating FROM hostels $where LIMIT $limit OFFSET $offset";
$result = mysqli_query($conn, $query);

// Total for pagination
$total_query = "SELECT COUNT(*) FROM hostels $where";
$total_result = mysqli_query($conn, $total_query);
$total_rows = mysqli_fetch_array($total_result)[0];
$total_pages = ceil($total_rows / $limit);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Manage Hostels/PGs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-5">
<a href="admin.php" class="btn btn-secondary mb-3"><i class="bi bi-arrow-left"></i> Back</a>
    <h2 class="mb-4">Manage Hostels/PGs</h2>

    <!-- Search Form -->
    <form method="GET" class="mb-4 row">
        <div class="col-md-10">
            <input type="text" name="search" placeholder="Search by name" class="form-control" value="<?= $search ?>">
        </div>
        <div class="col-md-2">
            <button type="submit" class="btn btn-primary w-100">Search</button>
        </div>
    </form>

    <!-- Rating Filter -->
    <form method="GET" class="mb-4 row">
        <div class="col-md-10">
            <select name="rating" class="form-select" aria-label="Filter by rating">
                <option value="">Filter by Rating</option>
                <option value="4.0" <?= isset($_GET['rating']) && $_GET['rating'] == '4.0' ? 'selected' : '' ?>>4.0</option>
                <option value="4.1" <?= isset($_GET['rating']) && $_GET['rating'] == '4.1' ? 'selected' : '' ?>>4.1</option>
                <option value="4.2" <?= isset($_GET['rating']) && $_GET['rating'] == '4.2' ? 'selected' : '' ?>>4.2</option>
                <option value="4.3" <?= isset($_GET['rating']) && $_GET['rating'] == '4.3' ? 'selected' : '' ?>>4.3</option>
                <option value="4.4" <?= isset($_GET['rating']) && $_GET['rating'] == '4.4' ? 'selected' : '' ?>>4.4</option>
                <option value="4.5" <?= isset($_GET['rating']) && $_GET['rating'] == '4.5' ? 'selected' : '' ?>>4.5</option>
                <option value="4.6" <?= isset($_GET['rating']) && $_GET['rating'] == '4.6' ? 'selected' : '' ?>>4.6</option>
                <option value="4.7" <?= isset($_GET['rating']) && $_GET['rating'] == '4.7' ? 'selected' : '' ?>>4.7</option>
                <option value="4.8" <?= isset($_GET['rating']) && $_GET['rating'] == '4.8' ? 'selected' : '' ?>>4.8</option>
                <option value="4.9" <?= isset($_GET['rating']) && $_GET['rating'] == '4.9' ? 'selected' : '' ?>>4.9</option>
                <option value="5.0" <?= isset($_GET['rating']) && $_GET['rating'] == '5.0' ? 'selected' : '' ?>>5.0</option>
            </select>
        </div>
        <div class="col-md-2">
            <button type="submit" class="btn btn-secondary w-100">Filter</button>
        </div>
    </form>

    <!-- Listing Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-light">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>City</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Price Range</th>
                <th>Facilities</th>
                <th>Rating</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php if (mysqli_num_rows($result) > 0): ?>
                <?php while ($row = mysqli_fetch_assoc($result)): ?>
                    <tr>
                        <td><?= $row['id'] ?></td>
                        <td><?= $row['name'] ?></td>
                        <td><?= $row['city'] ?></td>
                        <td><?= $row['address'] ?></td>
                        <td><?= $row['contact_number'] ?></td>
                        <td><?= $row['price_range'] ?></td>
                        <td><?= $row['facilities'] ?></td>
                        <td><?= $row['rating'] ?>/5</td>
                        <td>
                            <a href="?delete_id=<?= $row['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Delete this hostel/PG?')">Delete</a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            <?php else: ?>
                <tr><td colspan="9" class="text-center">No records found.</td></tr>
            <?php endif; ?>
        </tbody>
    </table>

    <!-- Pagination -->
    <nav>
        <ul class="pagination justify-content-center">
            <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                <li class="page-item <?= $page == $i ? 'active' : '' ?>">
                    <a class="page-link" href="?<?= http_build_query(array_merge($_GET, ['page' => $i])) ?>"><?= $i ?></a>
                </li>
            <?php endfor; ?>
        </ul>
    </nav>

    <!-- Add Hostel/PG Form -->
    <h3 class="mt-5">Add Hostel/PG</h3>
    <form method="POST" class="mb-5">
        <div class="mb-3">
            <label for="name" class="form-label">Hostel/PG Name</label>
            <input type="text" class="form-control" name="name" required>
        </div>
        <div class="mb-3">
            <label for="city" class="form-label">City</label>
            <input type="text" class="form-control" name="city" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <textarea class="form-control" name="address" required></textarea>
        </div>
        <div class="mb-3">
            <label for="contact_number" class="form-label">Contact Number</label>
            <input type="text" class="form-control" name="contact_number" required>
        </div>
        <div class="mb-3">
            <label for="price_range" class="form-label">Price Range</label>
            <input type="text" class="form-control" name="price_range" required>
        </div>
        <div class="mb-3">
            <label for="facilities" class="form-label">Facilities</label>
            <textarea class="form-control" name="facilities" required></textarea>
        </div>
        <div class="mb-3">
            <label for="rating" class="form-label">Rating (1-5)</label>
            <input type="number" class="form-control" name="rating" min="1" max="5" step="0.1" required>
        </div>
        <button type="submit" name="add_hostel" class="btn btn-success w-100">Add Hostel/PG</button>
    </form>
</div>
</body>
</html>
