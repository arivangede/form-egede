<?php
// Memulai atau mengaktifkan sesi
session_start();

// Hapus semua data sesi
session_unset();

// Hancurkan sesi
session_destroy();

// Redirect atau arahkan kembali pengguna ke halaman login atau halaman lain yang sesuai setelah logout
header('Location: ../login.php');
exit();
