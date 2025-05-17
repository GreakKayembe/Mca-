<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = htmlspecialchars($_POST["nom"]);
    $email = htmlspecialchars($_POST["email"]);
    $message = nl2br(htmlspecialchars($_POST["message"]));

    $mail = new PHPMailer(true);

    try {
        // Configuration du serveur SMTP
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com'; // Change si nécessaire
        $mail->SMTPAuth   = true;
        $mail->Username   = 'info@mca-rdc.org'; // Ton adresse e-mail
        $mail->Password   = 'motdepasse'; // Ton mot de passe ou App Password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = 587;

        // Expéditeur et destinataire
        $mail->setFrom($email, $nom);
        $mail->addAddress('info@mca-rdc.org', 'Mouvement Congo en Avant'); // L'adresse e-mail du parti

        // Contenu de l'e-mail
        $mail->isHTML(true);
        $mail->Subject = 'Nouveau message de contact';
        $mail->Body    = "
            <h3>Informations du contact :</h3>
            <p><b>Nom :</b> $nom</p>
            <p><b>Email :</b> $email</p>
            <p><b>Message :</b><br> $message</p>
        ";

        $mail->send();
        echo "Message envoyé avec succès !";
    } catch (Exception $e) {
        echo "Erreur lors de l'envoi : {$mail->ErrorInfo}";
    }
} else {
    echo "Méthode non autorisée.";
}
