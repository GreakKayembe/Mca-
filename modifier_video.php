<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

$message = "";
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($id > 0) {
    $req = mysqli_query($conn, "SELECT * FROM videos WHERE id = $id");
    $video = mysqli_fetch_assoc($req);

    if (!$video) {
        die("Vidéo introuvable !");
    }

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $titre = mysqli_real_escape_string($conn, $_POST['titre']);

        // Si une nouvelle vidéo est uploadée
        if (!empty($_FILES['video']['name'])) {
            $video_name = $_FILES['video']['name'];
            $video_tmp = $_FILES['video']['tmp_name'];
            $video_path = 'uploads/videos/' . time() . '_' . basename($video_name);

            if (move_uploaded_file($video_tmp, $video_path)) {
                // Supprimer l’ancienne vidéo
                if (file_exists($video['video_path'])) {
                    unlink($video['video_path']);
                }

                $sql = "UPDATE videos SET titre='$titre', video_path='$video_path' WHERE id=$id";
            } else {
                $message = '<div class="alert alert-danger">Échec de l’upload.</div>';
            }
        } else {
            $sql = "UPDATE videos SET titre='$titre' WHERE id=$id";
        }

        if (mysqli_query($conn, $sql)) {
            $message = '<div class="alert alert-success">Vidéo modifiée avec succès.</div>';
            header("Refresh:2; url=gestion_medias.php");
        } else {
            $message = '<div class="alert alert-danger">Erreur lors de la mise à jour.</div>';
        }
    }
} else {
    die("ID vidéo invalide !");
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Modifier Vidéo</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <script>
        setTimeout(() => {
            const alert = document.querySelector(".alert");
            if(alert) alert.style.display = "none";
        }, 3000);
    </script>
</head>
<body>
<div class="container mt-5">
    <h4>Modifier la Vidéo</h4>
    <?php echo $message; ?>
    <form method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Titre</label>
            <input type="text" name="titre" class="form-control" value="<?= htmlspecialchars($video['titre']) ?>" required>
        </div>
        <div class="mb-3">
            <label>Vidéo actuelle :</label><br>
            <video src="<?= $video['video_path'] ?>" width="320" controls></video>
        </div>
        <div class="mb-3">
            <label>Nouvelle vidéo (optionnel)</label>
            <input type="file" name="video" class="form-control" accept="video/*">
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
</body>
</html>
