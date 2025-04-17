<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "unimate";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$city = isset($_GET['city']) ? trim($_GET['city']) : '';
$search = isset($_GET['search']) ? trim($_GET['search']) : '';

$sql = "SELECT MIN(id) as id, name, city, address, contact_number, website, rating, fees, courses 
        FROM colleges WHERE 1";

// City filter (dropdown)
if (!empty($city)) {
    $sql .= " AND LOWER(city) LIKE '%" . strtolower($city) . "%'";
}

// Search filter (input box)
if (!empty($search)) {
    $search = strtolower($search);
    $sql .= " AND (
        LOWER(name) LIKE '%$search%' OR 
        LOWER(city) LIKE '%$search%' OR 
        LOWER(courses) LIKE '%$search%' OR 
        LOWER(address) LIKE '%$search%'
    )";
}

// Group by name, city, and address to get the entry with the smallest ID
$sql .= " GROUP BY name, city, address";

// Limit the number of results to 80
$sql .= " LIMIT 80";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<div class='row'>";
    while ($row = $result->fetch_assoc()) {
        echo "<div class='col-md-6 mb-4'>";
        echo "<div class='card h-100'>";
        echo "<div class='card-body'>";
        echo "<h5 class='card-title'>" . htmlspecialchars($row['name']) . "</h5>";
        echo "<p class='card-text'><strong>City:</strong> " . htmlspecialchars($row['city']) . "</p>";
        echo "<p class='card-text'><strong>Address:</strong> " . htmlspecialchars($row['address']) . "</p>";
        echo "<p class='card-text'><strong>Contact:</strong> " . htmlspecialchars($row['contact_number']) . "</p>";
        echo "<p class='card-text'><strong>Website:</strong> <a href='" . htmlspecialchars($row['website']) . "' target='_blank'>" . htmlspecialchars($row['website']) . "</a></p>";
        echo "<p class='card-text'><strong>Rating:</strong> " . htmlspecialchars($row['rating']) . " / 5</p>";
        echo "<p class='card-text'><strong>Fees:</strong> ₹" . htmlspecialchars($row['fees']) . "</p>";
        echo "<p class='card-text'><strong>Courses:</strong> " . htmlspecialchars($row['courses']) . "</p>";
        echo "</div></div></div>";
    }
    echo "</div>";
} else {
    echo "<div class='alert alert-warning'>No colleges found matching your search.</div>";
}

$conn->close();
?>
