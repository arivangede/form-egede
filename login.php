<?php
require  'fungsi/functions.php';

session_start();
if (isset($_POST["button-login"])) {


  $username = $_POST["username"];
  $password = $_POST["password"];



  $result = mysqli_query($conn, "SELECT * FROM user_surveyor WHERE username = '$username' ");

  if (mysqli_num_rows($result) === 1) {

    $row = mysqli_fetch_assoc($result);

    if ($password === $row["password"]) {
      if ($row['kategori'] == 'admin') {
        $_SESSION['login'] = true;
        header('Location: index.php');
      } elseif ($row['kategori'] == 'surveyor') {
        $_SESSION['login'] = true;
        $_SESSION['username'] = $username;
        header('Location: pilih-region.php');
      }
      exit;
    }
  }

  $error = true;
}







?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/form.css" />
  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />

  <title>Login Form | e-GeDe</title>
</head>

<body>
  <div class="container">
    <div class="login-judul">
      <h1>FORM SURVEY GERBANG DESA DIGITAL</h1>
      <div class="logo">
        <img src="img/logo.png" alt="logo">
      </div>
    </div>
    <div class="container-login">
      <div class="form-head">
        <h1>LOGIN</h1>
        <h2>Surveyor</h2>
        <?php if (isset($error)) : ?>
          <div class="wrong-password">
            <p>username / password salah</p>
          </div>
        <?php endif; ?>
      </div>

      <form class="form-login" action="" method="post">
        <div class="input-form">
          <input class="input-login" type="text" name="username" required autocomplete="off" />
          <label>Username </label>
          <i class="bx bxs-user"></i>
        </div>
        <div class="input-form">
          <input class="input-login" type="password" name="password" required />
          <label>Password</label>
          <i class="bx bxs-lock"></i>
        </div>
        <button class="button-login" type="submit" name="button-login">
          LOGIN
        </button>
      </form>
    </div>
  </div>
</body>

</html>