<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

$id = $_GET['id'];
$sql = "SELECT * FROM membres WHERE id = $id";
$result = $conn->query($sql);
$membres = $result->fetch_assoc();



if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = addslashes($_POST['nom']);
    $postnom = addslashes($_POST['post_nom']);
    $prenom = addslashes($_POST['prenom']);
    $sexe = addslashes($_POST['sexe']);
    $date_naissance = addslashes($_POST['date_naissance']);
    $etat_civil = addslashes($_POST['etat_civil']);
    $province = addslashes($_POST['province_origine']);
    $federation = addslashes($_POST['federation']);
    $adresse = addslashes($_POST['adresse']);
    $telephone = addslashes($_POST['telephone']);
    $email = addslashes($_POST['email']);


    

    $sql = "UPDATE membres SET nom='$nom', post_nom='$postnom', prenom='$prenom' , sexe='$sexe' , date_naissance='$date_naissance', etat_civil='$etat_civil' , province_origine='$province', federation='$federation', adresse='$adresse', telephone='$telephone', email='$email'  WHERE id=$id";
    if ($conn->query($sql)) {
        header("Location: gestion_membres.php");
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
    <title>Modifier une actualité</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
<h1>Modifier un membre</h1>
<form action="" method="post">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input type="text" class="form-control" name="nom" value="<?= $membres['nom'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="post_nom" class="form-label">Post-nom</label>
            <input type="text" class="form-control" name="post_nom" value="<?= $membres['post_nom'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="prenom" class="form-label">Prénom</label>
            <input type="text" class="form-control" name="prenom" value="<?= $membres['prenom'] ?>" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Sexe</label>
            <select class="form-control" name="sexe" value="<?= $membres['sexe'] ?>" required>
                <option value="Homme">Homme</option>
                <option value="Femme">Femme</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="date_naissance" class="form-label">Date de naissance</label>
            <input type="date" class="form-control" name="date_naissance"  value="<?= $membres['date_naissance'] ?>" required>
        </div>
        <div class="mb-3">
            <label class="form-label">État Civil</label>
            <select class="form-control" name="etat_civil" value="<?= $membres['etat_civil'] ?>" required>
                <option value="Célibataire">Célibataire</option>
                <option value="Marié(e)">Marié(e)</option>
                <option value="Divorcé(e)">Divorcé(e)</option>
                <option value="Veuf(ve)">Veuf(ve)</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="province_origine" class="form-label">Province</label>
            <input type="text" class="form-control" name="province_origine" value="<?= $membres['province_origine'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="federation" class="form-label">Fédération</label>
            <input type="text" class="form-control" name="federation" value="<?= $membres['federation']?>" required>
        </div>
        <div class="mb-3">
            <label for="adresse" class="form-label">Adresse</label>
            <textarea class="form-control" name="adresse" rows="2"  required><?= $membres['adresse'] ?></textarea>
        </div>
        <div class="mb-3">
            <label for="telephone" class="form-label">Téléphone</label>
            <input type="text" class="form-control" name="telephone"  value="<?= $membres['telephone'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" name="email" value="<?= $membres['email'] ?>" >
        </div>
        <button type="submit" class="btn btn-primary"><i class='ti ti-edit'></i>Modifier</button>
        <a href="gestion_membres.php" class="btn btn-secondary"><i class='ti ti-arrow-back'></i>Retour</a><p></p>
    </form>
</div>
</body>
</html>
