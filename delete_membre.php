<?php
require 'config.php';

if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM membres WHERE id = $id";
    if ($conn->query($sql)) {
        echo "membre supprimée";
    } else {
        echo "Erreur lors de la suppression";
    }
}
?>
