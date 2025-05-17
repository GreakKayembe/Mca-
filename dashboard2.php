<?php
// Connexion à la base de données
require_once 'config.php';

session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

//inclusion de l'entete
include 'header_dashboard.php';



// Requête pour compter les membres par sexe
$sql_sexe = "SELECT sexe, COUNT(*) AS total FROM membres GROUP BY sexe";
$result_sexe = mysqli_query($conn, $sql_sexe);
$total_hommes = $total_femmes = 0;
while ($row = mysqli_fetch_assoc($result_sexe)) {
    if ($row['sexe'] == 'Homme') $total_hommes = $row['total'];
    if ($row['sexe'] == 'Femme') $total_femmes = $row['total'];
}

// Requête pour compter les membres par province
$sql_province = "SELECT province_origine, COUNT(*) AS total FROM membres GROUP BY province_origine";
$result_province = mysqli_query($conn, $sql_province);
$total_provinces = mysqli_num_rows($result_province);

// Requête pour compter les membres adhérés par année
$sql_annee = "SELECT YEAR(date_inscription) AS annee, COUNT(*) AS total FROM membres GROUP BY annee";
$result_annee = mysqli_query($conn, $sql_annee);
$total_par_annee = mysqli_num_rows($result_annee);

// Requête pour compter les membres par fédération
$sql_federation = "SELECT federation, COUNT(*) AS total FROM membres GROUP BY federation";
$result_federation = mysqli_query($conn, $sql_federation);
$total_federations = mysqli_num_rows($result_federation);

// Requête pour compter les actualités publiées
$sql_actualites = "SELECT COUNT(*) AS total FROM actualites";
$result_actualites = mysqli_query($conn, $sql_actualites);
$total_actualites = mysqli_fetch_assoc($result_actualites)['total'];
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tableau de Bord</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2 class="mb-4">Tableau de Bord 2</h2>
    
    <div class="row">
        <!-- Total des membres par sexe -->
        <div class="col-md-4">
            <div class="card text-white bg-primary mb-3">
                <div class="card-header">Total des Membres</div>
                <div class="card-body">
                    <h5 class="card-title">Hommes: <?= $total_hommes ?></h5>
                    <h5 class="card-title">Femmes: <?= $total_femmes ?></h5>
                </div>
            </div>
        </div>

        <!-- Total des membres par province -->
        <div class="col-md-4">
            <div class="card text-white bg-success mb-3">
                <div class="card-header">Total des Provinces</div>
                <div class="card-body">
                    <h5 class="card-title"><?= $total_provinces ?> Provinces</h5>
                </div>
            </div>
        </div>

        <!-- Total des membres par année -->
        <div class="col-md-4">
            <div class="card text-white bg-warning mb-3">
                <div class="card-header">Membres Adhérés par Année</div>
                <div class="card-body">
                    <h5 class="card-title"><?= $total_par_annee ?> Années enregistrées</h5>
                </div>
            </div>
        </div>

        <!-- Total des membres par fédération -->
        <div class="col-md-4">
            <div class="card text-white bg-danger mb-3">
                <div class="card-header">Membres par Fédération</div>
                <div class="card-body">
                    <h5 class="card-title"><?= $total_federations ?> Fédérations</h5>
                </div>
            </div>
        </div>

        <!-- Total des actualités publiées -->
        <div class="col-md-4">
            <div class="card text-white bg-info mb-3">
                <div class="card-header">Total des Actualités</div>
                <div class="card-body">
                    <h5 class="card-title"><?= $total_actualites ?> Actualités</h5>
                </div>
            </div>
        </div>

        <!-- Prise de décision par IA -->
        <div class="col-md-4">
            <div class="card text-dark bg-light mb-3">
                <div class="card-header">Tendances d'Adhésion (IA)</div>
                <div class="card-body">
                    <h5 class="card-title">
                        <?php
                        // Simulation de prise de décision par IA (ChatGPT)
                        if ($total_hommes > $total_femmes) {
                            echo "Les hommes adhèrent plus que les femmes.";
                        } elseif ($total_femmes > $total_hommes) {
                            echo "Les femmes adhèrent plus que les hommes.";
                        } else {
                            echo "Le taux d'adhésion est équilibré.";
                        }
                        ?>
                    </h5>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
