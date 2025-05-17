<?php
require 'config.php'; // Connexion à la base de données
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestion de Membres </title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <script src="assets/js/Jquery.min.js"></script>
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center">Gestion de Membres</h2>

    <a href="ajouter_membre.php" class="btn btn-success" ><i class="ti ti-plus"></i>Ajouter</a>  
    <a href="dashboard.php" class="btn btn-info"><i class="ti ti-arrow-back-up"></i>Retour</a> 

    <!-- Barre de recherche -->
    <input type="text" id="search" class="form-control my-3" style='font-size:9px' placeholder="Rechercher un membre...">

    <!-- Tableau des actualités -->
    <table class="table table-bordered table-hover">
    <thead class="table-dark" style="font-size:9px;">
            <tr>
                <th>Nom</th>
                <th>Postnom</th>
                <th>Prenom</th>
                <th>Sexe</th>
                <th>Date naissance</th>
                <th>Etat-civil</th>
                <th>Province</th>
                <th>Fédération</th>
                <th>Adresse</th>
                <th>Téléphone</th>
                <th>Email</th>
                <th>Date_adhésion</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody id="actualiteTable" style="font-size:9px">
            <?php
            $sql = "SELECT * FROM membres ORDER BY date_inscription DESC";
            $result = $conn->query($sql);
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['nom']}</td>
                        <td>{$row['post_nom']}</td>
                        <td>{$row['prenom']}</td>
                        <td>{$row['sexe']}</td>
                        <td>{$row['date_naissance']}</td>
                        <td>{$row['etat_civil']}</td>
                        <td>{$row['province_origine']}</td>
                        <td>{$row['federation']}</td>
                        <td>{$row['adresse']}</td>
                        <td>{$row['telephone']}</td>
                        <td>{$row['email']}</td>
                        <td>{$row['date_inscription']}</td>
                        <td>
                            <a href='modifier_membre.php?id={$row['id']}' class='btn btn-warning btn-sm' style='font-size:9px'><i class='ti ti-edit'></i></a>
                            <button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}' style='font-size:9px'><i class='ti ti-trash'></i></button>
                        </td>
                      </tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function() {
        // Recherche dynamique avec AJAX
        $("#search").on("keyup", function() {
            var query = $(this).val();
            $.ajax({
                url: "search_membre.php",
                method: "POST",
                data: { query: query },
                success: function(data) {
                    $("#actualiteTable").html(data);
                }
            });
        });

        // Suppression avec confirmation
        $(".delete-btn").click(function() {
            var id = $(this).data("id");
            if (confirm("Voulez-vous vraiment supprimer ce membre ?")) {
                $.post("delete_membre.php", { id: id }, function(response) {
                    location.reload();
                });
            }
        });
    });
</script>

</body>
</html>
