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
    <title>Gestion des utilisateurs </title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <script src="assets/js/Jquery.min.js"></script>
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center">Gestion des utilisateurs</h2>

    <a href="ajouter_utilisateur.php" class="btn btn-success" ><i class="ti ti-plus"></i>Ajouter</a>  
    <a href="dashboard.php" class="btn btn-info"><i class="ti ti-arrow-back-up"></i>Retour</a> 

    <!-- Barre de recherche -->
    <input type="text" id="search" class="form-control my-3" placeholder="Rechercher un utilisateur">

    <!-- Tableau des actualités -->
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Nom</th>
                <th>Emaill</th>
                <th>Mot de passe</th>
                <th>Role</th>
                <th>Date creation</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody id="actualiteTable"  style="font-size:10px">
            <?php
            $sql = "SELECT * FROM utilisateurs ORDER BY date_creation DESC";
            $result = $conn->query($sql);
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['nom']}</td>
                        <td>{$row['email']}</td>
                        <td>{$row['mot_de_passe']}</td>
                        <td>{$row['role']}</td>
                          <td>{$row['date_creation']}</td>
                        <td>
                            <a href='modifier_utilisateur.php?id={$row['id']}' class='btn btn-warning btn-sm' style='font-size:10px'><i class='ti ti-edit'></i></a>
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
                url: "search_utilisateur.php",
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
            if (confirm("Voulez-vous vraiment supprimer cet utilisateur ?")) {
                $.post("delete_utilisateur.php", { id: id }, function(response) {
                    location.reload();
                });
            }
        });
    });
</script>

</body>
</html>
