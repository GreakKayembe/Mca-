<?php
require 'config.php';
include 'header.php';

// Récupération des documents
$sql = "SELECT * FROM documents ORDER BY id DESC";
$result = $conn->query($sql);
?>

<div class="container mt-4">
    <h2 class="text-center mb-4">Nos Documents</h2>
    
    <div class="list-group">
        <?php while ($row = $result->fetch_assoc()) : ?>
            <a href="documents/<?= $row['fichier']; ?>" target="_blank" class="list-group-item list-group-item-action">
                <i class="ti ti-file text-danger"></i> <?= htmlspecialchars($row['titre']); ?>
                <span class="badge bg-secondary float-end"><?= date("d/m/Y", strtotime($row['date_publication'])); ?></span>
            </a>
        <?php endwhile; ?>
    </div>
</div><p></p>
<p></p>

   

<script src="assets/js/bootstrap.bundle.min.js"></script>

 <!-- Pied de page -->
 <?php include 'footer.php'; ?>
