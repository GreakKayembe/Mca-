<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = htmlspecialchars(($_POST['titre']));
    $fichier = htmlspecialchars($_FILES['document']['name']);

    // Upload de l'image

    move_uploaded_file($_FILES['document']['tmp_name'], "documents/" . $fichier);

    

    

    $stmt = $conn->prepare("INSERT INTO documents (titre, fichier) VALUES (?, ?)");
    $stmt->execute([$titre, $fichier]);

    header("Location:gestion_documents.php");
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un document</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Ajouter un document</h2>
    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Titre</label>
            <input type="text" name="titre" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Fichier</label>
            <input type="file" name="document" class="form-control" accept="application/pdf" required>
        </div>
       
        <button type="submit" class="btn btn-primary"><i class='ti ti-device-floppy'></i>Enregistrer</button>
    </form>
</div>
</body>
</html>
