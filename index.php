<?php

require 'fungsi/functions.php';
$data_penduduk = query("SELECT * FROM data_penduduk ORDER BY id DESC");

if (isset($_POST["cari"])) {

    $data_penduduk = cari($_POST["keyword"]);
}


?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <title>Halaman Admin</title>
</head>

<body>
    <div class="header">
        <div class="logo-header">
            <img src="img/logo.png" alt="logo">
            <p>PANEL DATA SURVEY</p>
        </div>
    </div>

    <div class="filter-panel-wrapper">
        <div class="filter-box">
            <div class="filter provinsi">
                <p class="title">Provinsi</p>
                <select name="provinsi" id="select-provinsi" disabled>
                    <option value="BALI">BALI</option>
                </select>
            </div>
            <div class="filter kota">
                <p class="title">Kota / Kabupaten</p>
                <select name="kota" id="select-kota" disabled>
                    <option value="Denpasar">Denpasar</option>
                </select>
            </div>
            <div class="filter kecamatan">
                <p class="title">Kecamatan</p>
                <select name="kecamatan" id="select-kecamatan">
                    <option value="Denpasar Utara">Denpasar Utara</option>
                    <option value="Denpasar Timur">Denpasar Timur</option>
                    <option value="Denpasar Barat">Denpasar Barat</option>
                    <option value="Denpasar Selatan">Denpasar Selatan</option>
                </select>
            </div>
            <div class="filter desa">
                <p class="title">Desa / Kelurahan</p>
                <select name="desa" id="select-desa">
                    <option value="Tegal Harum">Tegal Harum</option>
                    <option value="Pemecutan">Pemecutan</option>
                    <option value="Pemecutan Kelod">Pemecutan Kelod</option>
                    <option value="Padang Sambian">Padang Sambian</option>
                </select>
            </div>
            <div class="filter cari">
                <p class="title">Cari Berdasarkan</p>
                <select name="cariberdasarkan" id="select-cari">
                    <option value="NIK">NIK</option>
                    <option value="No. KK">No. KK</option>
                    <option value="Nama Kepala Keluarga">Nama Kepala Keluarga</option>
                </select>
            </div>
            <div class="filter for-cari">
                <form action="" method="post">
                    <input type="text" name="keyword" autofocus placeholder="Cari Disini" autocomplete="off" disabled>
                    <button type="submit" name="cari">Cari</button><br><br>
                </form>
            </div>

            <div class="btn-apply">
                <button>Tampil</button>
            </div>
        </div>
    </div>






    <div class="table-wrapper">
        <div class="table-wrapper-inner">
            <div class="table-box">
                <div class="limit-data-container">
                    <p>Jumlah Tampil : </p>
                    <select name="limit-data" id="limit-data-tampil">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="50">50</option>
                    </select>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Aksi</th>
                            <th>No.KK</th>
                            <th>Nama Kepala keluarga</th>
                            <th>Nama</th>
                            <th>NIK</th>
                            <th>Jenis Kelamin</th>
                            <th>Tempat Lahir</th>
                            <th>Tanggal Lahir</th>
                            <th>Alamat Domisili</th>
                            <th>Alamat KTP</th>
                            <th>Dusun</th>
                            <th>Desa/Kel</th>
                            <th>Kecamatan</th>
                            <th>Kota/Kab</th>
                            <th>Provinsi</th>
                            <th>Golongan Darah</th>
                            <th>No. Telp/Handphone</th>
                            <th>Starus Pernikahan</th>
                            <th>Agama</th>
                            <th>Cacat Fisik/Mental</th>
                            <th>Ket. Cacat</th>
                            <th>Suku Kebangsaan</th>
                            <th>Kewarganegaraan</th>
                            <th>Pendidikan Terakhir</th>
                            <th>Pekerjaan</th>
                            <th>Penghasilan</th>
                            <th>Kepemilikan Usaha</th>
                            <th>Ket.Usaha</th>
                            <th>Nama Usaha</th>
                            <th>Alamat Usaha</th>
                            <th>Kepemilikan Tempat Tinggal</th>
                            <th>Kondisi Karekteristik Rumah Tinggal</th>
                            <th>Ket. Tidak Layak Huni</th>
                            <th>Sumber Air Bersih</th>
                            <th>Kepemilikan MCK</th>
                            <th>Lokasi Pembuangan Air Limbah</th>
                            <th>Ketersediaan Wadah Persampahan</th>
                            <th>Jenis Pengelolaan Sampah</th>
                            <th>Nama Surveyor</th>
                            <th>Tanggal/Waktu Submit</th>
                            <th>koordinat</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($data_penduduk as $row) : ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td class="table-aksi">
                                    <a class="ubah" href="ubah.php?id=<?= $row["id"]; ?>">Ubah</a>
                                    <a class="hapus" href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('yakin hapus data ini?');">Hapus</a>
                                </td>
                                <td><?php echo $row["no_kk"] ?></td>
                                <td><?php echo $row["nama_kepala_keluarga"] ?></td>
                                <td><?php echo $row["nama"] ?></td>
                                <td><?php echo $row["nik"] ?></td>
                                <td><?php echo $row["jenis_kelamin"] ?></td>
                                <td><?php echo $row["tempat_lahir"] ?></td>
                                <td><?php echo $row["tanggal_lahir"] ?></td>
                                <td><?php echo $row["alamat_domisili"] ?></td>
                                <td><?php echo $row["alamat_ktp"] ?></td>
                                <td><?php echo $row["dusun"] ?></td>
                                <td><?php echo $row["desa_kel"] ?></td>
                                <td><?php echo $row["kecamatan"] ?></td>
                                <td><?php echo $row["kota_kab"] ?></td>
                                <td><?php echo $row["provinsi"] ?></td>
                                <td><?php echo $row["golongan_darah"] ?></td>
                                <td><?php echo $row["no_telp_handphone"] ?></td>
                                <td><?php echo $row["status_pernikahan"] ?></td>
                                <td><?php echo $row["agama"] ?></td>
                                <td><?php echo $row["cacat_fisik_mental"] ?></td>
                                <td><?php echo $row["keterangan_cacat"] ?></td>
                                <td><?php echo $row["suku_kebangsaan"] ?></td>
                                <td><?php echo $row["kewarganegaraan"] ?></td>
                                <td><?php echo $row["pendidikan_terakhir"] ?></td>
                                <td><?php echo $row["pekerjaan"] ?></td>
                                <td><?php echo $row["penghasilan"] ?></td>
                                <td><?php echo $row["kepemilikan_usaha"] ?></td>
                                <td><?php echo $row["keterangan_usaha"] ?></td>
                                <td><?php echo $row["nama_usaha"] ?></td>
                                <td><?php echo $row["alamat_usaha"] ?></td>
                                <td><?php echo $row["kepemilikan_tempat_tinggal"] ?></td>
                                <td><?php echo $row["kondisi_karakteristik_rumah_tinggal"] ?></td>
                                <td><?php echo $row["keterangan_rumah"] ?></td>
                                <td><?php echo $row["sumber_air_bersih"] ?></td>
                                <td><?php echo $row["kepemilikan_mck"] ?></td>
                                <td><?php echo $row["lokasi_pembuangan_air_limbah"] ?></td>
                                <td><?php echo $row["ketersediaan_wadah_persampahan"] ?></td>
                                <td><?php echo $row["jenis_pengelolaan_sampah"] ?></td>
                                <td><?php echo $row["nama_surveyor"] ?></td>
                                <td><?php echo $row["tanggal_waktu"] ?></td>
                                <td><?php echo $row["koordinat"] ?></td>

                            </tr>
                            <?php $i++; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>





</body>

</html>