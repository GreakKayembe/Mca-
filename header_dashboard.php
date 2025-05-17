
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tableau de Bord - Admin</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <script src="assets/js/Jquery.min.js"></script>
   
    <style>
        .navbar {
            background-color: #B2D235; /* Vert pâle */
        }
        .navbar-brand, .nav-link {
            color: #ffffff !important; /* Blanc */
        }
        .nav-link:hover {
            color: #FFD700 !important; /* Jaune pâle */
        }
        .dashboard-container {
            padding: 20px;
        }
        .chart-container {
            width: 100%;
            height: 400px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="dashboard.php">
                <img src="assets/images/logos.jpg" alt="Logo" height="40" class="me-2" style="border-radius:18px;">Admin - MCA
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="logout.php">Déconnexion</a></li>
                </ul>
            </div>
        </div>
    </nav>
