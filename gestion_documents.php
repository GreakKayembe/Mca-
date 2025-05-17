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
    <title>Gestion de documents</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <script src="assets/js/Jquery.min.js"></script>
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center">Gestion de documents</h2>

    <a href="ajouter_document.php" class="btn btn-success" ><i class="ti ti-plus"></i>Ajouter</a>  
    <a href="dashboard.php" class="btn btn-info"><i class="ti ti-arrow-back-up"></i>Retour</a> 

    <!-- Barre de recherche -->
    <input type="text" id="search" class="form-control my-3" placeholder="Rechercher un document...">

    <!-- Tableau des actualités -->
    <table class="table table-bordered table-hover">
    <thead class="table-dark">
            <tr>
                <th>Titre</th>
                <th>Fichier</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody id="actualiteTable">
            <?php
            $sql = "SELECT * FROM documents ORDER BY date_publication DESC";
            $result = $conn->query($sql);
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['titre']}</td>
                         <td>{$row['fichier']}</td>
                        <td>{$row['date_publication']}</td>
                        <td>
                            <button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}'><i class='ti ti-trash'></i></button>
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
                url: "search_document.php",
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
            if (confirm("Voulez-vous vraiment supprimer ce document ?")) {
                $.post("delete_document.php", { id: id }, function(response) {
                    location.reload();
                });
            }
        });
    });
</script>

</body>
</html>
