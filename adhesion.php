<?php
include 'header.php';
require 'config.php';


$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = htmlspecialchars(strtoupper(trim($_POST['nom'])));
    $post_nom = htmlspecialchars(strtoupper( trim($_POST['post_nom'])));
    $prenom = htmlspecialchars(strtoupper(trim($_POST['prenom'])));
    $sexe =htmlspecialchars(trim( $_POST['sexe']));
    $date_naissance = htmlspecialchars($_POST['date_naissance']);
    $etat_civil = htmlspecialchars($_POST['etat_civil']);
    $province_origine = ucfirst(htmlspecialchars($_POST['province_origine']));
    $federation = ucfirst(htmlspecialchars($_POST['federation']));
    $adresse = htmlspecialchars(trim($_POST['adresse']));
    $telephone = htmlspecialchars(trim($_POST['telephone']));
    $email = htmlspecialchars(trim($_POST['email']));

    // Vérifier si l'email existe déjà
    $sql_check = "SELECT id FROM membres WHERE email = ? AND telephone=?";
    $stmt_check = $conn->prepare($sql_check);
    $stmt_check->bind_param("ss", $email,$telephone);
    $stmt_check->execute();
    $stmt_check->store_result();

    if ($stmt_check->num_rows > 0) {
        $message = "Cet email ou numero de téléphone  est déjà utilisé 🤪.";
    } else {
        // Insérer le membre dans la base de données
        $sql = "INSERT INTO membres (nom, post_nom, prenom, sexe, date_naissance, etat_civil, province_origine, federation, adresse, telephone, email) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssssssssss", $nom, $post_nom, $prenom, $sexe, $date_naissance, $etat_civil, $province_origine, $federation, $adresse, $telephone, $email);

        if ($stmt->execute()) {
            $message = "Adhésion réussie !✔";
        } else {
            $message = "Erreur lors de l'inscription.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Formulaire d'Adhésion</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <script src="assets/js/Jquery.min.js"></script>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
    <p style="margin-top:80px"></p>

<div class="container mt-4">
    <h2>Formulaire d'Adhésion en ligne</h2>
    <?php if ($message): ?>
        <div class="alert alert-info"><?= $message; ?></div>
    <?php endif; ?>

    <form action="" method="post">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input type="text" class="form-control" name="nom" required>
        </div>
        <div class="mb-3">
            <label for="post_nom" class="form-label">Post-nom</label>
            <input type="text" class="form-control" name="post_nom" required>
        </div>
        <div class="mb-3">
            <label for="prenom" class="form-label">Prénom</label>
            <input type="text" class="form-control" name="prenom" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Sexe</label>
            <select class="form-control" name="sexe" required>
                <option value="Homme">Homme</option>
                <option value="Femme">Femme</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="date_naissance" class="form-label">Date de naissance</label>
            <input type="date" class="form-control" name="date_naissance" required>
        </div>
        <div class="mb-3">
            <label class="form-label">État Civil</label>
            <select class="form-control" name="etat_civil" required>
                <option value="Célibataire">Célibataire</option>
                <option value="Marié(e)">Marié(e)</option>
                <option value="Divorcé(e)">Divorcé(e)</option>
                <option value="Veuf(ve)">Veuf(ve)</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="province_origine" class="form-label">Province</label>
            <input type="text" class="form-control" name="province_origine" required>
        </div>
        <div class="mb-3">
            <label for="federation" class="form-label">Fédération</label>
            <input type="text" class="form-control" name="federation" required>
        </div>
        <div class="mb-3">
            <label for="adresse" class="form-label">Adresse</label>
            <textarea class="form-control" name="adresse" rows="2" required></textarea>
        </div>
        <div class="mb-3">
            <label for="telephone" class="form-label">Téléphone</label>
            <input type="text" class="form-control" name="telephone" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" name="email">
        </div>
        <button type="submit" class="btn btn-primary"><i class='ti ti-device-floppy'></i>Adhérer</button><p></p>
    </form>
</div>
<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
 <!-- Pied de page -->
 <?php include 'footer.php'; ?>
</html>
