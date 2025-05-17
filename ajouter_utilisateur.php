<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = htmlspecialchars(trim($_POST['nom']));
    $email = htmlspecialchars(trim($_POST['email']));
    $mot_de_passe = htmlspecialchars(password_hash($_POST['mot_de_passe'], PASSWORD_DEFAULT));
    $role = htmlspecialchars(trim($_POST['role']));
    $id = substr($nom, 0,3).date('is');
    $id_generer = strtoupper($id);
    

    // Upload de l'image
  

    $stmt = $conn->prepare("INSERT INTO utilisateurs (id, nom, email, mot_de_passe, role) VALUES (?, ?, ?, ?, ?)");
    $stmt->execute([$id_generer,$nom, $email, $mot_de_passe,$role]);

    header("Location:gestion_utilisateurs.php");
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Utilisateur</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Ajouter un Utilisateur</h2>
    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Nom</label>
            <input type="text" name="nom" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Mot de passe</label>
            <input type="password" name="mot_de_passe" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Role</label>
            <select type="" name="role" class="form-control" required>
                <option value="super_admin">Super_admin</option>
                <option value="admin">Admin</option>
                <option value="fédérale">Fédérale</option>
            </select>
        </div>
        
        <button type="submit" class="btn btn-primary"><i class='ti ti-device-floppy'></i>Enregistrer</button>
    </form>
</div>
</body>
</html>
