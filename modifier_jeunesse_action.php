<?php
include 'config.php';

$id = intval($_POST['id']);
$titre = mysqli_real_escape_string($conn, $_POST['titre']);
$contenu_ids = $_POST['contenu_ids'];
$paragraphes = $_POST['paragraphes'];
$images = $_FILES['images'];

// Mettre à jour le titre
$conn->query("UPDATE jeunesses SET titre = '$titre' WHERE id = $id");

// Mise à jour des contenus
foreach ($contenu_ids as $index => $contenu_id) {
    $contenu_id = intval($contenu_id);
    $paragraphe = mysqli_real_escape_string($conn, $paragraphes[$index]);

    // Gestion de l'image
    if ($images['error'][$index] == 0) {
        $ext = pathinfo($images['name'][$index], PATHINFO_EXTENSION);
        $image_path = "uploads/" . uniqid() . "." . $ext;
        move_uploaded_file($images['tmp_name'][$index], $image_path);

        // Supprime l’ancienne image ?
        // Ajouter cette logique si tu veux (facultatif)

        $sql = "UPDATE contenus_jeunesse SET paragraphe = '$paragraphe', image_path = '$image_path' WHERE id = $contenu_id";
    } else {
        $sql = "UPDATE contenus_jeunesse SET paragraphe = '$paragraphe' WHERE id = $contenu_id";
    }

    $conn->query($sql);
}

// Redirection
echo "<script>
    alert('Actualité modifiée avec succès !');
    window.location.href = 'gestion_jeunesse.php';
</script>";
?>

