<?php
session_start();
include 'db/conn.php';

$colleges = mysqli_query($conn, "SELECT id, name FROM college");
$hostels  = mysqli_query($conn, "SELECT id, name FROM hostel");

$status = $_SESSION['status'] ?? null;
$message = $_SESSION['message'] ?? null;

unset($_SESSION['status']);
unset($_SESSION['message']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Submit Review</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.php">UniMates</a>
        <div class="collapse navbar-collapse">
        <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="college.php">Colleges</a></li>
                    <li class="nav-item"><a class="nav-link" href="hos-pgs.php">Hostels/PGs</a></li>
                    <li class="nav-item"><a class="nav-link" href="review.php">Review</a></li> 
                    <li class="nav-item"><a class="nav-link btn-login" href="#" data-bs-toggle="modal"
                            data-bs-target="#loginModal">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" data-bs-toggle="modal"
                            data-bs-target="#signupModal">Sign Up</a></li>
                </ul>
        </div>
    </div>
</nav>

<!-- Review Form -->
<div class="container py-5">
    <h2 class="mb-4 text-center">Submit Your Review</h2>

    <form action="db/submit_review.php" method="POST" class="mx-auto bg-white p-4 rounded shadow" style="max-width:600px;">
        <div class="mb-3">
            <label for="type" class="form-label">Select Type</label>
            <select name="type" id="type" class="form-select" required>
                <option value="">Choose...</option>
                <option value="college">College</option>
                <option value="hostel">Hostel/PG</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="item_name" class="form-label">Name</label>
            <input name="item_name" id="item_name" class="form-control" placeholder="Enter full name..." required>
        </div>

        <div class="mb-3">
            <label for="rating" class="form-label">Your Rating</label>
            <select name="rating" id="rating" class="form-select" required>
                <option value="">Choose...</option>
                <option value="5">⭐⭐⭐⭐⭐</option>
                <option value="4">⭐⭐⭐⭐</option>
                <option value="3">⭐⭐⭐</option>
                <option value="2">⭐⭐</option>
                <option value="1">⭐</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="comment" class="form-label">Your Review</label>
            <textarea name="comment" id="comment" class="form-control" rows="4" maxlength="500" required></textarea>
        </div>

        <div class="mb-3">
            <label for="user_email" class="form-label">Your Email (optional)</label>
            <input type="email" name="user_email" id="user_email" class="form-control">
        </div>

        <button type="submit" class="btn btn-primary w-100">Submit Review</button>
    </form>
</div>

<!-- Footer -->
<footer class="bg-dark text-light text-center py-3 mt-5">
    <p class="mb-0">© <?= date("Y") ?> UniMates. All rights reserved.</p>
</footer>

<!-- SweetAlert -->
<script>
    <?php if ($status && $message): ?>
        Swal.fire({
            icon: '<?= $status === "success" ? "success" : "error" ?>',
            title: '<?= $status === "success" ? "Success" : "Oops!" ?>',
            text: '<?= $message ?>',
            confirmButtonColor: '#3085d6'
        });
    <?php endif; ?>
</script>

</body>
</html>
