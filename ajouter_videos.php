<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}


$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = $_POST['titre'];
    //$date = date("Y-m-d");

    if (isset($_FILES['fichier']) && $_FILES['fichier']['error'] == 0) {
        $fichier_temp = $_FILES['fichier']['tmp_name'];
        $nom_fichier = basename($_FILES['fichier']['name']);
        $dossier = "uploads/videos/";
        $chemin_fichier = $dossier . uniqid() . "_" . $nom_fichier;

        // Vérifier doublon par titre ou nom de fichier
        $check = $conn->prepare("SELECT id FROM videos WHERE titre = ? OR video_path = ?");
        $check->bind_param("ss", $titre, $chemin_fichier);
        $check->execute();
        $check->store_result();

        if ($check->num_rows > 0) {
            $message = "<div class='alert alert-warning'>Vidéo déjà enregistrée.</div>";
        } else {
            if (move_uploaded_file($fichier_temp, $chemin_fichier)) {
                $stmt = $conn->prepare("INSERT INTO videos (titre, video_path) VALUES (?, ?)");
                $stmt->bind_param("ss", $titre, $chemin_fichier);
                if ($stmt->execute()) {
                    $message = "<div class='alert alert-success'>Vidéo ajoutée avec succès.</div>";
                } else {
                    $message = "<div class='alert alert-danger'>Erreur lors de l'insertion.</div>";
                }
                $stmt->close();
            } else {
                $message = "<div class='alert alert-danger'>Erreur de téléchargement du fichier.</div>";
            }
        }
        $check->close();
    } else {
        $message = "<div class='alert alert-danger'>Veuillez sélectionner une vidéo.</div>";
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter une vidéo</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <style>
        #preview {
            max-width: 100%;
            margin-top: 15px;
        }
    </style>
</head>
<body class="container mt-5">
    <h2>Ajouter une vidéo</h2>
    <?= $message; ?>

    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Titre</label>
            <input type="text" name="titre" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Fichier vidéo</label>
            <input type="file" name="fichier" id="fichier" class="form-control" accept="video/*" required>
        </div>

        <video id="preview" controls style="display: none;"></video><p></p>

        <button type="submit" class="btn btn-primary">Ajouter</button>
        <a href="gestion_medias.php" class="btn btn-secondary">Retour</a>
    </form>

    <script>
        document.getElementById('fichier').addEventListener('change', function (event) {
            const file = event.target.files[0];
            const preview = document.getElementById('preview');
            if (file) {
                const url = URL.createObjectURL(file);
                preview.src = url;
                preview.style.display = 'block';
            }
        });

        // Disparition automatique des alertes après 3 secondes
        setTimeout(() => {
            const alert = document.querySelector('.alert');
            if (alert) alert.remove();
        }, 3000);
    </script>
</body>
</html>
