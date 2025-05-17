<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}


if (isset($_POST['ajouter'])) {
    $titre = $conn->real_escape_string(($_POST['titre']));
    $province = $conn->real_escape_string(($_POST['province']));
    $paragraphes = ($_POST['paragraphes']);

    // Enregistrer l'actualité principale
    $conn->query("INSERT INTO news_provinces (province, titre) VALUES ('$province', '$titre')");
    $id_province = $conn->insert_id;

    foreach ($paragraphes as $index => $para) {
        $para = $conn->real_escape_string($para);

        // Upload image
        $image_name =htmlspecialchars($_FILES['images']['name'][$index]);
        $tmp_name = htmlspecialchars($_FILES['images']['tmp_name'][$index]);
        $img_path = '';

        if (!empty($image_name)) {
            $img_path = htmlspecialchars("uploads/" . time() . "_" . basename($image_name));
            move_uploaded_file($tmp_name, $img_path);
        }

        // Enregistrement dans la table actualite_contenus
        $conn->query("INSERT INTO contenus_province (province_id, paragraphe, image_path, ordre) 
                      VALUES ($id_province, '$para', '$img_path', $index)");
    }

    echo "<div class='alert alert-success'>Actualité enregistrée avec succès.</div>";
    header("Location:gestion_news_provinces.php");
}

?>

   


<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter une Actualité</title>
    <link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Ajouter une actualité de la province</h2>
    <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Province</label>
            <input type="text" name="province" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Titre</label>
            <input type="text" name="titre" class="form-control" required>
        </div>
        <div id="contenus">
    <div class="contenu">
        <textarea name="paragraphes[]" class="form-control mb-2" placeholder="Paragraphe 1"></textarea>
        <input type="file" name="images[]" class="form-control mb-3">
    </div>
    </div>
    <button type="button" class="btn btn-secondary" onclick="ajouterContenu()">+ Ajouter un autre paragraphe</button>

        <button type="submit" name="ajouter"  class="btn btn-primary"><i class='ti ti-device-floppy'></i>Enregistrer</button>
    </form>
</div>
</body>
    <script>
            function ajouterContenu() {
                const div = document.createElement('div');
                div.classList.add('contenu');
                div.innerHTML = `
                    <textarea name="paragraphes[]" class="form-control mb-2" placeholder="Nouveau paragraphe"></textarea>
                    <input type="file" name="images[]" class="form-control mb-3">
                `;
                document.getElementById('contenus').appendChild(div);
            }
</script>
</html>
