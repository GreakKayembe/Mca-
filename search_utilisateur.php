<?php
require 'config.php';

$query = $_POST['query'];
$sql = "SELECT * FROM utilisateurs WHERE id LIKE '%$query%' OR nom LIKE '%$query%' ORDER BY date_creation DESC";
$result = $conn->query($sql);



while ($row = $result->fetch_assoc()) {
    echo "<tr>
            <td>{$row['id']}</td>
            <td>{$row['nom']}</td>
            <td>{$row['email']}</td>
            <td>{$row['mot_de_passe']}</td>
            <td>{$row['role']}</td>
            <td>{$row['date_creation']}</td>
            <td>
                <a href='modifier_utilisateur.php?id={$row['id']}' class='btn btn-warning btn-sm'><i class='ti ti-edit'></i></a>
                <button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}'><i class='ti ti-trash'></i></button>
            </td>
          </tr>";
}
?>
