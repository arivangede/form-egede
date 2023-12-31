<?php




//koneksi ke database
$conn = mysqli_connect("localhost","root","root","form-egede");



function query($query){

    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];

    while( $row = mysqli_fetch_assoc($result) ) {

        $rows[] = $row;

    }

    return $rows;

}

function input_data($data){

    global $conn;

    $no_kk = htmlspecialchars($data["no_kk"]);
    $nama_kk = htmlspecialchars($data["nama_kepala_keluarga"]); 
    $nama = htmlspecialchars($data["nama"]); 
    $nik = htmlspecialchars($data["nik"]);
    $pilihan_jk = htmlspecialchars($data["jenis_kelamin"]);
    $tempat_lahir = htmlspecialchars($data["tempat_lahir"]);
    $tanggal_lahir = htmlspecialchars($data["tanggal_lahir"]);
    $alamat_tinggal = htmlspecialchars($data["alamat_tinggal"]);
    $dusun = htmlspecialchars($data["dusun"]);
    $desa_kel = htmlspecialchars($data["desa_kel"]);
    $kecamatan = htmlspecialchars($data["kecamatan"]);
    $kota_kab = htmlspecialchars($data["kota_kab"]);
    $provinsi = htmlspecialchars($data["provinsi"]);
    $golongan_darah = htmlspecialchars($data["golongan_darah"]);
    $no_telp_handphone = htmlspecialchars($data["no_telp_handphone"]);
    $status_pernikahan = htmlspecialchars($data["status_pernikahan"]);
    $agama = htmlspecialchars($data["agama"]);
    $pilihan_cacat = htmlspecialchars($data["pilihan_cacat"]);
    $pilihan_jika_ada_cacat = ($data["pilihan_jika_ada_cacat"]);
    $suku_kebangsaan = htmlspecialchars($data["suku_kebangsaan"]);
    $pilihan_warga_negara = htmlspecialchars($data["pilihan_warga_negara"]);
    $pendidikan_terakhir = htmlspecialchars($data["pendidikan_terakhir"]);
    $pekerjaan = htmlspecialchars($data["pekerjaan"]);
    $penghasilan = htmlspecialchars($data["penghasilan"]);
    $pilihan_kepemilikan_usaha = htmlspecialchars($data["pilihan_kepemilikan_usaha"]);
    $pilihan_jika_ada = ($data["pilihan_jika_ada"]);
    $nama_usaha = htmlspecialchars($data["nama_usaha"]);
    $alamat_usaha = htmlspecialchars($data["alamat_usaha"]);
    $kepemilikan_tempat_tinggal = htmlspecialchars($data["kepemilikan_tempat_tinggal"]);
    $pilihan_kondisi_rumah = htmlspecialchars($data["pilihan_kondisi_rumah"]);
    $pilihan_jika_tidak_layak = ($data["pilihan_jika_tidak_layak"]);
    $sumber_air_bersih = htmlspecialchars($data["sumber_air_bersih"]);
    $kepemilikan_mck = htmlspecialchars($data["kepemilikan_mck"]);
    $lokasi_pembuangan_air_limbah = htmlspecialchars($data["lokasi_pembuangan_air_limbah"]);
    $ketersediaan_persampahan = htmlspecialchars($data["ketersediaan_persampahan"]);
    $jenis_pengelolaan_sampah = htmlspecialchars($data["jenis_pengelolaan_sampah"]);


    $query = "INSERT INTO data_penduduk VALUES 
    ('','$no_kk','$nama_kk','$nama','$nik','$pilihan_jk','$tempat_lahir','$tanggal_lahir','$alamat_tinggal','$dusun','$desa_kel','$kecamatan',
    '$kota_kab','$provinsi','$golongan_darah','$no_telp_handphone','$status_pernikahan','$agama','$pilihan_cacat','$pilihan_jika_ada_cacat','$suku_kebangsaan','$pilihan_warga_negara',
    '$pendidikan_terakhir','$pekerjaan','$penghasilan','$pilihan_kepemilikan_usaha',' $pilihan_jika_ada','$nama_usaha','$alamat_usaha','$kepemilikan_tempat_tinggal',
    '$pilihan_kondisi_rumah','$pilihan_jika_tidak_layak','$sumber_air_bersih','$kepemilikan_mck','$lokasi_pembuangan_air_limbah','$ketersediaan_persampahan','$jenis_pengelolaan_sampah')";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}


function edit_data($data){

    global $conn;

    $id = $data["id"];

    $no_kk = htmlspecialchars($data["no_kk"]);
    $nama_kk = htmlspecialchars($data["nama_kepala_keluarga"]); 
    $nama = htmlspecialchars($data["nama"]); 
    $nik = htmlspecialchars($data["nik"]);
    $pilihan_jk = htmlspecialchars($data["jenis_kelamin"]);
    $tempat_lahir = htmlspecialchars($data["tempat_lahir"]);
    $tanggal_lahir = htmlspecialchars($data["tanggal_lahir"]);
    $alamat_tinggal = htmlspecialchars($data["alamat_tinggal"]);
    $dusun = htmlspecialchars($data["dusun"]);
    $desa_kel = htmlspecialchars($data["desa_kel"]);
    $kecamatan = htmlspecialchars($data["kecamatan"]);
    $kota_kab = htmlspecialchars($data["kota_kab"]);
    $provinsi = htmlspecialchars($data["provinsi"]);
    $golongan_darah = htmlspecialchars($data["golongan_darah"]);
    $no_telp_handphone = htmlspecialchars($data["no_telp_handphone"]);
    $status_pernikahan = htmlspecialchars($data["status_pernikahan"]);
    $agama = htmlspecialchars($data["agama"]);
    $pilihan_cacat = htmlspecialchars($data["pilihan_cacat"]);
    $pilihan_jika_ada_cacat = ($data["pilihan_jika_ada_cacat"]);
    $suku_kebangsaan = htmlspecialchars($data["suku_kebangsaan"]);
    $pilihan_warga_negara = htmlspecialchars($data["pilihan_warga_negara"]);
    $pendidikan_terakhir = htmlspecialchars($data["pendidikan_terakhir"]);
    $pekerjaan = htmlspecialchars($data["pekerjaan"]);
    $penghasilan = htmlspecialchars($data["penghasilan"]);
    $pilihan_kepemilikan_usaha = htmlspecialchars($data["pilihan_kepemilikan_usaha"]);
    $pilihan_jika_ada = ($data["pilihan_jika_ada"]);
    $nama_usaha = htmlspecialchars($data["nama_usaha"]);
    $alamat_usaha = htmlspecialchars($data["alamat_usaha"]);
    $kepemilikan_tempat_tinggal = htmlspecialchars($data["kepemilikan_tempat_tinggal"]);
    $pilihan_kondisi_rumah = htmlspecialchars($data["pilihan_kondisi_rumah"]);
    $pilihan_jika_tidak_layak = ($data["pilihan_jika_tidak_layak"]);
    $sumber_air_bersih = htmlspecialchars($data["sumber_air_bersih"]);
    $kepemilikan_mck = htmlspecialchars($data["kepemilikan_mck"]);
    $lokasi_pembuangan_air_limbah = htmlspecialchars($data["lokasi_pembuangan_air_limbah"]);
    $ketersediaan_persampahan = htmlspecialchars($data["ketersediaan_persampahan"]);
    $jenis_pengelolaan_sampah = htmlspecialchars($data["jenis_pengelolaan_sampah"]);


    $query = "UPDATE data_penduduk SET 
    no_kk = '$no_kk',
    nama_kepala_keluarga = '$nama_kk',
    nama = '$nama',
    nik = '$nik',
    jenis_kelamin = '$pilihan_jk',
    tempat_lahir = '$tempat_lahir',
    tanggal_lahir = '$tanggal_lahir',
    alamat_tinggal = '$alamat_tinggal',
    dusun = '$dusun',
    desa_kel = '$desa_kel',
    kecamatan = '$kecamatan',
    kota_kab = '$kota_kab',
    provinsi = '$provinsi',
    golongan_darah = '$golongan_darah',
    no_telp_handphone = '$no_telp_handphone',
    status_pernikahan = '$status_pernikahan',
    agama = '$agama',
    cacat_fisik_mental = '$pilihan_cacat',
    keterangan_cacat = '$pilihan_jika_ada_cacat',
    suku_kebangsaan = '$suku_kebangsaan',
    kewarganegaraan = '$pilihan_warga_negara',
    pendidikan_terakhir = '$pendidikan_terakhir',
    pekerjaan = '$pekerjaan',
    penghasilan = '$penghasilan',
    kepemilikan_usaha= '$pilihan_kepemilikan_usaha',
    keterangan_usaha = '$pilihan_jika_ada',
    nama_usaha = '$nama_usaha',
    alamat_usaha = '$alamat_usaha',
    kepemilikan_tempat_tinggal = '$kepemilikan_tempat_tinggal',
    kondisi_karakteristik_rumah_tinggal = '$pilihan_kondisi_rumah',
    keterangan_rumah = '$pilihan_jika_tidak_layak',
    sumber_air_bersih = '$sumber_air_bersih',
    kepemilikan_mck = '$kepemilikan_mck',
    lokasi_pembuangan_air_limbah = '$lokasi_pembuangan_air_limbah',
    ketersediaan_wadah_persampahan = '$ketersediaan_persampahan',
    jenis_pengelolaan_sampah ='$jenis_pengelolaan_sampah' 
    WHERE id = $id ";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}


function hapus($id){

    global $conn;

    mysqli_query($conn, "DELETE FROM data_penduduk WHERE id = $id");
    
    return mysqli_affected_rows($conn);
}


function cari($keyword){


    $query = "SELECT * FROM data_penduduk WHERE 
    nama LIKE '%$keyword%'OR
    no_kk LIKE '%$keyword%' OR
    nik LIKE '%$keyword%'OR
    nama_kepala_keluarga LIKE '%$keyword%'
    ";

    return query($query);
}
