<?php
include 'header.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = htmlspecialchars($_POST['nom']);
    $email = htmlspecialchars($_POST['email']);
    $sujet = htmlspecialchars($_POST['sujet']);
    $message = htmlspecialchars($_POST['message']);

    // Adresse e-mail du parti politique
    $destinataire = "info@mca-rdc.org"; 

    // Sujet de l'e-mail
    $objet = "Nouveau message de contact : $sujet";

    // Contenu de l'e-mail
    $contenu = "Nom : $nom\n";
    $contenu .= "Email : $email\n";
    $contenu .= "Message :\n$message";


   
    // En-têtes de l'e-mail
    $headers = "From: $sujet\r\n";
    $headers .= "Reply-To: $email\r\n";

    


    // Envoi de l'e-mail
    if (mail($destinataire, $objet, $contenu, $headers)) {
        $message_reponse = "Votre message a été envoyé avec succès !";
    } else {
        $message_reponse = "Une erreur s'est produite. Veuillez réessayer.";
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
    <p style="margin-top:100px"></p>
    

<div class="container mt-5">
    
    <h2>Contactez-nous</h2>
    <?php if (isset($message_reponse)) : ?>
        <div class="alert alert-info"><?= $message_reponse; ?></div>
    <?php endif; ?>
    
    <form method="post" action="send_email.php">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom</label>
            <input type="text" class="form-control" id="nom" name="nom" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">E-mail</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="sujet" class="form-label">Sujet</label>
            <input type="text" class="form-control" id="sujet" name="sujet" required>
        </div>
        <div class="mb-3">
            <label for="message" class="form-label">Message</label>
            <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary"><i class='ti ti-send'></i>Envoyer</button><p></p>
    </form>
</div>
<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
<?php  include 'footer.php'; ?>
</html>
