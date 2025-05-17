<?php
require 'config.php';

$query = $_POST['query'];
$sql = "SELECT * FROM membres WHERE nom LIKE '%$query%' OR sexe LIKE '%$query%' OR post_nom LIKE '%$query%' OR province_origine LIKE '%$query%' OR federation LIKE '%$query%' ORDER BY date_inscription DESC";
$result = $conn->query($sql);

while ($row = $result->fetch_assoc()) {
    echo "<tr>
                        <td>{$row['nom']}</td>
                        <td>{$row['post_nom']}</td>
                        <td>{$row['prenom']}</td>
                        <td>{$row['sexe']}</td>
                        <td>{$row['date_naissance']}</td>
                        <td>{$row['etat_civil']}</td>
                        <td>{$row['province_origine']}</td>
                        <td>{$row['federation']}</td>
                        <td>{$row['adresse']}</td>
                        <td>{$row['telephone']}</td>
                        <td>{$row['email']}</td>
                        <td>{$row['date_inscription']}</td>
                        <td>
                            <a href='modifier_membre.php?id={$row['id']}' class='btn btn-warning btn-sm' style='font-size:9px'><i class='ti ti-edit'></i></a>
                            <button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}' style='font-size:9px'><i class='ti ti-trash'></i></button>
                        </td>
                      </tr>";
}
?>
