<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

$id = $_GET['id'];
$sql = "SELECT * FROM historique WHERE id = $id";
$result = $conn->query($sql);
$actualite = $result->fetch_assoc();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = addslashes($_POST['titre']);
    $contenu = addslashes($_POST['contenu']);
    

    $sql = "UPDATE historique SET titre='$titre', contenu='$contenu' WHERE id=$id";
    if ($conn->query($sql)) {
        header("Location: gestion_historique.php");
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
    <title>Modifier l'historique</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h2>Modifier l'historique</h2>
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="titre" class="form-label">Titre</label>
            <input type="text" name="titre" id="titre" class="form-control" value="<?= $actualite['titre']; ?>" required>
        </div>
        <div class="mb-3">
            <label for="contenu" class="form-label">Contenu</label>
            <textarea name="contenu" id="contenu" class="form-control" rows="4" required><?=($actualite['contenu']); ?></textarea>
        </div>
      
        <button type="submit" class="btn btn-primary"><i class='ti ti-edit'></i>Modifier</button>
        <a href="gestion_historique.php" class="btn btn-secondary"><i class='ti ti-arrow-back'></i>Retour</a>
    </form>
</div>
</body>
</html>
