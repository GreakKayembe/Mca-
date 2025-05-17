<?php
$host = "localhost";
$user = "root"; // À modifier si nécessaire
$password = "";
$dbname = "mca_bdd";

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Connexion échouée : " . $conn->connect_error);
}
?>
