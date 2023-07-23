-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 12:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form_profil_desa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_penduduk`
--

CREATE TABLE `data_penduduk` (
  `id` int(255) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `nama_kepala_keluarga` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `alamat_tinggal` varchar(255) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `desa_kel` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kota_kab` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `golongan_darah` varchar(255) NOT NULL,
  `no_telp_handphone` varchar(255) NOT NULL,
  `status_pernikahan` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `cacat_fisik_mental` varchar(255) NOT NULL,
  `keterangan_cacat` varchar(255) NOT NULL,
  `suku_kebangsaan` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `penghasilan` varchar(255) NOT NULL,
  `kepemilikan_usaha` varchar(255) NOT NULL,
  `keterangan_usaha` varchar(255) NOT NULL,
  `nama_usaha` varchar(255) NOT NULL,
  `alamat_usaha` varchar(255) NOT NULL,
  `kepemilikan_tempat_tinggal` varchar(255) NOT NULL,
  `kondisi_karakteristik_rumah_tinggal` varchar(255) NOT NULL,
  `keterangan_rumah` varchar(255) NOT NULL,
  `sumber_air_bersih` varchar(255) NOT NULL,
  `kepemilikan_mck` varchar(255) NOT NULL,
  `lokasi_pembuangan_air_limbah` varchar(255) NOT NULL,
  `ketersediaan_wadah_persampahan` varchar(255) NOT NULL,
  `jenis_pengelolaan_sampah` varchar(255) NOT NULL,
  `nama_surveyor` varchar(255) NOT NULL,
  `tanggal_waktu` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_penduduk`
--

INSERT INTO `data_penduduk` (`id`, `no_kk`, `nama_kepala_keluarga`, `nama`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat_tinggal`, `dusun`, `desa_kel`, `kecamatan`, `kota_kab`, `provinsi`, `golongan_darah`, `no_telp_handphone`, `status_pernikahan`, `agama`, `cacat_fisik_mental`, `keterangan_cacat`, `suku_kebangsaan`, `kewarganegaraan`, `pendidikan_terakhir`, `pekerjaan`, `penghasilan`, `kepemilikan_usaha`, `keterangan_usaha`, `nama_usaha`, `alamat_usaha`, `kepemilikan_tempat_tinggal`, `kondisi_karakteristik_rumah_tinggal`, `keterangan_rumah`, `sumber_air_bersih`, `kepemilikan_mck`, `lokasi_pembuangan_air_limbah`, `ketersediaan_wadah_persampahan`, `jenis_pengelolaan_sampah`, `nama_surveyor`, `tanggal_waktu`) VALUES
(2, ' no kk ', '  nama kepala keluarga ', ' nama ', ' nik ', ' laki-laki ', ' tampat lahir ', ' 1999-12-12 ', ' alamat tinggal ', ' dusun ', ' desa kelurahan ', ' kecamatan ', ' kota kabupaten ', ' provinsi ', '  A', ' 0765346854678 ', ' Menikah ', ' Islam ', ' ada ', ' Tuna Netra ', ' suku kebangsaan ', ' wni ', ' SD/Sederajat ', ' Ibu Rumah Tangga ', ' Rp.1.000.000 - RP.2.000.000 ', ' ada ', '  Elektronik ', ' pt electronic ', ' dimana aja ada ', ' Kontrak/Sewa ', ' tidak layak huni ', ' Lantai Berupa Tanah ', ' PDAM dan Sumur ', ' Ya, Ada ', ' IPAL/DSDP ', ' Ya, Ada ', ' Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle) ', '', '2023-07-23 05:55:10.030160'),
(3, '213512639283192786', 'pak yusuf', 'yusuf', '38742987429387', 'laki-laki', 'jember', '1905-05-05', 'sukabumi', 'dusun cinta', 'kelurahan mojokerto', 'padang sambian', 'jakarta', 'jawab barat', '', '0861xxxxxx', 'Menikah', 'Islam', 'ada', 'Tuna Rungu', 'nigeria', 'wna', 'S3(Strata III)', 'TNI/Polri', 'Rp.4.000.000 - RP.5.000.000', 'ada', ' Tour & Travel', 'mai melali', 'jl.gatot subroto', 'Dinas', 'layak huni', '', 'Sumur/Air Tanah', 'Ya, Ada', 'IPAL/DSDP', 'Ya, Ada', 'Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle)', '', '2023-07-23 05:55:10.030160'),
(4, '123456789', 'ramapradnya', 'rama', '98765432', 'laki-laki', 'denpasar', '2000-05-05', 'peguyangan', 'dencarik', 'peguyangan', 'denpasar utara', 'denpasar', 'bali', 'AB', '082xxxxxxxx', 'Cerai Pisah', 'Islam', 'ada', 'Tuna Rungu', 'bangsa mongol', 'wni', 'SMP/Sederajat', 'Content Creator', 'Rp.1.000.000 - RP.2.000.000', 'ada', ' Makanan & Minuman', 'warung tipat  cantok', 'dipeguyangan', 'Milik Sendiri', 'layak huni', '', 'Sumur/Air Tanah', 'Ya, Ada', 'IPAL/DSDP', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', '', '2023-07-23 05:55:10.030160'),
(5, '124324544657687', 'sujana', 'arivan', '124325456456768', 'laki-laki', 'kelungkung', '1999-05-05', 'denpasar', 'banjarangkan', 'aan', 'kecamatan', 'kelungkung', 'bali', 'O', '04359082093429', 'Menikah', 'Hindu', 'tidak ada', '', 'suku aborigin', 'wni', 'S1(Strata I)/D4(Diploma 4)', '-', 'Rp.4.000.000 - RP.5.000.000', 'tidak ada', ' ', 'pengerajin batik', 'di jalan raya', 'Kontrak/Sewa', 'layak huni', '', 'PDAM', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle)', '', '2023-07-23 05:55:10.030160'),
(6, '121212121212121212', 'putu', 'edi', '21212121212121', 'laki-laki', 'gianyar', '1999-11-05', 'br.semana,singakerta,ubud,gianyar,bali', '-', 'singakerta', 'ubud', 'gianyar', 'bali', 'AB', '082145580589', 'Belum Menikah', 'Hindu', 'tidak ada', '', 'suku aborigin', 'wni', 'S1(Strata I)/D4(Diploma 4)', 'Karyawan Swasta', 'Rp.2.000.000 - RP.3.000.000', 'tidak ada', ' ', '-', '-', 'Milik Sendiri', 'layak huni', '', 'Sumur/Air Tanah', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', '', '2023-07-23 05:55:10.030160'),
(7, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'perempuan', 'as', '0121-12-12', 'as', 'd', 'halo dek', 'kecamatan', 'kota', 'provinsi', '', '0765346854678', 'Belum Menikah', 'Hindu', 'tidak ada', '', 'suku kebangsaan', 'wni', 'D2(Diploma II)', 'Wiraswasta', 'Rp.0 - RP.1.000.000', 'tidak ada', ' ', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'layak huni', '', 'Sumur/Air Tanah', 'Tidak Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', '', '2023-07-23 05:55:10.030160'),
(8, 'sdjas', 'asdnjksa', 'asmdna', 'asmd.n', 'perempuan', 'dsmnas', '12212-12-12', 'as', 'd', 'sadaasda', 'dasda', 'asda', 'asdas', '', 'asda', 'Belum Menikah', 'Islam', 'tidak ada', '', 'asda', 'wni', 'SD/Sederajat', 'Pelajar/Mahasiswa', 'Rp.0 - RP.1.000.000', 'tidak ada', ' ', 'warung tipat  cantok', 'dimana aja ada', 'Milik Sendiri', 'layak huni', '', 'PDAM', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', '', '2023-07-23 05:55:10.030160'),
(9, 'saada', 'dasdaasda', 'asd', 'asda', 'laki-laki', 'asd', '12212-12-12', 'as', 'sad', 'asd', 'asd', 'ads', 'asd', '', '0765346854678', 'Menikah', 'Islam', 'tidak ada', '', 'asdas', 'wni', 'SMP/Sederajat', 'Buruh', 'Rp.1.000.000 - RP.2.000.000', 'tidak ada', ' ', 'pt electronic', 'jl.gatot subroto', 'Milik Sendiri', 'layak huni', '', 'Sumur/Air Tanah', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', '', '2023-07-23 05:55:10.030160'),
(10, '  -', '  sajdhs ', ' dsf ', ' sdf ', ' laki-laki ', ' sdf ', ' 0012-12-12 ', ' 234 ', ' 234 ', ' werw ', ' sdfsdf ', ' sdf ', ' sdf ', ' O ', ' sdf ', ' Menikah ', ' Kristen Katolik ', ' tidak ada ', '  ', ' dsf ', ' wni ', ' SMP/Sederajat ', ' Pelajar/Mahasiswa ', ' Rp.1.000.000 - RP.2.000.000 ', ' tidak ada ', '   ', ' sdf ', ' sdf ', ' Kontrak/Sewa ', ' layak huni ', '  -', ' PDAM ', ' Tidak Ada ', ' Septic Tank/Tangki Septic ', ' Ya, Ada ', ' Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle) ', '', '2023-07-23 05:55:10.030160'),
(11, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Menikah', 'Hindu', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'SD/Sederajat', 'Ibu Rumah Tangga', 'Rp.0 - RP.1.000.000', 'ada', ' Hasil Peternakan/Pertanian/Perikanan', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'tidak layak huni', 'Atap Rusak/Bocor', 'Sumur/Air Tanah', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-23 10:27:11.000000'),
(12, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-29', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Belum Menikah', 'Hindu', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'TK', 'Ibu Rumah Tangga', 'Rp.0 - RP.1.000.000', 'ada', ' Hasil Peternakan/Pertanian/Perikanan', 'warung tipat  cantok', 'dimana aja ada', 'Milik Sendiri', 'tidak layak huni', 'Atap Rusak/Bocor', 'Sumur/Air Tanah', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle)', 'arivan', '2023-07-23 10:35:00.000000'),
(13, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Belum Menikah', 'Hindu', 'ada', 'Tuna Rungu', 'bangsa mongol', 'wni', 'TK', 'Ibu Rumah Tangga', 'Rp.1.000.000 - RP.2.000.000', 'ada', ' Makanan & Minuman', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'tidak layak huni', 'Atap Rusak/Bocor', 'PDAM', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-23 10:47:00.000000'),
(14, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Belum Menikah', 'Islam', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'SMA/Sederajat', 'Ibu Rumah Tangga', 'Rp.0 - RP.1.000.000', 'ada', ' Hasil Peternakan/Pertanian/Perikanan', 'warung tipat  cantok', 'jl.gatot subroto', 'Kontrak/Sewa', 'tidak layak huni', 'Lantai Berupa Tanah', 'Sumur/Air Tanah', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Pengelolaan Sendiri 3R(Reuse,Reduce,Recycle)', 'arivan', '0000-00-00 00:00:00.000000'),
(15, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'kelurahan mojokerto', 'padang sambian', 'kota', 'provinsi', 'A', '0765346854678', 'Belum Menikah', 'Hindu', 'ada', 'Tuna Wicara', 'suku kebangsaan', 'wni', 'SMP/Sederajat', 'Belum/Tidak Bekerja', 'Rp.0 - RP.1.000.000', 'ada', ' Makanan & Minuman', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'tidak layak huni', 'Atap Rusak/Bocor', 'Sumur/Air Tanah', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-23 11:04:00.000000'),
(16, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Menikah', 'Hindu', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'SD/Sederajat', 'Belum/Tidak Bekerja', 'Belum Berpenghasilan', 'ada', ' Hasil Peternakan/Pertanian/Perikanan', 'warung tipat  cantok', 'jl.gatot subroto', 'Kontrak/Sewa', 'tidak layak huni', 'Lantai Berupa Tanah', 'PDAM', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Tidak Ada Pengelolaan', 'arivan', '2023-07-23 11:11:00.000000'),
(17, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'as', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Belum Menikah', 'Hindu', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'TK', 'PNS/ASN', 'Belum Berpenghasilan', 'ada', ' Hasil Peternakan/Pertanian/Perikanan', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'tidak layak huni', 'Atap Rusak/Bocor', 'PDAM dan Sumur', 'Ya, Ada', 'IPAL/DSDP', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-23 17:38:00.000000'),
(18, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'desa kelurahan', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Menikah', 'Islam', 'ada', 'Tuna Wicara', 'suku kebangsaan', 'wni', 'TK', 'Belum/Tidak Bekerja', 'Rp.0 - RP.1.000.000', 'ada', ' Makanan & Minuman', '-', '-', 'Kontrak/Sewa', 'tidak layak huni', 'Atap Rusak/Bocor', 'PDAM', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-23 22:49:00.000000'),
(19, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '0765346854678', 'Belum Menikah', 'Hindu', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'TK', 'Ibu Rumah Tangga', 'Belum Berpenghasilan', 'ada', ' Makanan & Minuman', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'tidak layak huni', 'Atap Rusak/Bocor', 'PDAM', 'Ya, Ada', 'Septic Tank/Tangki Septic', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-23 15:56:00.000000'),
(20, 'no kk', 'nama kepala keluarga', 'arivan', 'nik', 'laki-laki', 'tempat lahir', '2023-07-01', 'alamat tinggal', 'dusun', 'halo dek', 'kecamatan', 'kota', 'provinsi', 'A', '082145580589', 'Belum Menikah', 'Islam', 'ada', 'Tuna Rungu', 'suku kebangsaan', 'wni', 'TK', 'Belum/Tidak Bekerja', 'Rp.1.000.000 - RP.2.000.000', 'ada', ' Pakaian', 'warung tipat  cantok', 'jl.gatot subroto', 'Milik Sendiri', 'tidak layak huni', 'Lantai Berupa Tanah', 'Sumur/Air Tanah', 'Ya, Ada', 'IPAL/DSDP', 'Ya, Ada', 'Swakelola oleh Banjar/Dusun/Desa', 'arivan', '2023-07-24 00:01:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `data_region`
--

CREATE TABLE `data_region` (
  `id` int(10) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `desa_kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_region`
--

INSERT INTO `data_region` (`id`, `dusun`, `desa_kelurahan`, `kecamatan`) VALUES
(1, 'Kaliungu Kelod', 'Dangin Puri', 'Denpasar Timur'),
(2, 'Kayumas Kaja', 'Dangin Puri', 'Denpasar Timur'),
(3, 'Bun', 'Dangin Puri', 'Denpasar Timur'),
(4, 'Abasan', 'Dangin Puri', 'Denpasar Timur'),
(5, 'Kayumas Kelod', 'Dangin Puri', 'Denpasar Timur'),
(6, 'Tegal Sari', 'Dangin Puri', 'Denpasar Timur'),
(7, 'Batu Mas', 'Dangin Puri', 'Denpasar Timur'),
(8, 'Yangbatu Kauh ', 'Dangin Puri Kelod', 'Denpasar Timur'),
(9, 'Yangbatu Kangin', 'Dangin Puri Kelod', 'Denpasar Timur'),
(10, 'Taman Yangbatu', 'Dangin Puri Kelod', 'Denpasar Timur'),
(11, 'Asrama Yangbatu', 'Dangin Puri Kelod', 'Denpasar Timur'),
(12, 'Jayagiri', 'Dangin Puri Kelod', 'Denpasar Timur'),
(13, 'Mandala Sari', 'Dangin Puri Kelod', 'Denpasar Timur'),
(14, 'Ujung', 'Kesiman', 'Denpasar Timur'),
(15, 'Ceramcam', 'Kesiman', 'Denpasar Timur'),
(16, 'Pekandelan Kauh', 'Kesiman', 'Denpasar Timur'),
(17, 'Pekandelan', 'Kesiman', 'Denpasar Timur'),
(18, 'Dangin Tangluk', 'Kesiman', 'Denpasar Timur'),
(19, 'Kebonkuri Kaja', 'Kesiman', 'Denpasar Timur'),
(20, 'Kebonkuri', 'Kesiman', 'Denpasar Timur'),
(21, 'Kebonkuri Kawan', 'Kesiman', 'Denpasar Timur'),
(22, 'Buaji Anyar', 'Kesiman', 'Denpasar Timur'),
(23, 'Tohpati', 'Kesiman Kertalangu', 'Denpasar Timur'),
(24, 'Kertajiwa', 'Kesiman Kertalangu', 'Denpasar Timur'),
(25, 'Kesambi', 'Kesiman Kertalangu', 'Denpasar Timur'),
(26, 'Biaung', 'Kesiman Kertalangu', 'Denpasar Timur'),
(27, 'Tangguntiti', 'Kesiman Kertalangu', 'Denpasar Timur'),
(28, 'Tangtu', 'Kesiman Kertalangu', 'Denpasar Timur'),
(29, 'Kertalangu', 'Kesiman Kertalangu', 'Denpasar Timur'),
(30, 'Kertapura', 'Kesiman Kertalangu', 'Denpasar Timur'),
(31, 'Kertagraha', 'Kesiman Kertalangu', 'Denpasar Timur'),
(32, 'Biaung Asri', 'Kesiman Kertalangu', 'Denpasar Timur'),
(33, 'Batur Sari', 'Kesiman Kertalangu', 'Denpasar Timur'),
(34, 'Dukuh', 'Kesiman Petilan', 'Denpasar Timur'),
(35, 'Meranggi', 'Kesiman Petilan', 'Denpasar Timur'),
(36, 'Bukit Buwung', 'Kesiman Petilan', 'Denpasar Timur'),
(37, 'Abiannangka Kaja', 'Kesiman Petilan', 'Denpasar Timur'),
(38, 'Kehen', 'Kesiman Petilan', 'Denpasar Timur'),
(39, 'Kedaton', 'Kesiman Petilan', 'Denpasar Timur'),
(40, 'Abian Nangka Kelod', 'Kesiman Petilan', 'Denpasar Timur'),
(41, 'Batanbuah', 'Kesiman Petilan', 'Denpasar Timur'),
(42, 'KedatonKelod', 'Kesiman Petilan', 'Denpasar Timur'),
(43, 'Anggabaya', 'Penatih', 'Denpasar Timur'),
(44, 'Pelagan', 'Penatih', 'Denpasar Timur'),
(45, 'PaangKaja', 'Penatih', 'Denpasar Timur'),
(46, 'PaangTengah', 'Penatih', 'Denpasar Timur'),
(47, 'PaangKelod', 'Penatih', 'Denpasar Timur'),
(48, 'Semaga', 'Penatih', 'Denpasar Timur'),
(49, 'Saba', 'Penatih', 'Denpasar Timur'),
(50, 'TembauKaja', 'Penatih', 'Denpasar Timur'),
(51, 'TembauTengah', 'Penatih', 'Denpasar Timur'),
(52, 'Tembau Kelod', 'Penatih', 'Denpasar Timur'),
(53, 'Taman', 'Penatih Dangin Puri', 'Denpasar Timur'),
(54, 'Pohmanis', 'Penatih Dangin Puri', 'Denpasar Timur'),
(55, 'Lalplap Tengah', 'Penatih Dangin Puri', 'Denpasar Timur'),
(56, 'Laplap Kauh', 'Penatih Dangin Puri', 'Denpasar Timur'),
(57, 'Bekul', 'Penatih Dangin Puri', 'Denpasar Timur'),
(58, 'Gunung', 'Penatih Dangin Puri', 'Denpasar Timur'),
(59, 'Mertasari', 'Penatih Dangin Puri', 'Denpasar Timur'),
(60, 'Buaji', 'Penatih Dangin Puri', 'Denpasar Timur'),
(61, 'Abian Kapas Kaja', 'Sumerta', 'Denpasar Timur'),
(62, 'Abian Kapas Tengah', 'Sumerta', 'Denpasar Timur'),
(63, 'Abian Kapas Kelod', 'Sumerta', 'Denpasar Timur'),
(64, 'Ketapian Kaja', 'Sumerta', 'Denpasar Timur'),
(65, 'Ketapian Kelod', 'Sumerta', 'Denpasar Timur'),
(66, 'Tanjung Bungkak I', 'Sumerta', 'Denpasar Timur'),
(67, 'Buaji Sari', 'Sumerta', 'Denpasar Timur'),
(68, 'Tegal Kuwalon', 'Sumerta Kaja', 'Denpasar Timur'),
(69, 'Sima', 'Sumerta Kaja', 'Denpasar Timur'),
(70, 'Kertha Bumi', 'Sumerta Kaja', 'Denpasar Timur'),
(71, 'Peken', 'Sumerta Kaja', 'Denpasar Timur'),
(72, 'Pande', 'Sumerta Kaja', 'Denpasar Timur'),
(73, 'Lebah', 'Sumerta Kaja', 'Denpasar Timur'),
(74, 'Ratna Bhuana', 'Sumerta Kauh', 'Denpasar Timur'),
(75, 'Pagan Kaja', 'Sumerta Kauh', 'Denpasar Timur'),
(76, 'Pagan Tengah', 'Sumerta Kauh', 'Denpasar Timur'),
(77, 'Pagan Kelod', 'Sumerta Kauh', 'Denpasar Timur'),
(78, 'Kelandis', 'Sumerta Kauh', 'Denpasar Timur'),
(79, 'Eka Dharma', 'Sumerta Kauh', 'Denpasar Timur'),
(80, 'Kedaton ', 'Sumerta Kelod', 'Denpasar Timur'),
(81, 'Bengkel ', 'Sumerta Kelod', 'Denpasar Timur'),
(82, 'Kepisah', 'Sumerta Kelod', 'Denpasar Timur'),
(83, 'Sebudi', 'Sumerta Kelod', 'Denpasar Timur'),
(84, 'Tanjung Bungkak Kaja ', 'Sumerta Kelod', 'Denpasar Timur'),
(85, 'Tanjung Bungkak Kelod', 'Sumerta Kelod', 'Denpasar Timur'),
(86, 'Babakan Sari ', 'Sumerta Kelod', 'Denpasar Timur'),
(87, 'Sembung Sari ', 'Sumerta Kelod', 'Denpasar Timur'),
(88, 'Badak Sari ', 'Sumerta Kelod', 'Denpasar Timur'),
(89, 'Sungiang Sari ', 'Sumerta Kelod', 'Denpasar Timur'),
(90, 'Lumbung Sari', 'Dangin Puri Kaja', 'Denpasar Utara'),
(91, 'Karangsari', 'Dangin Puri Kaja', 'Denpasar Utara'),
(92, 'Buana Sari', 'Dangin Puri Kaja', 'Denpasar Utara'),
(93, 'Umasari', 'Dangin Puri Kaja', 'Denpasar Utara'),
(94, 'Taman Sari', 'Dangin Puri Kaja', 'Denpasar Utara'),
(95, 'Tainsiat', 'Dangin Puri Kaja', 'Denpasar Utara'),
(96, 'Kaliungu Kaja', 'Dangin Puri Kaja', 'Denpasar Utara'),
(97, 'Kalanganyar', 'Dangin Puri Kaja', 'Denpasar Utara'),
(98, 'Kereneng', 'Dangin Puri Kangin', 'Denpasar Utara'),
(99, 'Kreneng Kaja', 'Dangin Puri Kangin', 'Denpasar Utara'),
(100, 'Merta Nadhi', 'Dangin Puri Kangin', 'Denpasar Utara'),
(101, 'Kerta Bhuwana', 'Dangin Puri Kangin', 'Denpasar Utara'),
(102, 'Kerta Bhuwana Kaja', 'Dangin Puri Kangin', 'Denpasar Utara'),
(103, 'Merta Rauh', 'Dangin Puri Kangin', 'Denpasar Utara'),
(104, 'Merta Rauh Kaja', 'Dangin Puri Kangin', 'Denpasar Utara'),
(105, 'Belaluan Sadmerta', 'Dangin Puri Kauh', 'Denpasar Utara'),
(106, 'Tampakgangsul', 'Dangin Puri Kauh', 'Denpasar Utara'),
(107, 'Belaluan', 'Dangin Puri Kauh', 'Denpasar Utara'),
(108, 'Pucak Sari', 'Dangin Puri Kauh', 'Denpasar Utara'),
(109, 'Tengah', 'Dangin Puri Kauh', 'Denpasar Utara'),
(110, 'Kertasari', 'Peguyangan', 'Denpasar Utara'),
(111, 'Palugambang', 'Peguyangan', 'Denpasar Utara'),
(112, 'Kepuh', 'Peguyangan', 'Denpasar Utara'),
(113, 'Pemalukan', 'Peguyangan', 'Denpasar Utara'),
(114, 'Dakdakan', 'Peguyangan', 'Denpasar Utara'),
(115, 'Hita Bhuana', 'Peguyangan', 'Denpasar Utara'),
(116, 'Tagtag Tengah', 'Peguyangan', 'Denpasar Utara'),
(117, 'Tagtag Kelod', 'Peguyangan', 'Denpasar Utara'),
(118, 'Prajasari', 'Peguyangan', 'Denpasar Utara'),
(119, 'Tagtag Kaja', 'Peguyangan', 'Denpasar Utara'),
(120, 'Ték-ték', 'Peguyangan', 'Denpasar Utara'),
(121, 'Dényéh', 'Peguyangan Kaja', 'Denpasar Utara'),
(122, 'Dén Biyu', 'Peguyangan Kaja', 'Denpasar Utara'),
(123, 'Punduh Kulit', 'Peguyangan Kaja', 'Denpasar Utara'),
(124, 'Pondok', 'Peguyangan Kaja', 'Denpasar Utara'),
(125, 'Uma Désa', 'Peguyangan Kaja', 'Denpasar Utara'),
(126, 'Belusung', 'Peguyangan Kaja', 'Denpasar Utara'),
(127, 'Batur', 'Peguyangan Kaja', 'Denpasar Utara'),
(128, 'Dualang', 'Peguyangan Kaja', 'Denpasar Utara'),
(129, 'Saih', 'Peguyangan Kaja', 'Denpasar Utara'),
(130, 'Gunung', 'Peguyangan Kaja', 'Denpasar Utara'),
(131, 'Paang Tebel', 'Peguyangan Kaja', 'Denpasar Utara'),
(132, 'Kedua', 'Peguyangan Kangin', 'Denpasar Utara'),
(133, 'Peninjoan', 'Peguyangan Kangin', 'Denpasar Utara'),
(134, 'Ambengan', 'Peguyangan Kangin', 'Denpasar Utara'),
(135, 'Kayangan', 'Peguyangan Kangin', 'Denpasar Utara'),
(136, 'Cengkilung', 'Peguyangan Kangin', 'Denpasar Utara'),
(137, 'Jenah', 'Peguyangan Kangin', 'Denpasar Utara'),
(138, 'Bantas', 'Peguyangan Kangin', 'Denpasar Utara'),
(139, 'Pengukuh', 'Peguyangan Kangin', 'Denpasar Utara'),
(140, 'Jurang Asri', 'Peguyangan Kangin', 'Denpasar Utara'),
(141, 'Purnama Asri', 'Peguyangan Kangin', 'Denpasar Utara'),
(142, 'Tunjung Sari', 'Peguyangan Kangin', 'Denpasar Utara'),
(143, 'Margajati', 'Pemecutan Kaja', 'Denpasar Utara'),
(144, 'Mekar Manis', 'Pemecutan Kaja', 'Denpasar Utara'),
(145, 'Balum', 'Pemecutan Kaja', 'Denpasar Utara'),
(146, 'Belong Gede', 'Pemecutan Kaja', 'Denpasar Utara'),
(147, 'Belong Menak', 'Pemecutan Kaja', 'Denpasar Utara'),
(148, 'Panti Sari', 'Pemecutan Kaja', 'Denpasar Utara'),
(149, 'Panti Gede', 'Pemecutan Kaja', 'Denpasar Utara'),
(150, 'Dsun Gerenceng', 'Pemecutan Kaja', 'Denpasar Utara'),
(151, 'Merthayasa', 'Pemecutan Kaja', 'Denpasar Utara'),
(152, 'Tulangampiang', 'Pemecutan Kaja', 'Denpasar Utara'),
(153, 'Semilajati', 'Pemecutan Kaja', 'Denpasar Utara'),
(154, 'Kerthajati', 'Pemecutan Kaja', 'Denpasar Utara'),
(155, 'Kertha Sari', 'Pemecutan Kaja', 'Denpasar Utara'),
(156, 'Tatasan Kelod', 'Tonja', 'Denpasar Utara'),
(157, 'Tatasan Kaja', 'Tonja', 'Denpasar Utara'),
(158, 'Tega', 'Tonja', 'Denpasar Utara'),
(159, 'Oongan', 'Tonja', 'Denpasar Utara'),
(160, 'Kedaton Sengguan', 'Tonja', 'Denpasar Utara'),
(161, 'Batanancak', 'Tonja', 'Denpasar Utara'),
(162, 'Tanggun Titi', 'Tonja', 'Denpasar Utara'),
(163, 'Tegeh Sari', 'Tonja', 'Denpasar Utara'),
(164, 'Tegeh Kuri', 'Tonja', 'Denpasar Utara'),
(165, 'Sari', 'Ubung', 'Denpasar Utara'),
(166, 'Batur', 'Ubung', 'Denpasar Utara'),
(167, 'Tengah', 'Ubung', 'Denpasar Utara'),
(168, 'Sedana Mertha', 'Ubung', 'Denpasar Utara'),
(169, 'Wangaya Klod', 'Dauh Puri Kaja', 'Denpasar Utara'),
(170, 'Wangaya Kaja', 'Dauh Puri Kaja', 'Denpasar Utara'),
(171, 'Wanasari', 'Dauh Puri Kaja', 'Denpasar Utara'),
(172, 'Lumintang', 'Dauh Puri Kaja', 'Denpasar Utara'),
(173, 'Mekarsari', 'Dauh Puri Kaja', 'Denpasar Utara'),
(174, 'Terunasari', 'Dauh Puri Kaja', 'Denpasar Utara'),
(175, 'Lelangon', 'Dauh Puri Kaja', 'Denpasar Utara'),
(176, 'Binoh Kaja', 'Ubung Kaja', 'Denpasar Utara'),
(177, 'Dharma Santi ', 'Ubung Kaja', 'Denpasar Utara'),
(178, 'Dauh Kutuh', 'Ubung Kaja', 'Denpasar Utara'),
(179, 'Pohgading', 'Ubung Kaja', 'Denpasar Utara'),
(180, 'Anyar - Aanyar ', 'Ubung Kaja', 'Denpasar Utara'),
(181, 'Permata Anyar', 'Ubung Kaja', 'Denpasar Utara'),
(182, 'Batumekaem', 'Ubung Kaja', 'Denpasar Utara'),
(183, 'Tegal Kori Kaja', 'Ubung Kaja', 'Denpasar Utara'),
(184, 'Tegal Kori', 'Ubung Kaja', 'Denpasar Utara'),
(185, 'Tegal Kangin', 'Ubung Kaja', 'Denpasar Utara'),
(186, 'Tegal Kauh', 'Ubung Kaja', 'Denpasar Utara'),
(187, 'Liligundi', 'Ubung Kaja', 'Denpasar Utara'),
(188, 'Umasari ', 'Ubung Kaja', 'Denpasar Utara'),
(189, 'Mertagangga', 'Ubung Kaja', 'Denpasar Utara'),
(190, 'Pemangkalan', 'Ubung Kaja', 'Denpasar Utara'),
(191, 'Petangan Gede ', 'Ubung Kaja', 'Denpasar Utara'),
(192, 'Binoh Kelod', 'Ubung Kaja', 'Denpasar Utara'),
(193, 'Pekambingan', 'Dauh Puri', 'Denpasar Barat'),
(194, 'Catur Panca', 'Dauh Puri', 'Denpasar Barat'),
(195, 'Pelita Sari', 'Dauh Puri', 'Denpasar Barat'),
(196, 'Kartika', 'Dauh Puri', 'Denpasar Barat'),
(197, 'Chandra', 'Dauh Puri', 'Denpasar Barat'),
(198, 'Wirasatya', 'Dauh Puri', 'Denpasar Barat'),
(199, 'Kirana', 'Dauh Puri', 'Denpasar Barat'),
(200, 'Eka Paksi', 'Dauh Puri', 'Denpasar Barat'),
(201, 'Gemeh', 'Dauh Puri Kangin', 'Denpasar Barat'),
(202, 'Titih Klod', 'Dauh Puri Kangin', 'Denpasar Barat'),
(203, 'Titih Tengah', 'Dauh Puri Kangin', 'Denpasar Barat'),
(204, 'Titih Kalér', 'Dauh Puri Kangin', 'Denpasar Barat'),
(205, 'Suci', 'Dauh Puri Kangin', 'Denpasar Barat'),
(206, 'Eka Sila', 'Dauh Puri Kelod', 'Denpasar Barat'),
(207, 'Batu Bintang', 'Dauh Puri Kelod', 'Denpasar Barat'),
(208, 'Bumi Banten', 'Dauh Puri Kelod', 'Denpasar Barat'),
(209, 'Bumi Kerthi', 'Dauh Puri Kelod', 'Denpasar Barat'),
(210, 'Bumi Shanti', 'Dauh Puri Kelod', 'Denpasar Barat'),
(211, 'Bumi Asri', 'Dauh Puri Kelod', 'Denpasar Barat'),
(212, 'Bumi Sari', 'Dauh Puri Kelod', 'Denpasar Barat'),
(213, 'Sanglah Barat', 'Dauh Puri Kelod', 'Denpasar Barat'),
(214, 'Sanglah', 'Dauh Puri Kelod', 'Denpasar Barat'),
(215, 'Sanglah Utara', 'Dauh Puri Kelod', 'Denpasar Barat'),
(216, 'Sanglah Timur', 'Dauh Puri Kelod', 'Denpasar Barat'),
(217, 'Jematang', 'Dauh Puri Kauh', 'Denpasar Barat'),
(218, 'Pengiasn', 'Dauh Puri Kauh', 'Denpasar Barat'),
(219, 'Beraban', 'Dauh Puri Kauh', 'Denpasar Barat'),
(220, 'Sumuh', 'Dauh Puri Kauh', 'Denpasar Barat'),
(221, 'Bumi Werdhi', 'Dauh Puri Kauh', 'Denpasar Barat'),
(222, 'Abiantegal', 'Dauh Puri Kauh', 'Denpasar Barat'),
(223, 'Sebelanga', 'Dauh Puri Kauh', 'Denpasar Barat'),
(224, 'Padangsambian', 'Padang Sambian', 'Denpasar Barat'),
(225, 'Padang Praja', 'Padang Sambian', 'Denpasar Barat'),
(226, 'Minggir', 'Padang Sambian', 'Denpasar Barat'),
(227, ' Penamparan', 'Padang Sambian', 'Denpasar Barat'),
(228, 'Padang Sari', 'Padang Sambian', 'Denpasar Barat'),
(229, 'Padang Udayana', 'Padang Sambian', 'Denpasar Barat'),
(230, 'Anyar', 'Padang Sambian', 'Denpasar Barat'),
(231, 'Balun', 'Padang Sambian', 'Denpasar Barat'),
(232, 'Buana Agung', 'Padang Sambian', 'Denpasar Barat'),
(233, 'Buana Desa', 'Padang Sambian', 'Denpasar Barat'),
(234, 'Buana Indah', 'Padang Sambian', 'Denpasar Barat'),
(235, 'Merta Buana', 'Padang Sambian', 'Denpasar Barat'),
(236, 'Mekar Buana', 'Padang Sambian', 'Denpasar Barat'),
(237, 'Padang Griya', 'Padang Sambian', 'Denpasar Barat'),
(238, 'Buana Mas Indah', 'Padang Sambian', 'Denpasar Barat'),
(239, 'Buana Permai', 'Padang Sambian', 'Denpasar Barat'),
(240, 'Buana Santhi', 'Padang Sambian', 'Denpasar Barat'),
(241, 'Buana Permata Hijau', 'Padang Sambian', 'Denpasar Barat'),
(242, 'Taman Harum', 'Padang Sambian', 'Denpasar Barat'),
(243, 'Taman Sekar', 'Padang Sambian', 'Denpasar Barat'),
(244, 'Tegal Sari', 'Padang Sambian', 'Denpasar Barat'),
(245, 'Umaklungkung', 'Padang Sambian Kaja', 'Denpasar Barat'),
(246, 'Tegallinggah', 'Padang Sambian Kaja', 'Denpasar Barat'),
(247, 'Batukandik', 'Padang Sambian Kaja', 'Denpasar Barat'),
(248, 'Robokan', 'Padang Sambian Kaja', 'Denpasar Barat'),
(249, 'Batuparas', 'Padang Sambian Kaja', 'Denpasar Barat'),
(250, 'Pagutan', 'Padang Sambian Kaja', 'Denpasar Barat'),
(251, 'Dukuh Sari', 'Padang Sambian Kaja', 'Denpasar Barat'),
(252, 'Lepang', 'Padang Sambian Kaja', 'Denpasar Barat'),
(253, 'Tegehsari', 'Padang Sambian Kaja', 'Denpasar Barat'),
(254, 'Batu Bolong', 'Padang Sambian Kelod', 'Denpasar Barat'),
(255, 'Jabapura', 'Padang Sambian Kelod', 'Denpasar Barat'),
(256, 'Padang Indah', 'Padang Sambian Kelod', 'Denpasar Barat'),
(257, 'Padangsumbu Kaja', 'Padang Sambian Kelod', 'Denpasar Barat'),
(258, 'Padangsumbu Tengah', 'Padang Sambian Kelod', 'Denpasar Barat'),
(259, 'Padangsumbu Klod', 'Padang Sambian Kelod', 'Denpasar Barat'),
(260, 'Pondok Purnawira', 'Padang Sambian Kelod', 'Denpasar Barat'),
(261, 'Tegal Buah', 'Padang Sambian Kelod', 'Denpasar Barat'),
(262, 'Tegallantang Kaja', 'Padang Sambian Kelod', 'Denpasar Barat'),
(263, 'Tegallantang Klod', 'Padang Sambian Kelod', 'Denpasar Barat'),
(264, 'Teges', 'Padang Sambian Kelod', 'Denpasar Barat'),
(265, 'Umadui', 'Padang Sambian Kelod', 'Denpasar Barat'),
(266, 'Kertha Dharma', 'Pemecutan', 'Denpasar Barat'),
(267, 'Kertha Pura', 'Pemecutan', 'Denpasar Barat'),
(268, 'Merta Jaya', 'Pemecutan', 'Denpasar Barat'),
(269, 'Merta Yoga', 'Pemecutan', 'Denpasar Barat'),
(270, 'Penyaitan', 'Pemecutan', 'Denpasar Barat'),
(271, 'Kerandan', 'Pemecutan', 'Denpasar Barat'),
(272, 'Pemedilan', 'Pemecutan', 'Denpasar Barat'),
(273, 'Tegallinggah', 'Pemecutan', 'Denpasar Barat'),
(274, 'Busung Yeh Kauh', 'Pemecutan', 'Denpasar Barat'),
(275, 'Busung Yeh Kangin', 'Pemecutan', 'Denpasar Barat'),
(276, 'Celagi Gendong', 'Pemecutan', 'Denpasar Barat'),
(277, 'Gelogor', 'Pemecutan', 'Denpasar Barat'),
(278, 'Alangkajeng Menak', 'Pemecutan', 'Denpasar Barat'),
(279, 'Alangkajeng Gede', 'Pemecutan', 'Denpasar Barat'),
(280, 'Pemeregan', 'Pemecutan', 'Denpasar Barat'),
(281, 'Tegal Baler Geria', 'Pemecutan Kelod', 'Denpasar Barat'),
(282, 'Tegal Gede', 'Pemecutan Kelod', 'Denpasar Barat'),
(283, 'Tegal Agung', 'Pemecutan Kelod', 'Denpasar Barat'),
(284, 'Tegal Langon', 'Pemecutan Kelod', 'Denpasar Barat'),
(285, 'Tegal Kawan', 'Pemecutan Kelod', 'Denpasar Barat'),
(286, 'Tegal Dukuh Anyar', 'Pemecutan Kelod', 'Denpasar Barat'),
(287, 'Munang-maning', 'Pemecutan Kelod', 'Denpasar Barat'),
(288, 'Samping Buni', 'Pemecutan Kelod', 'Denpasar Barat'),
(289, 'Tenten', 'Pemecutan Kelod', 'Denpasar Barat'),
(290, 'Batannyuh', 'Pemecutan Kelod', 'Denpasar Barat'),
(291, 'Buagan', 'Pemecutan Kelod', 'Denpasar Barat'),
(292, 'Sading Sari', 'Pemecutan Kelod', 'Denpasar Barat'),
(293, 'Pekandelan', 'Pemecutan Kelod', 'Denpasar Barat'),
(294, 'Abiantimbul', 'Pemecutan Kelod', 'Denpasar Barat'),
(295, 'Margaya', 'Pemecutan Kelod', 'Denpasar Barat'),
(296, 'Tegal Wangi', 'Tegal Kertha', 'Denpasar Barat'),
(297, 'Bhuana Asri', 'Tegal Kertha', 'Denpasar Barat'),
(298, 'Muliawan', 'Tegal Kertha', 'Denpasar Barat'),
(299, 'Bhuana Sari', 'Tegal Kertha', 'Denpasar Barat'),
(300, 'Panca Kertha', 'Tegal Kertha', 'Denpasar Barat'),
(301, 'Mertha Gangga', 'Tegal Kertha', 'Denpasar Barat'),
(302, 'Manut Negara', 'Tegal Kertha', 'Denpasar Barat'),
(303, 'Graha Santi', 'Tegal Kertha', 'Denpasar Barat'),
(304, 'Tegal Sari', 'Tegal Harum', 'Denpasar Barat'),
(305, 'Sapta Bumi', 'Tegal Harum', 'Denpasar Barat'),
(306, 'Bhuana Merta', 'Tegal Harum', 'Denpasar Barat'),
(307, 'Sanga Agung', 'Tegal Harum', 'Denpasar Barat'),
(308, 'Cemara Agung', 'Tegal Harum', 'Denpasar Barat'),
(309, 'Buana Kubu', 'Tegal Harum', 'Denpasar Barat'),
(310, 'Sari Buana', 'Tegal Harum', 'Denpasar Barat'),
(311, 'Asta Buana', 'Tegal Harum', 'Denpasar Barat'),
(312, 'Kaja', 'Panjer', 'Denpasar Selatan'),
(313, 'Celuk', 'Panjer', 'Denpasar Selatan'),
(314, 'Kangin', 'Panjer', 'Denpasar Selatan'),
(315, 'Sasih', 'Panjer', 'Denpasar Selatan'),
(316, 'Antap', 'Panjer', 'Denpasar Selatan'),
(317, 'Bekul', 'Panjer', 'Denpasar Selatan'),
(318, 'Maniksaga', 'Panjer', 'Denpasar Selatan'),
(319, 'Tegalsari', 'Panjer', 'Denpasar Selatan'),
(320, 'Kertasari', 'Panjer', 'Denpasar Selatan'),
(321, 'Dukuh', 'Serangan', 'Denpasar Selatan'),
(322, 'Tengah', 'Serangan', 'Denpasar Selatan'),
(323, 'Peken', 'Serangan', 'Denpasar Selatan'),
(324, 'Kawan', 'Serangan', 'Denpasar Selatan'),
(325, 'Kaja', 'Serangan', 'Denpasar Selatan'),
(326, 'Kampung Bugis', 'Serangan', 'Denpasar Selatan'),
(327, 'Ponjok', 'Serangan', 'Denpasar Selatan'),
(328, 'Singgi', 'Sanur', 'Denpasar Selatan'),
(329, 'Panti', 'Sanur', 'Denpasar Selatan'),
(330, 'Gulingan', 'Sanur', 'Denpasar Selatan'),
(331, 'Taman', 'Sanur', 'Denpasar Selatan'),
(332, 'Sindu Kaja', 'Sanur', 'Denpasar Selatan'),
(333, 'Sindu Kelod', 'Sanur', 'Denpasar Selatan'),
(334, 'Banjar/ Batujimbar', 'Sanur', 'Denpasar Selatan'),
(335, 'Semawang', 'Sanur', 'Denpasar Selatan'),
(336, 'Pasekuta', 'Sanur', 'Denpasar Selatan'),
(337, 'Belong', 'Sanur Kaja', 'Denpasar Selatan'),
(338, 'Pekandelan', 'Sanur Kaja', 'Denpasar Selatan'),
(339, 'Batanpoh', 'Sanur Kaja', 'Denpasar Selatan'),
(340, 'Anggarkasih', 'Sanur Kaja', 'Denpasar Selatan'),
(341, 'Buruwan', 'Sanur Kaja', 'Denpasar Selatan'),
(342, 'Tegal Asah', 'Sanur Kaja', 'Denpasar Selatan'),
(343, 'Langon', 'Sanur Kaja', 'Denpasar Selatan'),
(344, 'Wirsana', 'Sanur Kaja', 'Denpasar Selatan'),
(345, 'Danginpeken', 'Sanur Kauh', 'Denpasar Selatan'),
(346, 'Medura', 'Sanur Kauh', 'Denpasar Selatan'),
(347, 'Abiantimbul', 'Sanur Kauh', 'Denpasar Selatan'),
(348, 'Tewel', 'Sanur Kauh', 'Denpasar Selatan'),
(349, 'Puseh', 'Sanur Kauh', 'Denpasar Selatan'),
(350, 'Penopengan', 'Sanur Kauh', 'Denpasar Selatan'),
(351, 'Pekandelan', 'Sanur Kauh', 'Denpasar Selatan'),
(352, 'Belanjong', 'Sanur Kauh', 'Denpasar Selatan'),
(353, 'Tanjung', 'Sanur Kauh', 'Denpasar Selatan'),
(354, 'Betngandang', 'Sanur Kauh', 'Denpasar Selatan'),
(355, 'Puseh Kauh', 'Sanur Kauh', 'Denpasar Selatan'),
(356, 'Kampung Bugis', 'Sesetan', 'Denpasar Selatan'),
(357, 'Suwung Batan Kendal', 'Sesetan', 'Denpasar Selatan'),
(358, 'Karya Dharma', 'Sesetan', 'Denpasar Selatan'),
(359, 'Pegok', 'Sesetan', 'Denpasar Selatan'),
(360, 'Taman Sari', 'Sesetan', 'Denpasar Selatan'),
(361, 'Taman Suci', 'Sesetan', 'Denpasar Selatan'),
(362, 'Lantang Bejuh', 'Sesetan', 'Denpasar Selatan'),
(363, 'Dukuh Sari', 'Sesetan', 'Denpasar Selatan'),
(364, 'Gaduh', 'Sesetan', 'Denpasar Selatan'),
(365, 'Alas Arum', 'Sesetan', 'Denpasar Selatan'),
(366, 'Tengah', 'Sesetan', 'Denpasar Selatan'),
(367, 'Pembungan', 'Sesetan', 'Denpasar Selatan'),
(368, 'Kaja', 'Sesetan', 'Denpasar Selatan'),
(369, 'Puri Agung', 'Sesetan', 'Denpasar Selatan'),
(370, 'Kerta Sari', 'Sidakarya', 'Denpasar Selatan'),
(371, 'Dukuh Mertajati', 'Sidakarya', 'Denpasar Selatan'),
(372, 'Tengah', 'Sidakarya', 'Denpasar Selatan'),
(373, 'Graha Kerti', 'Sidakarya', 'Denpasar Selatan'),
(374, 'Sari', 'Sidakarya', 'Denpasar Selatan'),
(375, 'Graha Santhi', 'Sidakarya', 'Denpasar Selatan'),
(376, 'Sekar Kangin', 'Sidakarya', 'Denpasar Selatan'),
(377, 'Kerta Dalem', 'Sidakarya', 'Denpasar Selatan'),
(378, 'Suwung Kang', 'Sidakarya', 'Denpasar Selatan'),
(379, 'Kerta Raharja', 'Sidakarya', 'Denpasar Selatan'),
(380, 'Wira Satya', 'Sidakarya', 'Denpasar Selatan'),
(381, 'Kerta Petasikan', 'Sidakarya', 'Denpasar Selatan'),
(382, 'Pemogan Kaja', 'Pemogan', 'Denpasar Selatan'),
(383, 'Panti Sari', 'Pemogan', 'Denpasar Selatan'),
(384, 'Panti Gede', 'Pemogan', 'Denpasar Selatan'),
(385, 'Gunung', 'Pemogan', 'Denpasar Selatan'),
(386, 'Gelogor Carik', 'Pemogan', 'Denpasar Selatan'),
(387, 'Kajeng', 'Pemogan', 'Denpasar Selatan'),
(388, 'Rangkansari', 'Pemogan', 'Denpasar Selatan'),
(389, 'Sakah', 'Pemogan', 'Denpasar Selatan'),
(390, 'Praja Raksaka', 'Pemogan', 'Denpasar Selatan'),
(391, 'Taruna Bhineka', 'Pemogan', 'Denpasar Selatan'),
(392, 'Mekar Jaya', 'Pemogan', 'Denpasar Selatan'),
(393, 'Dukuh Tangkas', 'Pemogan', 'Denpasar Selatan'),
(394, 'Jaba Jati', 'Pemogan', 'Denpasar Selatan'),
(395, 'Jaba Tengah', 'Pemogan', 'Denpasar Selatan'),
(396, 'Kampung Islam', 'Pemogan', 'Denpasar Selatan'),
(397, 'Dalem Kesumasari', 'Pemogan', 'Denpasar Selatan'),
(398, 'Dalem', 'Pemogan', 'Denpasar Selatan'),
(399, 'Kaja', 'Renon', 'Denpasar Selatan'),
(400, 'Kelod', 'Renon', 'Denpasar Selatan'),
(401, 'Tengah', 'Renon', 'Denpasar Selatan'),
(402, 'Peken', 'Renon', 'Denpasar Selatan'),
(403, 'Pande', 'Renon', 'Denpasar Selatan'),
(404, 'Pesanggaran', 'Pedungan', 'Denpasar Selatan'),
(405, 'Ambengan', 'Pedungan', 'Denpasar Selatan'),
(406, 'Dukuh Pesirahan', 'Pedungan', 'Denpasar Selatan'),
(407, 'Kepisah', 'Pedungan', 'Denpasar Selatan'),
(408, 'Karang Suwung', 'Pedungan', 'Denpasar Selatan'),
(409, 'Pande', 'Pedungan', 'Denpasar Selatan'),
(410, 'Kaja', 'Pedungan', 'Denpasar Selatan'),
(411, 'Menesa', 'Pedungan', 'Denpasar Selatan'),
(412, 'Puseh', 'Pedungan', 'Denpasar Selatan'),
(413, 'Sawah', 'Pedungan', 'Denpasar Selatan'),
(414, 'Begawan', 'Pedungan', 'Denpasar Selatan'),
(415, 'Pitik', 'Pedungan', 'Denpasar Selatan'),
(416, 'Geladag', 'Pedungan', 'Denpasar Selatan'),
(417, 'Sama', 'Pedungan', 'Denpasar Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `user_surveyor`
--

CREATE TABLE `user_surveyor` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_surveyor`
--

INSERT INTO `user_surveyor` (`id`, `username`, `password`, `kategori`) VALUES
(2, 'rama', '1234', ''),
(3, 'admin', '1234', 'admin'),
(4, 'surveyor1', '1234', 'surveyor'),
(5, 'tuedi', 'tuedi1234', 'admin'),
(6, 'arivan', 'arivan1234', 'surveyor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_region`
--
ALTER TABLE `data_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_surveyor`
--
ALTER TABLE `user_surveyor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_surveyor`
--
ALTER TABLE `user_surveyor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;