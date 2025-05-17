<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}


if (!isset($_GET['id'])) {
    echo "Aucune actualité spécifiée.";
    exit;
}

$id = intval($_GET['id']);

// Récupérer l'actualité
$actu = $conn->query("SELECT * FROM news_provinces WHERE id = $id")->fetch_assoc();
$contenus = $conn->query("SELECT * FROM contenus_province WHERE province_id = $id ORDER BY ordre");
?>

<!DOCTYPE html>
<html>
<head>
<title>Modifier une actualité</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
<link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h3>Modifier : <?php echo htmlspecialchars($actu['titre']); ?></h3>

    <form action="modifier_news_province_action.php" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <div class="mb-3">
            <label>Province</label>
            <input type="text" name="province" class="form-control" value="<?php echo htmlspecialchars($actu['province']); ?>" required>
        </div>

        <div class="mb-3">
            <label>Titre</label>
            <input type="text" name="titre" class="form-control" value="<?php echo htmlspecialchars($actu['titre']); ?>" required>
        </div>

        <hr>
        <h5>Contenu</h5>
        <?php $i = 0; while ($c = $contenus->fetch_assoc()): $i++; ?>
            <div class="mb-3 border rounded p-3 bg-white">
                <input type="hidden" name="contenu_ids[]" value="<?php echo $c['id']; ?>">

                <label>Paragraphe <?php echo $i; ?></label>
                <textarea name="paragraphes[]" class="form-control" rows="3"><?php echo htmlspecialchars($c['paragraphe']); ?></textarea>

                <?php if (!empty($c['image_path'])): ?>
                    <div class="mt-2">
                        <label>Image actuelle :</label><br>
                        <img src="<?php echo $c['image_path']; ?>" width="150">
                    </div>
                <?php endif; ?>

                <label>Remplacer l’image :</label>
                <input type="file" name="images[]">
            </div>
        <?php endwhile; ?>

        <button type="submit" class="btn btn-primary">Enregistrer les modifications</button>
        <a href="gestion_news_provinces.php" class="btn btn-secondary"><i class='ti ti-arrow-back'></i>Retour</a>
    </form>
</div>
</body>
</html>


