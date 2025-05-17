<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = htmlspecialchars(($_POST['titre']));
    $contenu = htmlspecialchars(($_POST['contenu']));

    $stmt = $conn->prepare("INSERT INTO historique (titre, contenu) VALUES (?, ?)");
    $stmt->execute([$titre, $contenu]);

    header("Location:gestion_historique.php");
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter l'historique</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Ajouter l'historique</h2>
    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Titre</label>
            <input type="text" name="titre" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Contenu</label>
            <textarea name="contenu" class="form-control" required></textarea>
        </div>
       
        <button type="submit" class="btn btn-primary"><i class='ti ti-device-floppy'></i>Enregistrer</button>
    </form>
</div>
</body>
</html>
