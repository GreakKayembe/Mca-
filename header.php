
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Le site officiel du Mouvement Congo en Avant  ,MCA, KAS KASONGO KALALO">
    <meta name="keywords" content="Mouvement Congo en Avant, MCA , lutte contre la corruption et  le detournement des deniées publiques">

    <META name="description" content="MCA" />
    <META name="keywords" content="MCA RDC" />
    <META name="description" content="Mouvement Congo en Avant" />
    <META name="keywords" content="MCA RDC" />
    <META name="description" content="KAS KASONGO KALALO" />
    <META name="keywords" content="MCA" />
    <META name="author" content="KakasoftDev" />
    <title>MCA</title>
	<link rel='shortcut icon' type='image/x-icon'  href="assets/images/logos.jpg" style="border-radius:20px;" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/tabler-icons/tabler-icons.css" rel="stylesheet">
    <style>
        .navbar {
            background-color: #B2D235; /* Vert pâle */
        }
        .navbar-brand, .nav-link {
            color: #ffffff !important; /* Blanc pour contraste */
        }
        .nav-link:hover {
            color: yellow !important; /* Jaune pâle */
        }
        .search-bar {
            width: 250px;
        }
        .hero-section {
            background: url('assets/images/img12.jpg') center/cover no-repeat;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }
        .hero-overlay {
            background: rgba(0, 0, 0, 0.5);
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.php">
                <img src="assets/images/Logos.jpg" alt="Logo" height="50" style="border-radius:25px;" class="me-2"><span style="color:yellow"></span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.php" hidden>Accueil</a></li>
                    <li class="nav-item"><a class="nav-link" href="index_apropos.php" hidden>Qui sommes nous </a></li>
                    <li class="nav-item"><a class="nav-link" href="index_historiques.php" hidden>Historiques</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="structuresDropdown" role="button" data-bs-toggle="dropdown" hidden>Structures spécialisées</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="index_jeunesse.php" >Jeunesse</a></li>
                            <li><a class="dropdown-item" href="index_femmes.php">Femmes</a></li>
                            <li><a class="dropdown-item" href="index_diaspora.php">Diaspora</a></li>
                            <li><a class="dropdown-item" href="index_cadres.php">Cadres</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="index_news_provinces.php" hidden>News de provinces</a></li>
                    <li class="nav-item"><a class="nav-link" href="index_medias.php" hidden>Médias</a></li>
                    <li class="nav-item"><a class="nav-link" href="index_documents.php" hidden>Nos documents</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.php" hidden>Contact</a></li>
                    
                    <li class="nav-item"><a class="nav-link" href="login.php"><i class="ti ti-login"></i></a></li>
                </ul>
               
            </div>
        </div>
    </nav>
