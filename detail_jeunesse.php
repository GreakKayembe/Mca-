<?php
require 'config.php';



include 'header.php';







if (!isset($_GET['id'])) {
    echo "<div class='alert alert-danger'>Actualité introuvable.</div>";
    exit;
}

$id = intval($_GET['id']);
$res = $conn->query("SELECT * FROM jeunesses WHERE id = $id");
$actu = $res->fetch_assoc();

if (!$actu) {
    echo "<div class='alert alert-danger'>Actualité non trouvée.</div>";
    exit;
}
?>
<p style="margin-top:100px;">

</p>

    <title><?php echo $actu['titre']; ?></title>
  
<body class="bg-light">
<div class="container mt-4">
    <h2><?php echo htmlspecialchars($actu['titre']); ?></h2>
    <marquee class="text-muted"><p class="text-muted">Publication du <?php echo date('d/m/Y', strtotime($actu['date_publication'])); ?></p></marquee>
    <hr>

    <?php
    $contenus = $conn->query("SELECT * FROM contenus_jeunesse WHERE jeunesse_id = $id ORDER BY ordre");
    while ($c = $contenus->fetch_assoc()):
    ?>
        <div class="clearfix mb-4">
            <?php if (!empty($c['image_path'])): ?>
                <img src="<?php echo $c['image_path']; ?>" class="float-start me-3 mb-2" width="220">
            <?php endif; ?>
            <p style="text-align: justify;"><?php echo nl2br(htmlspecialchars($c['paragraphe'])); ?></p>
        </div>
    <?php endwhile; ?>
    

    <div class="mt-4">
        <strong>Partager :</strong><br>
        <a class="btn btn-sm btn-outline-primary me-2" 
           href="https://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode("http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>" 
           target="_blank"><i class="ti ti-brand-facebook"></i></a>
        
        <a class="btn btn-sm btn-outline-primary me-2" 
           href="https://twitter.com/intent/tweet?text=<?php echo urlencode($actu['titre']); ?>" 
           target="_blank"><i class="ti ti-brand-twitter"></i></a>

           

      



        <a class="btn btn-sm btn-outline-success me-2"
           href="https://wa.me/?text=<?php echo urlencode($actu['titre'] . "\n\n" . "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>"
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
