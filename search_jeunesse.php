<?php
require 'config.php';

$query = $_POST['query'];
$sql = "SELECT * FROM jeunesses WHERE titre LIKE '%$query%' ORDER BY date_publication DESC";
$result = $conn->query($sql);

while ($row = $result ->fetch_assoc()) {
    $id = $row['id'];
    $contenu = $conn->query("SELECT * FROM contenus_jeunesse WHERE jeunesse_id = $id ORDER BY ordre ASC LIMIT 1")->fetch_assoc();
    $image = $contenu['image_path'];
    $texte = substr(strip_tags($contenu['paragraphe']), 0, 150) . '...';
echo "<tr>
<td>{$row['titre']}</td>
<td>" . substr($texte, 0, 100) . "...</td>
<td><img src=$image  width='50'></td>
<td>{$row['date_publication']}</td>
<td>
<a href='modifier_jeunesse.php?id={$row['id']}' class='btn btn-warning btn-sm'><i class='ti ti-edit'></i></a>
<button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}'><i class='ti ti-trash'></i></button>
</td>
</tr>";
}
?>
