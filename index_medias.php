<?php
include("config.php");
$videos = mysqli_query($conn, "SELECT * FROM videos ORDER BY id DESC");
include("header.php");
?>


    <style>
        .video-card {
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .video-card video {
            width: 100%;
            border-radius: 10px 10px 0 0;
        }
        .video-title {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <p style="margin-top:100px;"></p>
<div class="container mt-4">
    <h3 class="mb-4">Nos vidéos</h3>

    <div class="mb-3">
        <input type="text" id="search" class="form-control" placeholder="Rechercher une vidéo...">
    </div>

    <div class="row" id="videoList">
        <?php while($row = mysqli_fetch_assoc($videos)) { ?>
        <div class="col-md-4 mb-4 video-item">
            <div class="card video-card">
                <video controls>
                    <source src="<?= $row['video_path'] ?>"  accept="video/*">
                    Votre navigateur ne supporte pas la lecture vidéo.
                </video>
                <div class="card-body">
                    <h6 class="video-title"><?= htmlspecialchars($row['titre']) ?></h6>
                    <a href="<?= $row['video_path'] ?>" download class="btn btn-sm btn-outline-secondary">Télécharger</a>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>

<script>
    document.getElementById('search').addEventListener('input', function () {
        let query = this.value.toLowerCase();
        let videos = document.querySelectorAll(".video-item");
        videos.forEach(video => {
            let title = video.querySelector(".video-title").textContent.toLowerCase();
            video.style.display = title.includes(query) ? "" : "none";
        });
    });
</script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
<?php  include("footer.php"); ?>
</html>
