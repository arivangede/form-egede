<?php
require 'fungsi/functions.php';
session_start();

if (!isset($_SESSION['login'])) {
    header('Location: login.php');
}

if (isset($_POST["submit"])) {
    if (input_data($_POST) > 0) {
        $nama_surveyor = $_SESSION['username'];
        date_default_timezone_set('Asia/Singapore');
        $tanggal_waktu = date('Y-m-d H:i:s'); // Ambil tanggal dan waktu saat ini

        echo "
        <script>
            alert('data berhasil ditambahkan');
            document.location.href = 'form-pertanyaan.php';
        </script>
    ";
    } else {
        echo "
        <script>
            alert('data gagal ditambahkan');
            document.location.href = 'form-pertanyaan.php';
        </script> 
    
    ";
    }
}

$kabupaten = $_SESSION['kabupaten'];
$kecamatan = $_SESSION['kecamatan'];
$desa = $_SESSION['desa'];
$dusun = $_SESSION['dusun'];


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/form.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <title>Form-Pertanyaan | e-GeDe</title>
</head>

<body>
    <header>
        <nav class="sidebar-form">
            <div class="logo-sidebar">
                <img src="img/logo.png" alt="logo">
                <button>
                    <i class='bx bx-log-out-circle'></i>
                    <h3>kembali</h3>
                </button>
            </div>

            <div class="nav-link">
                <a href="#data-diri">Data Diri</a>
                <a href="#sosial-ekonomi">Sosial Ekonomi</a>
                <a href="#pemukiman">Pemukiman</a>
            </div>
        </nav>
    </header>

    <div class="form-pertanyaan">
        <section id="data-diri">
            <div class="card-container">
                <div class="section-title">
                    <h1>Data Diri</h1>
                </div>
                <div class="section-body">
                    <form action="" method="post">
                        <div class="pertanyaan">
                            <label for="">No. KK<span>*</span></label>
                            <input name="no_kk" type="text" placeholder="Masukan No KK" id="no-kk" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label for="">Nama Kepala Keluarga<span>*</span></label>
                            <input name="nama_kepala_keluarga" type="text" placeholder="Masukan Nama Kepala Keluarga" id="nama-kepala-keluarga" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label for="">Nama<span>*</span></label>
                            <input name="nama" type="text" placeholder="Masukan Nama" id="nama" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label for="">NIK<span>*</span></label>
                            <input name="nik" type="text" placeholder="Masukan NIK" id="nik" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Jenis Kelamin<span>*</span></label>
                            <div class="pilihan-radio">
                                <div class="pilihan">
                                    <input type="radio" name="jenis_kelamin" id="laki-laki" value="laki-laki">
                                    <label for="laki-laki">Laki-laki</label>
                                </div>
                                <div class="pilihan">
                                    <input type="radio" name="jenis_kelamin" id="perempuan" value="perempuan">
                                    <label for="perempuan">Perempuan</label>
                                </div>
                            </div>
                        </div>
                        <div class="pertanyaan">
                            <label for="">Tempat Lahir<span>*</span></label>
                            <input name="tempat_lahir" type="text" placeholder="Masukan Tempat Lahir" id="tempat-lahir" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Tanggal Lahir<span>*</span></label>
                            <input name="tanggal_lahir" type="date" id="tempat-lahir" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Alamat Tinggal<span>*</span></label>
                            <input name="alamat_tinggal" type="text" id="alamat-tinggal" placeholder="Masukan Alamat Tinggal" value="" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Dusun<span>*</span></label>
                            <input name="dusun" type="text" id="dusun" placeholder="Masukan Dusun" value="<?= $dusun; ?>" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Desa/Kel<span>*</span></label>
                            <input name="desa_kel" type="text" id="desa-kelurahan" placeholder="Masukan Desa/Kelurahan" value="<?= $desa; ?>" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Kecamatan<span>*</span></label>
                            <input name="kecamatan" type="text" id="kecamatan" placeholder="Masukan Kecamatan" value="<?= $kecamatan; ?>" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Kota/Kab<span>*</span></label>
                            <input name="kota_kab" type="text" id="kota-kab" placeholder="Masukan Kota/Kabupaten" value="<?= $kabupaten; ?>" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Provinsi<span>*</span></label>
                            <input name="provinsi" type="text" id="provinsi" placeholder="Masukan Provinsi" value="Bali" required>
                        </div>
                        <div class="pertanyaan">
                            <label>Golongan Darah<span>*</span></label>
                            <div class="pilihan-radio">
                                <div class="pilihan">
                                    <input type="radio" name="golongan_darah" id="A" value="A">
                                    <label for="A">A</label>
                                </div>
                                <div class="pilihan">
                                    <input type="radio" name="golongan_darah" id="B" value="B">
                                    <label for="B">B</label>
                                </div>
                                <div class="pilihan">
                                    <input type="radio" name="golongan_darah" id="O" value="O">
                                    <label for="O">O</label>
                                </div>
                                <div class="pilihan">
                                    <input type="radio" name="golongan_darah" id="AB" value="AB">
                                    <label for="AB">AB</label>
                                </div>
                            </div>
                        </div>
                        <div class="pertanyaan">
                            <label>No. Telp/Handphone<span>*</span></label>
                            <input name="no_telp_handphone" type="text" id="no-telp-hp" placeholder="Masukan No. Telp/Handphone" value="" required>
                        </div>
                </div>
            </div>
        </section>
        <section id="sosial-ekonomi">
            <div class="card-container">
                <div class="section-title">
                    <h1>Sosial-Ekonomi</h1>
                </div>
                <div class="section-body">
                    <div class="pertanyaan">
                        <label for="">Status Pernikahan<span>*</span></label>
                        <select name="status_pernikahan" id="status-pernikahan">
                            <option value="-">- Pilih -</option>
                            <option value="Belum Menikah">Belum Menikah</option>
                            <option value="Menikah">Menikah</option>
                            <option value="Cerai Pisah">Cerai Pisah</option>
                            <option value="Cerai Mati">Cerai Mati</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Agama<span>*</span></label>
                        <select name="agama" id="agama">
                            <option value="-">- Pilih -</option>
                            <option value="Hindu">Hindu</option>
                            <option value="Islam">Islam</option>
                            <option value="Kristen Katolik">Kristen Katolik</option>
                            <option value="Kristen Protestan">Kristen Protestan</option>
                            <option value="Buddha">Buddha</option>
                            <option value="Khonghucu">Khonghucu</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Cacat Fisik/Mental<span>*</span></label>
                        <div class="pilihan-radio">
                            <div class="pilihan">
                                <input type="radio" name="pilihan_cacat" id="ada-cacat" value="ada">
                                <label for="ada-cacat">Ada</label>
                                <select name="pilihan_jika_ada_cacat" id="pilihan-jika-ada-cacat" disabled>
                                    <option value="-">- Pilih -</option>
                                    <option value="Tuna Rungu">Tuna Rungu</option>
                                    <option value="Tuna Wicara">Tuna Wicara</option>
                                    <option value="Tuna Netra">Tuna Netra</option>
                                    <option value="Tuna Daksa">Tuna Daksa</option>
                                    <option value="Tuna Grahita">Tuna Grahita</option>
                                    <option value="Tuna Ganda">Tuna Ganda</option>
                                </select>
                            </div>
                            <div class="pilihan">
                                <input type="radio" name="pilihan_cacat" id="tidak-ada-cacat" value="tidak ada">
                                <label for="tidak-ada-cacat">Tidak Ada</label>
                            </div>
                        </div>
                    </div>
                    <div class="pertanyaan">
                        <label>Suku Kebangsaan<span>*</span></label>
                        <input name="suku_kebangsaan" type="text" id="suku-kebangsaan" placeholder="Masukan Suku Kebangsaan" value="" required>
                    </div>
                    <div class="pertanyaan">
                        <label>Kewarganegaraan<span>*</span></label>
                        <div class="pilihan-radio">
                            <div class="pilihan">
                                <input type="radio" name="pilihan_warga_negara" id="wni" value="wni">
                                <label for="wni">Warga Negara Indonesia</label>
                            </div>
                            <div class="pilihan">
                                <input type="radio" name="pilihan_warga_negara" id="wna" value="wna">
                                <label for="wna">Warga Negara Asing</label>
                            </div>
                        </div>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Pendidikan Terakhir<span>*</span></label>
                        <select name="pendidikan_terakhir" id="pendidikan-terakhir">
                            <option value="-">- Pilih -</option>
                            <option value="TK">TK</option>
                            <option value="SD/Sederajat">SD/Sederajat</option>
                            <option value="SMP/Sederajat">SMP/Sederajat</option>
                            <option value="SMA/Sederajat">SMA/Sederajat</option>
                            <option value="D1(Diploma I)">D1(Diploma I)</option>
                            <option value="D2(Diploma II)">D2(Diploma II)</option>
                            <option value="D3(Diploma III)">D3(Diploma III)</option>
                            <option value="S1(Strata I)/D4(Diploma 4)">S1(Strata I)/D4(Diploma 4)</option>
                            <option value="S2(Strata II)">S2(Strata II)</option>
                            <option value="S3(Strata III)">S3(Strata III)</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Pekerjaan<span>*</span></label>
                        <select name="pekerjaan" id="pekerjaan">
                            <option value="-">- Pilih -</option>
                            <option value="Belum/Tidak Bekerja">Belum/Tidak Bekerja</option>
                            <option value="Ibu Rumah Tangga">Ibu Rumah Tangga</option>
                            <option value="Pelajar/Mahasiswa">Pelajar/Mahasiswa</option>
                            <option value="Pensiunan">Pensiunan</option>
                            <option value="PNS/ASN">PNS/ASN</option>
                            <option value="TNI/Polri">TNI/Polri</option>
                            <option value="BUMN/BUMD">BUMN/BUMD</option>
                            <option value="Karyawan Swasta">Karyawan Swasta</option>
                            <option value="Wirausaha">Wirausaha</option>
                            <option value="Wiraswasta">Wiraswasta</option>
                            <option value="Pedagang">Pedagang</option>
                            <option value="Buruh">Buruh</option>
                            <option value="Content Creator">Content Creator</option>
                            <option value="Petani">Petani</option>
                            <option value="Nelayan">Nelayan</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Penghasilan<span>*</span></label>
                        <select name="penghasilan" id="penghasilan">
                            <option value="-">- Pilih -</option>
                            <option value="Belum Berpenghasilan">Belum Berpenghasilan</option>
                            <option value="Rp.0 - RP.1.000.000">Rp.0 - RP.1.000.000</option>
                            <option value="Rp.1.000.000 - RP.2.000.000">Rp.1.000.000 - RP.2.000.000</option>
                            <option value="Rp.2.000.000 - RP.3.000.000">Rp.2.000.000 - RP.3.000.000</option>
                            <option value="Rp.3.000.000 - RP.4.000.000">Rp.3.000.000 - RP.4.000.000</option>
                            <option value="Rp.4.000.000 - RP.5.000.000">Rp.4.000.000 - RP.5.000.000</option>
                            <option value=">RP.5.000.000">>RP.5.000.000</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Kepemilikan Usaha<span>*</span></label>
                        <div class="pilihan-radio">
                            <div class="pilihan">
                                <input type="radio" name="pilihan_kepemilikan_usaha" id="ada-usaha" value="ada">
                                <label for="ada-usaha">Ada</label>
                                <select name="pilihan_jika_ada" id="pilihan-jika-ada-usaha" disabled>
                                    <option value="-">- Pilih -</option>
                                    <option value="Hasil Peternakan/Pertanian/Perikanan">Hasil Peternakan/Pertanian/Perikanan</option>
                                    <option value="Makanan & Minuman">Makanan & Minuman</option>
                                    <option value="Pakaian">Pakaian</option>
                                    <option value="Kriya">Kriya</option>
                                    <option value="Rental Kendaraan">Rental Kendaraan</option>
                                    <option value="Peralatan/Perlengkapan Rumah">Peralatan/Perlengkapan Rumah</option>
                                    <option value="Desain/Printing">Desain/Printing</option>
                                    <option value="Jahit">Jahit</option>
                                    <option value="Kursus">Kursus</option>
                                    <option value="Salon">Salon</option>
                                    <option value="Tour & Travel">Tour & Travel</option>
                                    <option value="Penyelenggara Acara">Penyelenggara Acara</option>
                                    <option value="Penginapan/Kos">Penginapan/Kos</option>
                                    <option value="Elektronik">Elektronik</option>
                                </select>
                            </div>
                            <div class="pilihan">
                                <input type="radio" name="pilihan_kepemilikan_usaha" id="tidak-ada-usaha" value="tidak ada">
                                <label for="tidak-ada-usaha">Tidak Ada</label>
                            </div>
                        </div>
                    </div>
                    <div class="pertanyaan">
                        <label>Nama Usaha<span>*</span></label>
                        <input name="nama_usaha" type="text" id="nama-usaha" placeholder="Masukan Nama Usaha" value="" required disabled>
                    </div>
                    <div class="pertanyaan ">
                        <label>Alamat Usaha<span>*</span></label>
                        <input name="alamat_usaha" type="text" id="alamat-usaha" placeholder="Masukan Alamat Usaha" value="" required disabled>
                    </div>
                </div>
            </div>
        </section>
        <section id="pemukiman">
            <div class="card-container">
                <div class="section-title">
                    <h1>Pemukiman</h1>
                </div>
                <div class="section-body">
                    <div class="pertanyaan">
                        <label for="">Kepemilikan Tempat Tinggal<span>*</span></label>
                        <select name="kepemilikan_tempat_tinggal" id="kepemilikan-tempat-tinggal">
                            <option value="-">- Pilih -</option>
                            <option value="Milik Sendiri">Milik Sendiri</option>
                            <option value="Kontrak/Sewa">Kontrak/Sewa</option>
                            <option value="Bebas Sewa/Dipinjami">Bebas Sewa/Dipinjami</option>
                            <option value="Dinas">Dinas</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Kondisi/Karakteristik Rumah Tinggal<span>*</span></label>
                        <div class="pilihan-radio">
                            <div class="pilihan">
                                <input type="radio" name="pilihan_kondisi_rumah" id="layak-huni" value="layak huni">
                                <label for="layak-huni">Layak Huni</label>
                            </div>
                            <div class="pilihan">
                                <input type="radio" name="pilihan_kondisi_rumah" id="tidak-layak-huni" value="tidak layak huni">
                                <label for="tidak-layak-huni">Tidak Layak Huni</label>
                                <select name="keterangan_rumah" id="pilihan-jika-tidak-layak-huni">
                                    <option value="-">- Pilih -</option>
                                    <option value="Atap Rusak/Bocor">Atap Rusak/Bocor</option>
                                    <option value="Lantai Berupa Tanah">Lantai Berupa Tanah</option>
                                    <option value="Dinding Non/Semi Permanen">Dinding Non/Semi Permanen</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Sumber Air Bersih<span>*</span></label>
                        <select name="sumber_air_bersih" id="sumber-air-bersih">
                            <option value="-">- Pilih -</option>
                            <option value="PDAM">PDAM</option>
                            <option value="Sumur/Air Tanah">Sumur/Air Tanah</option>
                            <option value="PDAM dan Sumur">PDAM dan Sumur</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label>Kepemilikan MCK<span>*</span></label>
                        <div class="pilihan-radio">
                            <div class="pilihan">
                                <input type="radio" name="kepemilikan_mck" id="ada-mck" value="Ya, Ada">
                                <label for="ada-mck">Ya, Ada</label>
                            </div>
                            <div class="pilihan">
                                <input type="radio" name="kepemilikan_mck" id="tidak-ada-mck" value="Tidak Ada">
                                <label for="tidak-ada-mck">Tidak Ada</label>
                            </div>
                        </div>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Lokasi Pembuangan Air Limbah<span>*</span></label>
                        <select name="lokasi_pembuangan_air_limbah" id="lokasi-pembuangan-air-limbah">
                            <option value="-">- Pilih -</option>
                            <option value="Septic Tank/Tangki Septic">Septic Tank/Tangki Septic</option>
                            <option value="IPAL/DSDP">IPAL/DSDP</option>
                            <option value="Tanah">Tanah</option>
                        </select>
                    </div>
                    <div class="pertanyaan">
                        <label>Ketersediaan Wadah Persampahan (Bak/Tong)<span>*</span></label>
                        <div class="pilihan-radio">
                            <div class="pilihan">
                                <input type="radio" name="ketersediaan_persampahan" id="ada-persampahan" value="Ya, Ada">
                                <label for="ada-persampahan">Ya, Ada</label>
                            </div>
                            <div class="pilihan">
                                <input type="radio" name="ketersediaan_persampahan" id="tidak-ada-persampahan" value="Tidak Ada">
                                <label for="tidak-ada-persampahan">Tidak Ada</label>
                            </div>
                        </div>
                    </div>
                    <div class="pertanyaan">
                        <label for="">Jenis Pengelolaan Sampah<span>*</span></label>
                        <select name="jenis_pengelolaan_sampah" id="jenis-pengelolaan-sampah" required>
                            <option value="">- Pilih -</option>
                            <option value="Swakelola oleh Banjar/Dusun/Desa">Swakelola oleh Banjar/Dusun/Desa</option>
                            <option value="Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle)">Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle)</option>
                            <option value="Tidak Ada Pengelolaan">Tidak Ada Pengelolaan</option>
                        </select>
                    </div>
                </div>
            </div>
        </section>
        <div class="btn-wrapper">
            <button class="btn-submit" name="submit">SUBMIT</button>
        </div>
        </form>
    </div>


    <script src="fungsi/form.js"></script>
</body>

</html>