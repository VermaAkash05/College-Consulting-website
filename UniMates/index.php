<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UniMates - Find Hostels & PGs</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.php">UniMates</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
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
                            <li class="nav-item"><a class="nav-link" href="javascript:void(0);" id="admin-link">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Hero Section -->
    <section class="hero" id="hero">
        <div class="container text-center">
            <h1>Find Your Perfect Hostel or PG</h1>
            <p>Search for budget-friendly hostels & PGs near your college.</p>
            <div class="d-flex justify-content-center gap-3 mt-4 flex-wrap">
                <a href="college.php" class="btn btn-success btn-lg px-4">Search College</a>
                <a href="hos-pgs.php" class="btn btn-success btn-lg px-4">Search Hostel/PGs</a>
            </div>
        </div>
    </section>

    <section class="city-section">
        <div class="container">
            <h2>Our University</h2>
            <div class="row">
                <div class="col-md-4 city-card">
                    <img src="img/mumbai.jpg" alt="Mumbai"> </a>
                    <h3>Mumbai</h3>
                </div>
                <div class="col-md-4 city-card">
                    <img src="img/delhi.avif" alt="Delhi"></a>
                    <h3>Delhi</h3>
                </div>
                <div class="col-md-4 city-card">
                    <img src="img/bangalore.jpg" alt="Bangalore"> </a>
                    <h3>Bangalore</h3>
                </div>
            </div>
        </div>
    </section>

    <div class="divider"></div>

    <section class="city-section">
        <div class="container">
            <h2>Our Hostel/PGs</h2>
            <div class="row">
                <div class="col-md-4 city-card">

                    </a> <img src="img/mum-host.webp" href="hos-pgs.php?city=Mumbai" alt="Mumbai">
                    <h3>Mumbai</h3>
                    </a>
                </div>
                <div class="col-md-4 city-card">

                    <img src="img/delhi-host.jpg" alt="Delhi">
                    <h3>Delhi</h3>
                    </a>
                </div>
                <div class="col-md-4 city-card">

                    <img src="img/hos4.jpeg" alt="Bangalore">
                    <h3>Bangalore</h3>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="about-section" id="about">
        <img src="img/about-1.jpg" alt="About UniMates">
        <div class="about-content">
            <h2>About UniMates</h2>
            <p>UniMates is an innovative platform designed to help students seamlessly transition to a new city for
                their education. We understand the struggles of finding affordable and comfortable accommodation near
                universities, and our goal is to make this process as smooth as possible. UniMates connects students
                with the best hostels and PGs near their colleges, ensuring affordability, safety, and convenience.</p>
            <p>Our platform provides an extensive database of verified accommodations with detailed descriptions,
                images, pricing, and student reviews. Users can filter results based on their budget, proximity to their
                college, and additional amenities such as Wi-Fi, food services, and security. Our intuitive search
                functionality makes it easy for students to find the perfect living space that meets their needs.</p>
            <p>Beyond accommodations, UniMates also provides resources on student life, budgeting tips, and city guides
                to help students settle in comfortably. Our mission is to create a hassle-free experience so students
                can focus on their studies while we take care of their living arrangements. With UniMates, students can
                confidently move to a new city knowing they have a reliable support system in place.</p>
        </div>
    </section>

    <section class="contact-section" id="contact">
    <div class="container">
        <h2>Contact Us</h2>
        <p>Have questions? Get in touch with us!</p>
        <!-- Change the action path to the correct file location -->
        <form class="contact-form" method="POST" action="db/contact.php" id="contactForm">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>
</section>

<script>
    document.getElementById('contactForm').addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent the form from submitting normally

        // You can make an AJAX request here to send the form data (optional)
        // For now, I'm showing a success message using SweetAlert

        Swal.fire({
            icon: 'success',
            title: 'Message Sent!',
            text: 'Thank you for reaching out. We will get back to you soon.',
            confirmButtonColor: '#28a745',
            timer: 3000, // Auto close after 3 seconds
            timerProgressBar: true
        }).then(function() {
            // After the popup closes, you can redirect or clear the form if needed
            document.getElementById('contactForm').reset(); // Clear the form
        });
    });
</script>


<!-- Contact Success Modal -->

    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 UniMates. All Rights Reserved.</p>
            <p>
                <a href="#">Privacy Policy</a> |
                <a href="#">Terms of Service</a> |
                <a href="#contact">Contact</a>
            </p>
        </div>
    </footer>
    
    <!-- Login Form -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="db/login.php" method="POST">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" name="email" class="form-control" id="email" placeholder="Enter email">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" id="password"
                                placeholder="Enter password">
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Sign Up Form -->

    <div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="signupModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="signupModalLabel">Sign Up</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                     

                    <form action="db/signup.php" method="POST">
                        <input type="text" name="name" class="form-control mb-3" placeholder="Full Name" required>
                        <input type="email" name="email" class="form-control mb-3" placeholder="Email" required>
                        <input type="password" name="password" class="form-control mb-3" placeholder="Password"
                            required>
                        <button class="btn btn-success w-100">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

<!-- Admin Login Modal (Popup) -->
<div class="modal fade" id="adminModal" tabindex="-1" aria-labelledby="adminModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="adminModalLabel">Admin Login</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="db/admin-login.php" method="POST">
          <div class="mb-3">
          <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" name="username" id="username" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="password" id="password" required>
          </div>
          <button type="submit" name="submit" class="btn btn-primary w-100">Login</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
  // Open Admin Login Modal on clicking Admin link
  document.getElementById('admin-link').addEventListener('click', function () {
    var myModal = new bootstrap.Modal(document.getElementById('adminModal'), {
      keyboard: false
    });
    myModal.show();
  });
</script>



    <!-- sign up button -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Smooth scrolling for navbar links
            document.querySelectorAll("a.nav-link").forEach(link => {
                link.addEventListener("click", function (event) {
                    if (this.getAttribute("href").startsWith("#")) {
                        event.preventDefault();
                        let targetId = this.getAttribute("href").substring(1);
                        let targetElement = document.getElementById(targetId);
                        if (targetElement) {
                            window.scrollTo({
                                top: targetElement.offsetTop - 70, // Adjust for navbar height
                                behavior: "smooth"
                            });
                        }
                    }
                });
            });

            // Background image transition for hero section
            let images = ['img/hero.jpg', 'img/hero-2.jpeg', 'img/hero-3.jpeg', 'img/hero-4.webp'];
            let currentImageIndex = 0;

            function changeBackground() {
                currentImageIndex = (currentImageIndex + 1) % images.length;
                document.querySelector(".hero").style.backgroundImage = `url('${images[currentImageIndex]}')`;
            }

            setInterval(changeBackground, 2000);

            // Login Modal Handling
            let loginModal = new bootstrap.Modal(document.getElementById("loginModal"));

            document.querySelector("a[data-bs-target='#loginModal']").addEventListener("click", function (event) {
                event.preventDefault();
                loginModal.show();
            });
        });
    </script>
</body>

</html>

<!-- Signup button php logic -->


if (isset($_SESSION['success'])) {
    echo "<script>
    document.addEventListener('DOMContentLoaded', function() {
        Swal.fire({
            icon: 'success',
            title: 'Success!',
            text: '" . $_SESSION['success'] . "',
            confirmButtonColor: '#28a745',
            timer: 3000,
            timerProgressBar: true
        });
    });
    </script>";
    <!-- unset($_SESSION['success']); -->
}

if (isset($_SESSION['error'])) {
    echo "<script>
    document.addEventListener('DOMContentLoaded', function() {
        Swal.fire({
            icon: 'error',
            title: 'Error!',
            text: '" . $_SESSION['error'] . "',
            confirmButtonColor: '#dc3545',
            timer: 4000,
            timerProgressBar: true
        });
    });
    </script>";
    <!-- unset($_SESSION['error']); -->
}
?>

<!-- Login button js -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const urlParams = new URLSearchParams(window.location.search);
        const modal = urlParams.get('modal');

        <?php if (isset($_SESSION['login_status']) && isset($_SESSION['login_message'])): ?>
            const status = '<?= $_SESSION['login_status'] ?>';
            const message = '<?= $_SESSION['login_message'] ?>';

            Swal.fire({
                icon: status,
                title: status === 'success' ? 'Logged In!' : 'Login Failed',
                text: message,
                confirmButtonColor: status === 'success' ? '#28a745' : '#dc3545',
                timer: 3000,
                timerProgressBar: true,
            });

            // Reopen modal if error
            if (status === 'error' && modal === 'login') {
                const loginModal = new bootstrap.Modal(document.getElementById('loginModal'));
                loginModal.show();
            }

            // <?php
            // unset($_SESSION['login_status']);
            // unset($_SESSION['login_message']);
            // ?>
        <?php endif; ?>
    });
</script>

<!-- script for signup popup -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const urlParams = new URLSearchParams(window.location.search);
        const modal = urlParams.get('modal');

        <?php if (isset($_SESSION['signup_status']) && isset($_SESSION['signup_message'])): ?>
            const status = '<?= $_SESSION['signup_status'] ?>';
            const message = '<?= $_SESSION['signup_message'] ?>';

            Swal.fire({
                icon: status,
                title: status === 'success' ? 'Registered!' : 'Signup Failed',
                text: message,
                confirmButtonColor: status === 'success' ? '#28a745' : '#dc3545',
                timer: 3000,
                timerProgressBar: true,
            });

            // Reopen modal if error
            if (status === 'error' && modal === 'signup') {
                const signupModal = new bootstrap.Modal(document.getElementById('signupModal'));
                signupModal.show();
            }

            // <?php
            // unset($_SESSION['signup_status']);
            // unset($_SESSION['signup_message']);
            // ?>
        <?php endif; ?>
    });
</script>

<!-- feedback have you Question wale ke liye hai script -->


