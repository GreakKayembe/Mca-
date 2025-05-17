<?php
require 'config.php';

// Récupération des actualités les plus récentes
$sql = "SELECT * FROM actualites ORDER BY id DESC LIMIT 4";
$actu_query = $conn->query($sql);

include 'header.php';
?>




    <!-- Section Héros -->
    <div class="hero-section">
        <div class="hero-overlay">
            <marquee behavior="" direction="left"><h1>Bienvenue sur le site officiel du <span style="color:yellow">Mouvement</span> <span style="color:black" >Congo</span> <span style="color:green">en Avant</span></h1></marquee>
            <p>Lutte contre le détournement, la corruption et l’impunité </p>
            <a href="adhesion.php" class="btn btn-warning">Adhérez maintenant</a>
        </div>
    </div>

    <!-- Carrousel d'actualités -->
    <div id="carouselExample" class="carousel slide my-5" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="assets/images/valeur.jpg" class="d-block w-100" alt="Actualité 1">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b1.jpg" class="d-block w-100" alt="Actualité 2">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b2.jpg" class="d-block w-100" alt="Actualité 3">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b3.jpg" class="d-block w-100" alt="Actualité 4">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b4.jpg" class="d-block w-100" alt="Actualité 5">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b5.jpg" class="d-block w-100" alt="Actualité 6">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b6.jpg" class="d-block w-100" alt="Actualité 7">
            </div>
            <div class="carousel-item">
                <img src="assets/images/b7.jpg" class="d-block w-100" alt="Actualité 8">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>
    
    <!-- Section Dernières nouvelles -->
    <div class="container mt-4">
    <h2 class="text-center mb-4">Dernières Actualités</h2>
    
    <div class="row">
        <?php while ($actu = $actu_query->fetch_assoc()):
            $id = $actu['id'];
            $contenu = $conn->query("SELECT * FROM actualite_contenus WHERE actualite_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
            $image = $contenu['image_path'];
            $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
        ?>
        <div class="col-md-6 mb-4">
            <div class="card h-100 shadow-sm">
                <?php if (!empty($image)): ?>
                    <img src="<?php echo $image; ?>" class="card-img-top" style="max-height: 250px; object-fit: cover;">
                <?php endif; ?>
                <div class="card-body">
                    <h5 class="card-title"><?php echo htmlspecialchars($actu['titre']); ?></h5>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_actualite.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>


<?php
// Récupération des structures spécialisées jeunesse
$sql = "SELECT * FROM jeunesses ORDER BY id DESC LIMIT 4";
$jeune_query = $conn->query($sql);
?>

<div class="container mt-4">
    <h2 class="text-center mb-4">Structures Spécialisées</h2>
    
    <div class="row">
        <?php while ($jeune = $jeune_query->fetch_assoc()):
            $id = $jeune['id'];
            $contenu = $conn->query("SELECT * FROM contenus_jeunesse WHERE jeunesse_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
            $image = $contenu['image_path'];
            $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
        ?>
        <div class="col-md-6 mb-4">
            <div class="card h-100 shadow-sm">
                <?php if (!empty($image)): ?>
                    <img src="<?php echo $image; ?>" class="card-img-top" style="max-height: 250px; object-fit: cover;">
                <?php endif; ?>
                <div class="card-body">
                    <h5 class="card-title"><?php echo htmlspecialchars($jeune['titre']); ?></h5>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_jeunesse.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>
<?php
// Récupération des structures spécialisées ligue des femmes
$sql = "SELECT * FROM femmes ORDER BY id DESC LIMIT 4";
$femme_query = $conn->query($sql);

?>

<div class="container mt-4">
    <h2 class="text-center mb-4"></h2>
    <div class="row">
        <?php while ($femme = $femme_query->fetch_assoc()):
            $id = $femme['id'];
            $contenu = $conn->query("SELECT * FROM contenus_femme WHERE femme_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
            $image = $contenu['image_path'];
            $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
        ?>
        <div class="col-md-6 mb-4">
            <div class="card h-100 shadow-sm">
                <?php if (!empty($image)): ?>
                    <img src="<?php echo $image; ?>" class="card-img-top" style="max-height: 250px; object-fit: cover;">
                <?php endif; ?>
                <div class="card-body">
                    <h5 class="card-title"><?php echo htmlspecialchars($femme['titre']); ?></h5>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_femme.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>

<?php
// Récupération des structures spécialisées diaspora
$sql = "SELECT * FROM diasporas ORDER BY id DESC LIMIT 4";
$diaspora_query = $conn->query($sql);

?>

<div class="container mt-4">
    <h2 class="text-center mb-4"></h2>
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



<?php
// Récupération des structures spécialisées cadres
$sql = "SELECT * FROM cadres ORDER BY id DESC LIMIT 4";
$cadre_query = $conn->query($sql);

?>

<div class="container mt-4">
    <h2 class="text-center mb-4"></h2>
    <div class="row">
        <?php while ($cadre = $cadre_query->fetch_assoc()):
            $id = $cadre['id'];
            $contenu = $conn->query("SELECT * FROM contenus_cadres WHERE cadre_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
            $image = $contenu['image_path'];
            $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
        ?>
        <div class="col-md-6 mb-4">
            <div class="card h-100 shadow-sm">
                <?php if (!empty($image)): ?>
                    <img src="<?php echo $image; ?>" class="card-img-top" style="max-height: 250px; object-fit: cover;">
                <?php endif; ?>
                <div class="card-body">
                    <h5 class="card-title"><?php echo htmlspecialchars($cadre['titre']); ?></h5>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_cadre.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>

<?php // Récupération des news provinces
$sql = "SELECT * FROM news_provinces ORDER BY id DESC LIMIT 10";
$prov_query = $conn->query($sql);

?>

<div class="container mt-4">
    <h2 class="text-center mb-4">News provinces</h2>
    <div class="row">
        <?php while ($prov = $prov_query->fetch_assoc()):
            $id = $prov['id'];
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
                    <h4 class="card-title"><?php echo htmlspecialchars($prov['province']); ?></h4>
                    <h6 class=""><?php echo htmlspecialchars($prov['titre']); ?></h6>
                    <p class="card-text"><?php echo $texte; ?></p>
                    <a href="detail_news_provinces.php?id=<?php echo $id; ?>" class="btn btn-primary"><i class='ti ti-arrow-right'></i>Lire plus</a>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>



    <!-- Pied de page -->
 <?php include 'footer.php'; ?>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>




