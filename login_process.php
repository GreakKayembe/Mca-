<?php
session_start();
include 'config.php'; // Assurez-vous que ce fichier contient la connexion à la base de données

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username =htmlspecialchars(trim($_POST['nom']));
    $password = htmlspecialchars(trim($_POST['mot_de_passe']));
    
    if (empty($username) || empty($password)) {
        echo "<script>alert('Veuillez remplir tous les champs.'); window.location.href='login.php';</script>";
        exit();
    }
    
    $stmt = $conn->prepare("SELECT id, nom, mot_de_passe,role FROM utilisateurs WHERE nom = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        if($row && password_verify($password,$row['mot_de_passe'])) {
            if($row['role']=='super_admin'){
                $_SESSION['user_id']=$row['id'];
                $_SESSION['username']=$row['nom'];
                header("Location:dashboard.php");
            }elseif ($row['role']=='fédérale') {
                $_SESSION['user_id']=$row['id'];
                $_SESSION['username']=$row['nom'];
                header("Location:ajouter_membre.php");
                
            }else {
                $_SESSION['user_id']=$row['id'];
                $_SESSION['username']=$row['nom'];
                header("Location:dashboard2.php");
            }{
                

            }
        } else {
            echo "<script>alert('Mot de passe incorrect.'); window.location.href='login.php';</script>";
            exit();
        }
    } else {
        echo "<script>alert('Utilisateur introuvable.'); window.location.href='login.php';</script>";
        exit();
    }
}
?>
 