<?php
require 'config.php';

$query = $_POST['query'];
$sql = "SELECT * FROM documents WHERE titre LIKE '%$query%' OR fichier LIKE '%$query%' ORDER BY date_publication DESC";
$result = $conn->query($sql);

while ($row = $result->fetch_assoc()) {
    echo "<tr>
            <td>{$row['titre']}</td>
            <td>" . substr($row['fichier'], 0, 50) . "...</td>
            <td>{$row['date_publication']}</td>
            <td>
                <button class='btn btn-danger btn-sm delete-btn' data-id='{$row['id']}'><i class='ti ti-trash'></i></button>
            </td>
          </tr>";
}
?>
