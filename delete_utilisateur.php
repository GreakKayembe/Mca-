<?php
require 'config.php';

if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM utilisateurs WHERE id = $id";
    if ($conn->query($sql)) {
        echo "utilisateur supprimée";
    } else {
        echo "Erreur lors de la suppression";
    }
}
?>
