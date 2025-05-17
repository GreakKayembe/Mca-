<?php

include 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

//inclusion de l'entete
include 'header_dashboard.php';



// Récupération des valeurs du filtre
$annee_filtre = isset($_GET['annee']) ? $_GET['annee'] : '';
$province_filtre = isset($_GET['province']) ? $_GET['province'] : '';

// Requête pour les années disponibles
$sql_annees = "SELECT DISTINCT YEAR(date_inscription) AS annee FROM membres ORDER BY annee DESC";
$result_annees = mysqli_query($conn, $sql_annees);

// Requête pour les provinces disponibles
$sql_provinces = "SELECT DISTINCT province_origine FROM membres ORDER BY province_origine";
$result_provinces = mysqli_query($conn, $sql_provinces);

// Requête pour compter les membres selon le filtre
$sql_membres = "SELECT COUNT(*) AS total FROM membres WHERE 1";

if ($annee_filtre != '') {
    $sql_membres .= " AND YEAR(date_inscription) = '$annee_filtre'";
}
if ($province_filtre != '') {
    $sql_membres .= " AND province_origine = '$province_filtre'";
}

$result_membres = mysqli_query($conn, $sql_membres);
$total_membres = mysqli_fetch_assoc($result_membres)['total'];
?>


<div class="container mt-4">
    <h2 class="mb-4" style="text-align:center;">Tableau de Bord principal</h2>
       <!-- Liens vers les gestions -->
       <div class="col-md-4">
                <div class="list-group">
                    <a href="gestion_actualites.php" class="list-group-item list-group-item-action">Gestion des Actualités</a>
                    <a href="gestion_historique.php" class="list-group-item list-group-item-action">Gestion de l'historique</a>
                    <a href="gestion_membres.php" class="list-group-item list-group-item-action">Gestion des Membres</a>
                    <a href="gestion_jeunesse.php" class="list-group-item list-group-item-action">Gestion de la jeunesse</a>
                    <a href="gestion_femmes.php" class="list-group-item list-group-item-action">Gestion des femmes</a>
                    <a href="gestion_diasporas.php" class="list-group-item list-group-item-action">Gestion de la diaspora</a>
                    <a href="gestion_cadres.php" class="list-group-item list-group-item-action">Gestion des cadres</a>
                    <a href="gestion_news_provinces.php" class="list-group-item list-group-item-action">Gestion des News de Provinces</a>
                    <a href="gestion_documents.php" class="list-group-item list-group-item-action">Gestion des Documents</a>
                    <a href="gestion_medias.php" class="list-group-item list-group-item-action">Gestion du Mèdiathèque</a>
                    <a href="gestion_utilisateurs.php" class="list-group-item list-group-item-action">Gestion des utilisateurs</a>
                </div>
            </div>
            <p>

            </p>

    <!-- Formulaire de filtrage -->
    <form method="GET" action="dashboard.php" class="row g-3">
        <div class="col-md-4">
            <select name="annee" class="form-select">
                <option value="">Toutes les années</option>
                <?php while ($row = mysqli_fetch_assoc($result_annees)) : ?>
                    <option value="<?= $row['annee'] ?>" <?= ($row['annee'] == $annee_filtre) ? 'selected' : '' ?>>
                        <?= $row['annee'] ?>
                    </option>
                <?php endwhile; ?>
            </select>
        </div>

        <div class="col-md-4">
            <select name="province" class="form-select">
                <option value="">Toutes les provinces</option>
                <?php while ($row = mysqli_fetch_assoc($result_provinces)) : ?>
                    <option value="<?= $row['province_origine'] ?>" <?= ($row['province_origine'] == $province_filtre) ? 'selected' : '' ?>>
                        <?= $row['province_origine'] ?>
                    </option>
                <?php endwhile; ?>
            </select>
        </div>

        <div class="col-md-4">
            <button type="submit" class="btn btn-primary"><i class='ti ti-filter'></i>Filtrer</button>
            <a href="dashboard2.php" class="btn btn-secondary"><i class='ti ti-chevron-right'></i>Vers Tableau 2</a>
        </div>
    </form>

    <!-- Affichage des résultats -->
    <h3 class="mt-4">Résultats du Filtrage</h3>
    <p><strong>Total de membres trouvés :</strong> <?= $total_membres ?></p>
</div>

<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>



    