<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

$id = $_GET['id'];
$sql = "SELECT * FROM documents WHERE id = $id";
$result = $conn->query($sql);
$document = $result->fetch_assoc();



if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = addslashes($_POST['titre']);
    //$contenu = addslashes($_POST['contenu']);
    $pdf = $document['fichier'];

    // Mise à jour de l'image
    if (!empty($_FILES["fichier"]["name"])) {
        $target_dir = "documents/";
        $pdf = $target_dir . basename($_FILES["fichier"]["name"]);
        move_uploaded_file($_FILES["fichier"]["tmp_name"], $pdf);
    }


    $sql = "UPDATE documents SET titre='$titre', fichier='$pdf' WHERE id= $id";

   // var_dump($sql);
    if ($conn->query($sql)) {
        header("Location: gestion_documents.php");
    } else {
        echo "Erreur lors de la modification";
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modifier un document</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Modifier un document</h2>
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="titre" class="form-label">Titre</label>
            <input type="text" name="titre" id="titre" class="form-control" value="<?= $document['titre']; ?>" required>
        </div>
        <div class="mb-3">
            <label for="fichier" class="form-label">Fichier</label>
            <input type="file"  name="fichier" id="fichier" class="form-control" value="<?=($document['fichier']); ?>"  accept="application/document" required>
        </div>
        
        <button type="submit" class="btn btn-primary">Modifier</button>
        <a href="gestion_femmes.php" class="btn btn-secondary">Retour</a>
    </form>
</div>
</body>
</html>
