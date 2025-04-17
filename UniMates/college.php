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
                    <li class="nav-item"><a class="nav-link" href="index.php">Contact Us</a></li>
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

    <!-- College Selection Content -->
    <section class="py-5">
        <div class="container">
            <h2 class="mb-4">Choose Your City</h2>
            <form id="cityForm" class="mb-4">
                <div class="d-flex justify-content-start">
                    <!-- City Dropdown -->
                    <select class="form-select w-25 mb-3" id="cityDropdown">
                        <option value="" selected disabled>Select a city</option>
                        <option value="mumbai">Mumbai</option>
                        <option value="delhi">Delhi</option>
                        <option value="bangalore">Bangalore</option>
                    </select>

                    <!-- Show Colleges Button -->
                    <button type="submit" class="btn btn-primary ms-3 mb-3">Show Colleges</button>

                    <!-- Search Bar -->
                    <input type="text" id="searchInput" class="form-control w-50 ms-3 mb-3" placeholder="Search college by name...">

                    <!-- Search Button -->
                    <button type="button" class="btn btn-secondary ms-3 mb-3" id="searchButton">Search</button>
                </div>
            </form>

            <div id="collegeResults">
                <!-- Fetched colleges will appear here -->
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

    <script>
    // Function to fetch colleges based on city and search term
    function fetchColleges(city = '', search = '') {
        let url = `db/get_colleges.php?city=${encodeURIComponent(city)}&search=${encodeURIComponent(search)}`;

        fetch(url)
            .then(response => response.text())
            .then(data => {
                document.getElementById('collegeResults').innerHTML = data;
            })
            .catch(error => console.log(error));
    }

    // Form submit - Fetch colleges when form is submitted
    document.getElementById('cityForm').addEventListener('submit', function (e) {
        e.preventDefault();
        const city = document.getElementById('cityDropdown').value;
        const search = document.getElementById('searchInput').value;
        fetchColleges(city, search);
    });

    // Search button click - Trigger search action
    document.getElementById('searchButton').addEventListener('click', function () {
        const city = document.getElementById('cityDropdown').value;
        const search = document.getElementById('searchInput').value;
        fetchColleges(city, search);
    });

    // Initial load - Fetch all colleges when page loads
    window.onload = function () {
        fetchColleges();
    };
</script>
</body>
</html>
