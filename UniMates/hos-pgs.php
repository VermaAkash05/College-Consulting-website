<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colleges - UniMates</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <!-- Navbar -->
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
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hostel Search Section -->
    <section class="py-5">
        <div class="container">
            <h2 class="mb-4">Choose Your City</h2>

            <form id="cityForm" class="mb-5">
                <div class="row g-3 align-items-center">
                    <!-- Dropdown + Search button -->
                    <div class="col-md-3">
                        <select class="form-select" id="cityDropdown">
                            <option value="" selected disabled>Select a city</option>
                            <option value="mumbai">Mumbai</option>
                            <option value="delhi">Delhi</option>
                            <option value="bangalore">Bangalore</option>
                        </select>
                    </div>
                    <div class="col-md-2 d-grid">
                        <button type="button" class="btn btn-secondary" id="searchButton">Search</button>
                    </div>

                    <!-- Search Bar + Show Hostel/PGs button -->
                    <div class="col-md-5">
                        <input type="text" id="searchInput" class="form-control"
                            placeholder="Search Hostel/PGs by name or address...">
                    </div>
                    <div class="col-md-2 d-grid">
                        <button type="submit" class="btn btn-primary">Show Hostel/PGs</button>
                    </div>
                </div>
            </form>

            <div id="hostelResults">
                <!-- Dynamic content loads here -->
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer bg-dark text-white py-3">
        <div class="container text-center">
            <p>&copy; 2025 UniMates. All Rights Reserved.</p>
            <p>
                <a href="#" class="text-white">Privacy Policy</a> |
                <a href="#" class="text-white">Terms of Service</a> |
                <a href="#contact" class="text-white">Contact</a>
            </p>
        </div>
    </footer>

    <!-- JavaScript -->
    <script>
        // Fetch hostels based on city and search input
        function fetchColleges(city = '', search = '') {
            const url = `db/hostel.php?city=${encodeURIComponent(city)}&search=${encodeURIComponent(search)}`;
            fetch(url)
                .then(res => res.text())
                .then(data => {
                    document.getElementById('hostelResults').innerHTML = data;
                })
                .catch(err => console.log(err));
        }

        // Submit form to fetch filtered hostels
        document.getElementById('cityForm').addEventListener('submit', function (e) {
            e.preventDefault();
            const city = document.getElementById('cityDropdown').value;
            const search = document.getElementById('searchInput').value;
            fetchColleges(city, search); // Fetch filtered hostels
        });

        // Search button click event to fetch hostels by city
        document.getElementById('searchButton').addEventListener('click', function () {
            const city = document.getElementById('cityDropdown').value;
            const search = document.getElementById('searchInput').value;
            fetchColleges(city, search); // Fetch filtered hostels
        });

        // Load hostels on page load
        window.onload = () => fetchColleges();

        // Image toggle on "View images" button
        let currentVisibleImage = null;

        document.addEventListener('click', function (e) {
            if (e.target.classList.contains('cycle-btn')) {
                const btn = e.target;
                const img = btn.previousElementSibling;

                if (img.style.display === 'block') {
                    img.style.display = 'none';
                    currentVisibleImage = null;
                } else {
                    if (currentVisibleImage && currentVisibleImage !== img) {
                        currentVisibleImage.style.display = 'none';
                    }
                    img.style.display = 'block';
                    currentVisibleImage = img;
                }
            }
        });
    </script>

</body>

</html>
