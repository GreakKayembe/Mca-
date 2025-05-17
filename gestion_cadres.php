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
    <title>Gestion des Actualités</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <script src="assets/js/Jquery.min.js"></script>
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center">Gestion des actualités Cadres </h2>

    <a href="ajouter_cadre.php" class="btn btn-success" ><i class="ti ti-plus"></i>Ajouter</a>  
    <a href="dashboard.php" class="btn btn-info"><i class="ti ti-arrow-back-up"></i>Retour</a> 

    <!-- Barre de recherche -->
    <input type="text" id="search" class="form-control my-3" placeholder="Rechercher une actualité...">

    <!-- Tableau des actualités -->
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>Titre</th>
                <th>Contenu</th>
                <th>Image</th>
                <th>Date</th>
                <th>Actions</th>

            </tr>
        </thead>
        <tbody id="actualiteTable" style='font-size:10px'>
            <?php
            $sql = "SELECT * FROM cadres ORDER BY date_publication DESC";
            $result = $conn->query($sql);
            while ($row = $result ->fetch_assoc()) {
                                $id = $row['id'];
                                $contenu = $conn->query("SELECT * FROM contenus_cadres WHERE cadre_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
                                $image = $contenu['image_path'];
                                $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
                         echo "<tr style='font-size:10px'>
                        <td>{$row['titre']}</td>
                        <td>" . substr($texte, 0, 100) . "...</td>
                        <td><img src=$image  width='50'></td>
                        <td>{$row['date_publication']}</td>
                        <td>
                            <a href='modifier_cadre.php?id={$row['id']}' class='btn btn-warning btn-sm' style='font-size:10px'><i class='ti ti-edit'></i></a>
                            <button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}' style='font-size:10px'><i class='ti ti-trash'></i></button>
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
                url: "search_cadre.php",
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
            if (confirm("Voulez-vous vraiment supprimer cette actualité ?")) {
                $.post("delete_cadre.php", { id: id }, function(response) {
                    location.reload();
                });
            }
        });
    });
</script>

</body>
</html>
