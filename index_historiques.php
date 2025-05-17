<?php
require 'config.php';

// Récupération des données historiques
$sql = "SELECT * FROM historique ORDER BY date_creation DESC LIMIT 1";
$result = $conn->query($sql);
$historique = $result->fetch_assoc();
?>
<?php include 'header.php'; ?>

<p style="margin-top:100px"></p>


<div class="container mt-4">
    
    <h2 class="text-center"><?= htmlspecialchars($historique['titre']); ?></h2>
    <div class="card">
        <div class="card-body">
            <p style="text-align:justify;"><?= nl2br(htmlspecialchars($historique['contenu'])); ?></p>

            <div class="mt-4">
                <strong>Partager :</strong><br>
                <a class="btn btn-sm btn-outline-primary me-2" 
                href="https://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode("http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>" 
                target="_blank"><i class="ti ti-brand-facebook"></i></a>
                
                <a class="btn btn-sm btn-outline-primary me-2" 
                href="https://twitter.com/intent/tweet?text=<?php echo urlencode($historique['titre']); ?>" 
                target="_blank"><i class="ti ti-brand-twitter"></i></a>


                <a class="btn btn-sm btn-outline-success me-2"
                href="https://wa.me/?text=<?php echo urlencode($historique['titre'] . "\n\n" . "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>"
                target="_blank"><i class="ti ti-brand-whatsapp"></i></a>

                <button class="btn btn-sm btn-outline-secondary" onclick="copierLien()"><i class="ti ti-share"></i></button>
            </div>
        </div>
    </div>
    <p></p>
    
</div>



<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>

<?php  include 'footer.php'; ?>

</html>
