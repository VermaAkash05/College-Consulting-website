<?php
session_start();
include('db/conn.php');

// Function to safely fetch count
function getCount($conn, $query) {
    $result = mysqli_query($conn, $query);
    if (!$result) return 0;
    $row = mysqli_fetch_assoc($result);
    return $row['total'] ?? 0;
}

$totalColleges = getCount($conn, "SELECT COUNT(*) as total FROM colleges");
$totalHostels  = getCount($conn, "SELECT COUNT(*) as total FROM hostels");
$totalReviews  = getCount($conn, "SELECT COUNT(*) as total FROM reviews");
$totalUsers    = getCount($conn, "SELECT COUNT(*) as total FROM users");

// Colleges by city
$cityData = [];
$cityResult = mysqli_query($conn, "SELECT city, COUNT(*) as total FROM colleges GROUP BY city");
if ($cityResult) {
    while ($row = mysqli_fetch_assoc($cityResult)) {
        $cityData[$row['city']] = $row['total'];
    }
} else {
    echo "Error fetching city data: " . mysqli_error($conn);
}

// Reviews by type
$typeData = [];
$typeResult = mysqli_query($conn, "SELECT type, COUNT(*) as total FROM reviews GROUP BY type");
if ($typeResult) {
    while ($row = mysqli_fetch_assoc($typeResult)) {
        $typeData[$row['type']] = $row['total'];
    }
} else {
    echo "Error fetching review data: " . mysqli_error($conn);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Analytics Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 40px;
            background-color: #f4f4f4;
        }
        .back-link {
            text-decoration: none;
            font-weight: bold;
            margin-bottom: 30px;
            display: inline-block;
        }
        .stats {
            display: flex;
            justify-content: space-around;
            margin-bottom: 40px;
            gap: 20px;
            flex-wrap: wrap;
        }
        .stat-box {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 16px;
            width: 200px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .stat-box h3 {
            margin: 0;
            font-size: 22px;
            color: #333;
        }
        .stat-box p {
            margin-top: 8px;
            font-size: 16px;
            color: #777;
        }
        .chart-container {
            width: 80%;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 16px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 40px;
        }
        canvas {
            margin-top: 20px;
        }
        #reviewChart {
            max-width: 400px;
            margin: 0 auto;
        }
    </style>
</head>
<body>

<a href="admin.php" class="back-link">← Back to Admin Panel</a>

<div class="stats">
    <div class="stat-box">
        <h3><?php echo $totalColleges; ?></h3>
        <p>Total Colleges</p>
    </div>
    <div class="stat-box">
        <h3><?php echo $totalHostels; ?></h3>
        <p>Total Hostels/PGs</p>
    </div>
    <div class="stat-box">
        <h3><?php echo $totalReviews; ?></h3>
        <p>Total Reviews</p>
    </div>
    <div class="stat-box">
        <h3><?php echo $totalUsers; ?></h3>
        <p>Total Users</p>
    </div>
</div>

<div class="chart-container">
    <h2>Colleges by City</h2>
    <canvas id="cityChart"></canvas>
</div>

<div class="chart-container">
    <h2>Reviews by Type</h2>
    <canvas id="reviewChart"></canvas>
</div>

<script>
    const cityData = <?php echo json_encode($cityData); ?>;
    const typeData = <?php echo json_encode($typeData); ?>;

    const ctx1 = document.getElementById('cityChart').getContext('2d');
    new Chart(ctx1, {
        type: 'bar',
        data: {
            labels: Object.keys(cityData),
            datasets: [{
                label: 'Colleges',
                data: Object.values(cityData),
                backgroundColor: 'rgba(54, 162, 235, 0.6)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1,
                borderRadius: 10
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { display: false }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: { stepSize: 1 }
                }
            }
        }
    });

    const ctx2 = document.getElementById('reviewChart').getContext('2d');
    new Chart(ctx2, {
        type: 'pie',
        data: {
            labels: Object.keys(typeData),
            datasets: [{
                data: Object.values(typeData),
                backgroundColor: ['#4CAF50', '#FF6384', '#FFCE56', '#36A2EB'],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true
        }
    });
</script>

</body>
</html>
