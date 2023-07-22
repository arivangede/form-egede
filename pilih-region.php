<?php
// Koneksi ke database
require 'fungsi/functions.php';



// Mengambil data kecamatan dari tabel data-region
$query_kecamatan = "SELECT DISTINCT kecamatan FROM data_region";
$result_kecamatan = $conn->query($query_kecamatan);

$conn->close();


if (isset($_POST["submit"])) {
  header('Location:form-pertanyaan.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="css/form.css" />
  <title>Pilih Region | e-GeDe</title>
</head>

<body>
  <div class="container">
    <div class="login-judul">
      <h1>FORM SURVEY GERBANG DESA DIGITAL</h1>
      <div class="logo">
        <img src="img/logo.png" alt="logo">
      </div>
    </div>

    <div class="container-pilih-region">
      <div class="form-head">
        <h1>Pilih Region</h1>
        <h3>Denpasar</h3>
      </div>
      <form method="POST" action="" autocomplete="off">
        <div class="pilih-region">
          <input type="text" name="kecamatan" id="kecamatan" list="list_kecamatan" placeholder="-klik disini-">
          <label for="kecamatan" id="kecamatan-label">Kecamatan:</label>
          <datalist id="list_kecamatan">
            <?php
            // Menampilkan pilihan kecamatan
            if ($result_kecamatan->num_rows > 0) {
              while ($row = $result_kecamatan->fetch_assoc()) {
                echo "<option value='" . $row['kecamatan'] . "'>";
              }
            }
            ?>
          </datalist>
        </div>

        <div class="pilih-region">
          <input type="text" name="desa" id="desa" list="list_desa" disabled placeholder="-klik disini-">
          <label for="desa">Desa:</label>
          <datalist id="list_desa"></datalist>
        </div>

        <div class="pilih-region">
          <input type="text" name="dusun" id="dusun" list="list_dusun" disabled placeholder="-klik disini-">
          <label for="dusun">Dusun:</label>
          <datalist id="list_dusun"></datalist>
        </div>

        <button name="submit" value="submit">NEXT</button>
      </form>
    </div>
  </div>




  <script src="fungsi/form.js"></script>
</body>

</html>