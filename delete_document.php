<?php
require 'config.php';

if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM documents WHERE id = $id";
    if ($conn->query($sql)) {
        echo "document supprimée";
    } else {
        echo "Erreur lors de la suppression";
    }
}
?>
