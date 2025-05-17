<?php
require 'config.php';



include 'header.php';







if (!isset($_GET['id'])) {
    echo "<div class='alert alert-danger'>Actualité introuvable.</div>";
    exit;
}

$id = intval($_GET['id']);
$req_femme = $conn->query("SELECT * FROM femmes WHERE id = $id");
$femme = $req_femme->fetch_assoc();

if (!$femme) {
    echo "<div class='alert alert-danger'>Actualité non trouvée.</div>";
    exit;
}
?>
<p style="margin-top:100px;">

</p>

    <title><?php echo $actu['titre']; ?></title>
  
<body class="bg-light">
<div class="container mt-4">
    <h2><?php echo htmlspecialchars($femme['titre']); ?></h2>
    <marquee class="text-muted"><p class="text-muted">Publication du <?php echo date('d/m/Y', strtotime($femme['date_publication'])); ?></p></marquee>
    <hr>

    <?php
    $req_contenu_femme = $conn->query("SELECT * FROM contenus_femme WHERE femme_id = $id ORDER BY ordre");
    while ($cf = $req_contenu_femme->fetch_assoc()):
    ?>
        <div class="clearfix mb-4">
            <?php if (!empty($cf['image_path'])): ?>
                <img src="<?php echo $cf['image_path']; ?>" class="float-start me-3 mb-2" width="220">
            <?php endif; ?>
            <p style="text-align: justify;"><?php echo nl2br(htmlspecialchars($cf['paragraphe'])); ?></p>
        </div>
    <?php endwhile; ?>
    

    <div class="mt-4">
        <strong>Partager :</strong><br>
        <a class="btn btn-sm btn-outline-primary me-2" 
           href="https://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode("http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>" 
           target="_blank"><i class="ti ti-brand-facebook"></i></a>
        
        <a class="btn btn-sm btn-outline-primary me-2" 
           href="https://twitter.com/intent/tweet?text=<?php echo urlencode($femme['titre']); ?>" 
           target="_blank"><i class="ti ti-brand-twitter"></i></a>

        <a class="btn btn-sm btn-outline-success me-2"
           href="https://wa.me/?text=<?php echo urlencode($femme['titre'] . "\n\n" . "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>"
           target="_blank"><i class="ti ti-brand-whatsapp"></i></a>

        <button class="btn btn-sm btn-outline-secondary" onclick="copierLien()"><i class="ti ti-share"></i></button>
    </div>
</div>
<p></p>
<script src="assets/js/bootstrap.bundle.min.js"></script>

<script>
function copierLien() {
    const url = window.location.href;
    navigator.clipboard.writeText(url).then(() => {
        alert("Lien copié !");
    });
}
</script>
</body>
<?php  include 'footer.php'; ?>
</html>
