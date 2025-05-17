<?php

include 'header.php';


?>

<?php
require 'config.php';

// Récupération des actualités les plus récentes
$sql = "SELECT * FROM news_provinces ORDER BY id DESC ";
$jeune_query = $conn->query($sql);

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
    <h2 class="text-center mb-4">Dernières actualités des provinces</h2>
    <div class="row">
        <?php while ($jeune = $jeune_query->fetch_assoc()):
            $id = $jeune['id'];
            $contenu = $conn->query("SELECT * FROM contenus_province WHERE province_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
            $image = $contenu['image_path'];
            $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
        ?>
        <div class="col-md-6 mb-4">
            <div class="card h-100 shadow-sm">
                <?php if (!empty($image)): ?>
                    <img src="<?php echo $image; ?>" class="card-img-top" style="max-height: 250px; object-fit: cover;">
                <?php endif; ?>
                <div class="card-body">
                    <h4 class="card-title"><?php echo htmlspecialchars($jeune['province']); ?></h4>
                    <h6 class=""><?php echo htmlspecialchars($jeune['titre']); ?></h6>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_news_provinces.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
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




