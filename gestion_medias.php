<?php
require 'config.php';
session_start();


if (!isset($_SESSION['username'])){
    header("Location: login.php");
    die();
}

$videos = mysqli_query($conn, "SELECT * FROM videos ORDER BY id DESC");

include("header_dashboard.php");
?>

    <style>
        .video-container video {
            width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <h4>Gestion du Médiathèque</h4>

    <a href="ajouter_videos.php" class="btn btn-success" ><i class="ti ti-plus"></i>Ajouter</a>  
    <a href="dashboard.php" class="btn btn-info"><i class="ti ti-arrow-back-up"></i>Retour</a><p></p> 


    <div class="mb-3">
        <input type="text" id="search" class="form-control" placeholder="Rechercher une vidéo par titre...">
    </div>

    <table class="table table-bordered table-striped" id="videosTable">
        <thead class="table-dark">
            <tr>
                <th>Titre</th>
                <th>Vidéo</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; while($row = mysqli_fetch_assoc($videos)) { ?>
                <tr>
                
                    <td class="video-title"><?= htmlspecialchars($row['titre']) ?></td>
                    <td class="video-container">
                        <video controls>
                            <source src="<?= $row['video_path'] ?>" type="video/mp4">
                            Votre navigateur ne prend pas en charge la lecture vidéo.
                        </video>
                        <a href="<?= $row['video_path'] ?>" download class="btn btn-sm btn-outline-secondary mt-1">Télécharger</a>
                    </td>
                    <td>
                        <a href="modifier_video.php?id=<?= $row['id'] ?>" class="btn btn-warning btn-sm">Modifier</a>
                        <a href="delete_video.php?id=<?= $row['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Supprimer cette vidéo ?')">Supprimer</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>

<script>
    document.getElementById('search').addEventListener('input', function () {
        let query = this.value.toLowerCase();
        let rows = document.querySelectorAll("#videosTable tbody tr");
        rows.forEach(row => {
            let title = row.querySelector(".video-title").textContent.toLowerCase();
            row.style.display = title.includes(query) ? "" : "none";
        });
    });
</script>
</body>
</html>
