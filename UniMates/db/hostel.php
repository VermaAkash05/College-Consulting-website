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

$sql = "SELECT MIN(id) as id, name, city, address, contact_number, price_range, rating, facilities 
        FROM hostels WHERE 1";

// City filter
if (!empty($city)) {
    $sql .= " AND LOWER(city) LIKE '%" . strtolower($city) . "%'";
}

// Search filter (NO 'courses' here)
if (!empty($search)) {
    $search = strtolower($search);
    $sql .= " AND (
        LOWER(name) LIKE '%$search%' OR 
        LOWER(city) LIKE '%$search%' OR 
        LOWER(address) LIKE '%$search%' OR 
        LOWER(facilities) LIKE '%$search%'
    )";
}

$sql .= " GROUP BY name, city, address";
$sql .= " LIMIT 80";

$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    echo "<div class='row'>";
    $index = 1;

    while ($row = $result->fetch_assoc()) {
        $imgNumber = (($index - 1) % 15) + 1;
        $imagePath = "img/hos" . $imgNumber . ".jpeg";

        echo "<div class='col-md-6 mb-4'>";
        echo "<div class='card h-100'>";
        echo "<div class='card-body'>";
        echo "<h5 class='card-title'>" . htmlspecialchars($row['name']) . "</h5>";
        echo "<p class='card-text'><strong>City:</strong> " . htmlspecialchars($row['city']) . "</p>";
        echo "<p class='card-text'><strong>Address:</strong> " . htmlspecialchars($row['address']) . "</p>";
        echo "<p class='card-text'><strong>Contact:</strong> " . htmlspecialchars($row['contact_number']) . "</p>";
        echo "<p class='card-text'><strong>Price Range:</strong> " . htmlspecialchars($row['price_range']) . "</p>";
        echo "<p class='card-text'><strong>Facilities:</strong> " . htmlspecialchars($row['facilities']) . "</p>";
        echo "<p class='card-text'><strong>Rating:</strong> " . htmlspecialchars($row['rating']) . "</p>";

        // Image + View Button
        echo "<img src='$imagePath' class='img-fluid mt-2' style='display:none;' alt='Hostel Image'>";
        echo "<button class='btn btn-success mt-2 cycle-btn'>View images</button>";

        echo "</div></div></div>";
        $index++;
    }

    echo "</div>";
} else {
    echo "<div class='alert alert-warning'>No hostels found matching your search.</div>";
}

$conn->close();
?>
