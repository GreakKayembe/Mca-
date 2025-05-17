<?php
require 'config.php';

if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM news_provinces WHERE id = $id";
    if ($conn->query($sql)) {
        $sql ="DELETE FROM contenus_province WHERE province_id = $id";
        $conn->query($sql);
        echo "Actualité supprimée";
    } else {
        echo "Erreur lors de la suppression";
    }
}
?>
