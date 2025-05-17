<?php
require 'config.php';

if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM actualites WHERE id = $id";
    if ($conn->query($sql)) {
        $sql ="DELETE FROM actualite_contenus WHERE actualite_id = $id";
        $conn->query($sql);
        echo "Actualité supprimée";
    } else {
        echo "Erreur lors de la suppression";
    }
}
?>
