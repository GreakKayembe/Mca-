<?php

include 'header.php';


?>

<?php
require 'config.php';

// Récupération des actualités les plus récentes
$sql = "SELECT * FROM diasporas ORDER BY id DESC LIMIT 5";
$diaspora_query = $conn->query($sql);

include 'header.php';
?>




    <!-- Section Héros -->
    <div class="hero-section">
        <div class="hero-overlay">
            <marquee behavior="" direction="left"><h1>Bienvenue sur le site officiel du Parti <span style="color:yellow">Mouvement</span> <span style="color:black" >Congo</span> <span style="color:green">en Avant</span></h1></marquee>
            <p>Ensemble nous sommes imbattables pour un Congo en Avant ! </p>
            <a href="adhesion.php" class="btn btn-warning">Adhérez maintenant</a>
        </div>
    </div>

  
    <!-- Section Dernières nouvelles -->
    <div class="container mt-4">
    <h2 class="text-center mb-4">Dernières Actualités de la diaspora</h2>
    <div class="row">
        <?php while ($diaspora = $diaspora_query->fetch_assoc()):
            $id = $diaspora['id'];
            $contenu = $conn->query("SELECT * FROM contenus_diaspora WHERE diaspora_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
            $image = $contenu['image_path'];
            $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
        ?>
        <div class="col-md-6 mb-4">
            <div class="card h-100 shadow-sm">
                <?php if (!empty($image)): ?>
                    <img src="<?php echo $image; ?>" class="card-img-top" style="max-height: 250px; object-fit: cover;">
                <?php endif; ?>
                <div class="card-body">
                    <h5 class="card-title"><?php echo htmlspecialchars($diaspora['titre']); ?></h5>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_diaspora.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>
<script src="assets/js/bootstrap.bundle.min.js"></script>

    <!-- Pied de page -->
 <?php include 'footer.php'; ?>

</body>
</html>




