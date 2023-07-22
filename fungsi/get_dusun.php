<?php
// Koneksi ke database
require 'functions.php';

if (isset($_POST['kecamatan']) && isset($_POST['desa'])) {
    $kecamatan = $_POST['kecamatan'];
    $desa = $_POST['desa'];

    // Mengambil data dusun berdasarkan desa terpilih
    $query_dusun = "SELECT dusun FROM data_region WHERE kecamatan = '$kecamatan' AND desa_kelurahan = '$desa'";
    $result_dusun = $conn->query($query_dusun);

    $dusun_array = array();
    while ($row = $result_dusun->fetch_assoc()) {
        $dusun_array[] = $row['dusun'];
    }

    echo json_encode($dusun_array);
}

$conn->close();
