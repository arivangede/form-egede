<?php
// Koneksi ke database
require 'functions.php';

if (isset($_POST['kecamatan'])) {
    $kecamatan = $_POST['kecamatan'];

    // Mengambil data desa berdasarkan kecamatan terpilih
    $query_desa = "SELECT DISTINCT desa_kelurahan FROM data_region WHERE kecamatan = '$kecamatan'";
    $result_desa = $conn->query($query_desa);

    $desa_array = array();
    while ($row = $result_desa->fetch_assoc()) {
        $desa_array[] = $row['desa_kelurahan'];
    }

    echo json_encode($desa_array);
}

$conn->close();
