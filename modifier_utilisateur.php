<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

$id = $_GET['id'];
$sql = "SELECT * FROM utilisateurs WHERE id = $id";
$result = $conn->query($sql);
$utilisateurs = $result->fetch_assoc();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = addslashes($_POST['nom']);
    $email = addslashes($_POST['email']);
    $mot_de_passe = addslashes($_POST['mot_de_passe']);
    $role = addslashes($_POST['role']);

   
    $sql = "UPDATE utilisateurs SET nom='$nom', email='$email', mot_de_passe='$mot_de_passe', role='$role' WHERE id=$id";
    if ($conn->query($sql)) {
        header("Location: gestion_utilisateurs.php");
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
    <title>Modifier un utilisateur </title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h2>Modifier un Utilisateur</h2>
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input type="text" name="nom" id="nom" class="form-control" value="<?= $utilisateurs['nom']; ?>" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" id="email" class="form-control" value="<?= $utilisateurs['email']; ?>" required>
        </div>
        <div class="mb-3">
            <label for="mot_de_passe" class="form-label">Mot de passe</label>
            <input type="password" name="mot_de_passe" id="mot_de_passe" class="form-control" value="<?= $utilisateurs['mot_de_passe']; ?>" required>
        </div>
        <div class="mb-3">
            <label for="mot_de_passe" class="form-label">Role</label>
            <select type="text" name="role" id="role" class="form-control" value="<?= $utilisateurs['role']; ?>" required>
                <option value="super_admin">Super_Admin</option>
                <option value="admin">Admin</option>
                <option value="fédérale">Fédérale</option>
            </select>
        </div>
       
        <button type="submit" class="btn btn-primary"><i class='ti ti-edit'></i>Modifier</button>
        <a href="gestion_utilisateurs.php" class="btn btn-secondary"><i class='ti ti-arrow-back'></i>Retour</a>
    </form>
</div>
</body>
</html>
