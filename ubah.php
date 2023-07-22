<?php
require 'fungsi/functions.php';

$id = $_GET["id"];
// var_dump($id);

$penduduk = query("SELECT * FROM data_penduduk WHERE id = $id")[0];
// var_dump($penduduk);

if (isset($_POST["submit"])) {


    if (edit_data($_POST) > 0) {

        echo "
        <script>
            alert('data berhasil diubah');
            document.location.href = 'index.php';
        </script>
    ";
    } else {
        echo "
        <script>
            alert('data gagal diubah');
            document.location.href = 'tambah.php';
        </script> 
    
    ";
    }
}




?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ubah Data Penduduk</title>
</head>

<body>
    <h1>Ubah data Penduduk</h1>


    <form action="" method="post">

        <input type="hidden" name="id" value="<?= $penduduk["id"]; ?> ">

        <ul>

            <li>

                <label for="no_kk">No KK</label>
                <input type="text" name="no_kk" id="" required value=" <?= $penduduk["no_kk"]; ?> ">


            </li>
            <li>

                <label for="nama"> Nama Kepala Keluarga </label>
                <input type="text" name="nama_kepala_keluarga" id="nama" required value="  <?= $penduduk["nama_kepala_keluarga"]; ?> ">

            </li>
            <li>

                <label for="nama">Nama </label>
                <input type="text" name="nama" id="nama" required value=" <?= $penduduk["nama"]; ?> ">


            </li>
            <li>

                <label for="nik">Nik </label>
                <input type="text" name="nik" id="nik" required value=" <?= $penduduk["nik"]; ?> ">


            </li>
            <li>

                <label for="pilih_jk">Pilih Jenis Kelamin</label>
                <input type="text" name="jenis_kelamin" id="pilih_jk" required value=" <?= $penduduk["jenis_kelamin"]; ?> ">


            </li>
            <li>

                <label for="tempat">Tempat Lahir </label>
                <input type="text" name="tempat_lahir" id="tempat" required value=" <?= $penduduk["tempat_lahir"]; ?> ">


            </li>
            <li>

                <label for="tanggal">Tanggal Lahir</label>
                <input type="text" name="tanggal_lahir" id="tanggal" required value=" <?= $penduduk["tanggal_lahir"]; ?> ">


            </li>
            <li>

                <label for="alamat">Alamat Tinggal</label>
                <input type="text" name="alamat_tinggal" id="alamat" required value=" <?= $penduduk["alamat_tinggal"]; ?> ">


            </li>
            <li>

                <label for="dusun">Dusun</label>
                <input type="text" name="dusun" id="dusun" required value=" <?= $penduduk["dusun"]; ?> ">


            </li>
            <li>

                <label for="desa/kel">Desa/Kelurahan</label>
                <input type="text" name="desa_kel" id="desa/kel" required value=" <?= $penduduk["desa_kel"]; ?> ">


            </li>
            <li>

                <label for="kecamatan">Kecamatan</label>
                <input type="text" name="kecamatan" id="kecamatan" required value=" <?= $penduduk["kecamatan"]; ?> ">


            </li>
            <li>

                <label for="kota/kab">Kota/Kabupaten </label>
                <input type="text" name="kota_kab" id="kota/kab" required value=" <?= $penduduk["kota_kab"]; ?> ">


            </li>
            <li>

                <label for="provinsi">Provinsi </label>
                <input type="text" name="provinsi" id="provinsi" required value=" <?= $penduduk["provinsi"]; ?> ">


            </li>
            <li>

                <label for="goldar">Golongan Darah</label>
                <input type="text" name="golongan_darah" id="goldar" required value=" <?= $penduduk["golongan_darah"]; ?> ">


            </li>
            <li>

                <label for="handphone">No. Telp/Handphone</label>
                <input type="text" name="no_telp_handphone" id="handphone" required value=" <?= $penduduk["no_telp_handphone"]; ?> ">


            </li>
            <li>

                <label for="status">Status Perniakahan</label>
                <input type="text" name="status_pernikahan" id="status" required value=" <?= $penduduk["status_pernikahan"]; ?> ">


            </li>
            <li>

                <label for="agama">Agama</label>
                <input type="text" name="agama" id="agama" required value=" <?= $penduduk["agama"]; ?> ">


            </li>
            <li>

                <label for="pilihan-cacat">Cacat Fisik/Menetal</label>
                <input type="text" name="pilihan_cacat" id="pilihan cacat" required value=" <?= $penduduk["cacat_fisik_mental"]; ?> ">


            </li>
            <li>

                <label for="pilihan-jika-ada">Keterangan Cacat</label>
                <input type="text" name="pilihan_jika_ada_cacat" id="pilihan-jika-ada" required value=" <?= $penduduk["keterangan_cacat"]; ?> ">


            </li>
            <li>

                <label for="suku-kebangsaan">Suku Kebangsaan</label>
                <input type="text" name="suku_kebangsaan" id="suku-kebangsaan" required value=" <?= $penduduk["suku_kebangsaan"]; ?> ">


            </li>
            <li>

                <label for="pilihan-warga-negara">Keterangan Kewarganegaraan</label>
                <input type="text" name="pilihan_warga_negara" id="pilihan-warga-negara" required value=" <?= $penduduk["kewarganegaraan"]; ?> ">


            </li>
            <li>

                <label for="pendidikan-terakhir">Pendidikan Terakhir </label>
                <input type="text" name="pendidikan_terakhir" id="pendidikan-terakir" required value=" <?= $penduduk["pendidikan_terakhir"]; ?> ">


            </li>
            <li>

                <label for="pekerjaan">Pekerjaan</label>
                <input type="text" name="pekerjaan" id="pekerjaan" required value=" <?= $penduduk["pekerjaan"]; ?> ">


            </li>
            <li>

                <label for="penghasilan">Penghasilan</label>
                <input type="text" name="penghasilan" id="penghasilan" required value=" <?= $penduduk["penghasilan"]; ?> ">


            </li>
            <li>

                <label for="pilihana-kepemilikan-usaha">Kepemilikan Usaha</label>
                <input type="text" name="pilihan_kepemilikan_usaha" id="pilihana-kepemilikan-usaha" required value=" <?= $penduduk["kepemilikan_usaha"]; ?> ">


            </li>
            <li>

                <label for="pilihan-usaha">Keterangan Usaha</label>
                <input type="text" name="pilihan_jika_ada" id="pilihan-usaha" required value=" <?= $penduduk["keterangan_usaha"]; ?> ">


            <li>

                <label for="penghasilan">Penghasilan</label>
                <input type="text" name="penghasilan" id="penghasilan" required value=" <?= $penduduk["penghasilan"]; ?> ">


            </li>
            </li>
            <li>

                <label for="nama-usaha">Nama Usaha</label>
                <input type="text" name="nama_usaha" id="nama-usaha" required value=" <?= $penduduk["nama_usaha"]; ?> ">


            </li>
            <li>

                <label for="alamat-usaha">Alamat Usaha</label>
                <input type="text" name="alamat_usaha" id="alamat-usaha" required value=" <?= $penduduk["alamat_usaha"]; ?> ">


            </li>
            <li>

                <label for="kepemilikan-tempat-tinggal">Kepemilikan Tempat Tinggal</label>
                <input type="text" name="kepemilikan_tempat_tinggal" id="kepemilikan-tempat-tinggal" required value=" <?= $penduduk["kepemilikan_tempat_tinggal"]; ?> ">


            </li>
            <li>

                <label for="kondisi-karakteristik-tempat-tinggal">Kondisi/Karakteristik Tempat Tinggal </label>
                <input type="text" name="pilihan_kondisi_rumah" id="kondisi-karakteristik-tempat-tinggal" required value=" <?= $penduduk["kondisi_karakteristik_rumah_tinggal"]; ?> ">


            </li>
            <li>

                <label for="pilihan-jika-tidak-layak">Keterangan Kondisi Rumah</label>
                <input type="text" name="pilihan_jika_tidak_layak" id="pilihan-jika-tidak-layak" required value=" <?= $penduduk["keterangan_rumah"]; ?> ">


            </li>
            <li>

                <label for="sumber-air-bersih">Sumber Air Bersih</label>
                <input type="text" name="sumber_air_bersih" id="sumber-air-bersih" required value=" <?= $penduduk["sumber_air_bersih"]; ?> ">


            </li>
            <li>

                <label for="kepemilikan-mck">Kepemilikan MCK</label>
                <input type="text" name="kepemilikan_mck" id="kepemilikan-mck" required value=" <?= $penduduk["kepemilikan_mck"]; ?> ">


            </li>
            <li>

                <label for="lokasi-pembuangan-air-limbah">Lokasi Pembuangan Air Limbah</label>
                <input type="text" name="lokasi_pembuangan_air_limbah" id="lokasi-pembuangan-air-limbah" required value=" <?= $penduduk["lokasi_pembuangan_air_limbah"]; ?> ">


            </li>
            <li>

                <label for="ketersediaan-persampahan">Ketersediaan Wadah Persampahan</label>
                <input type="text" name="ketersediaan_persampahan" id="ketersediaan_persampahan" required value=" <?= $penduduk["ketersediaan_wadah_persampahan"]; ?> ">


            </li>
            <li>

                <label for="jenis-pengelolaan-sampah">Jenis Pengelolaan sampah</label>
                <input type="text" name="jenis_pengelolaan_sampah" id="jenis-pengelolaan-sampah" required value=" <?= $penduduk["jenis_pengelolaan_sampah"]; ?> ">


            </li>
            <li>
                <button type="submit" name="submit">Ubah Data</Datag></button>
            </li>
        </ul>


    </form>
</body>

</html>