<?php

include 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $req = mysqli_query($conn, "SELECT * FROM videos WHERE id = $id");
    $video = mysqli_fetch_assoc($req);

    if ($video) {
        // Supprimer le fichier de la vidéo
        if (file_exists($video['video_path'])) {
            unlink($video['video_path']);
        }

        // Supprimer la ligne dans la BDD
        mysqli_query($conn, "DELETE FROM videos WHERE id = $id");
    }
}

header("Location: gestion_medias.php");
exit;
