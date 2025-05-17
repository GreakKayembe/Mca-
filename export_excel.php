<?php
require_once 'config.php';

// Inclusion de la bibliothèque PHPExcel
require 'PHPExcel.php';

// Récupération des filtres
$annee = isset($_GET['annee']) ? $_GET['annee'] : '';
$province = isset($_GET['province']) ? $_GET['province'] : '';

// Requête SQL pour récupérer les données
$sql_membres = "SELECT COUNT(*) AS total FROM membres WHERE 1";
if ($annee != '') {
    $sql_membres .= " AND YEAR(date_inscription) = '$annee'";
}
if ($province != '') {
    $sql_membres .= " AND province_origine = '$province'";
}
$result_membres = mysqli_query($conn, $sql_membres);
$total_membres = mysqli_fetch_assoc($result_membres)['total'];

// Création du fichier Excel
$objPHPExcel = new PHPExcel();
$objPHPExcel->setActiveSheetIndex(0);
$sheet = $objPHPExcel->getActiveSheet();

// Titres des colonnes
$sheet->setCellValue('A1', 'Année')
      ->setCellValue('B1', 'Province')
      ->setCellValue('C1', 'Total des membres');

// Insertion des données
$sheet->setCellValue('A2', $annee ?: 'Toutes')
      ->setCellValue('B2', $province ?: 'Toutes')
      ->setCellValue('C2', $total_membres);

// Configuration du fichier en sortie
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="statistiques.xlsx"');
header('Cache-Control: max-age=0');

$writer = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$writer->save('php://output');
exit;
?>
