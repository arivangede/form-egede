const pilihRegion = document.querySelector(".container-pilih-region");

if (pilihRegion) {
  $(document).ready(function () {
    // Ketika input kecamatan berubah
    $("#kecamatan").on("input", function () {
      var kecamatan = $(this).val();

      if (kecamatan !== "") {
        $.ajax({
          url: "fungsi/get_desa.php",
          type: "POST",
          data: {
            kecamatan: kecamatan,
          },
          dataType: "json",
          success: function (response) {
            var options = "";
            for (var i = 0; i < response.length; i++) {
              options += '<option value="' + response[i] + '">';
            }
            $("#list_desa").html(options);
            $("#desa").val("");
            $("#desa").prop("disabled", false);
            $("#dusun").val("");
            $("#dusun").prop("disabled", true);
          },
        });
      } else {
        $("#list_desa").html("");
        $("#desa").val("");
        $("#desa").prop("disabled", true);
        $("#dusun").val("");
        $("#dusun").prop("disabled", true);
      }
    });

    // Ketika input desa berubah
    $("#desa").on("input", function () {
      var kecamatan = $("#kecamatan").val();
      var desa = $(this).val();

      if (desa !== "") {
        $.ajax({
          url: "fungsi/get_dusun.php",
          type: "POST",
          data: {
            kecamatan: kecamatan,
            desa: desa,
          },
          dataType: "json",
          success: function (response) {
            var options = "";
            for (var i = 0; i < response.length; i++) {
              options += '<option value="' + response[i] + '">';
            }
            $("#list_dusun").html(options);
            $("#dusun").val("");
            $("#dusun").prop("disabled", false);
          },
        });
      } else {
        $("#list_dusun").html("");
        $("#dusun").val("");
        $("#dusun").prop("disabled", true);
      }
    });
  });
}

const formPertanyaan = document.querySelector(".form-pertanyaan");
if (formPertanyaan) {
  // Ambil referensi elemen radio dan elemen select
  const radioAdaCacat = document.getElementById("ada-cacat");
  const radioTidakAdaCacat = document.getElementById("tidak-ada-cacat");
  const selectCacat = document.getElementById("pilihan-jika-ada-cacat");

  // Tambahkan event listener untuk perubahan pada elemen radio
  radioAdaCacat.addEventListener("change", function () {
    // Jika elemen radio "ada" dipilih, aktifkan elemen select
    if (radioAdaCacat.checked) {
      selectCacat.disabled = false;
    } else {
      selectCacat.disabled = true;
    }
  });

  radioTidakAdaCacat.addEventListener("change", function () {
    // Jika elemen radio "tidak ada" dipilih, nonaktifkan elemen select
    if (radioTidakAdaCacat.checked) {
      selectCacat.disabled = true;
    } else {
      selectCacat.disabled = false;
    }
  });

  // Cek status radio saat halaman dimuat
  if (radioAdaCacat.checked) {
    selectCacat.disabled = false;
  } else if (radioTidakAdaCacat.checked) {
    selectCacat.disabled = true;
  }

  const radioAdaUsaha = document.getElementById("ada-usaha");
  const radioTidakAdaUsaha = document.getElementById("tidak-ada-usaha");
  const selectUsaha = document.getElementById("pilihan-jika-ada-usaha");

  // Tambahkan event listener untuk perubahan pada elemen radio
  radioAdaUsaha.addEventListener("change", function () {
    // Jika elemen radio "ada" dipilih, aktifkan elemen select
    if (radioAdaUsaha.checked) {
      selectUsaha.disabled = false;
    } else {
      selectUsaha.disabled = true;
    }
  });

  radioTidakAdaUsaha.addEventListener("change", function () {
    // Jika elemen radio "tidak ada" dipilih, nonaktifkan elemen select
    if (radioTidakAdaUsaha.checked) {
      selectUsaha.disabled = true;
    } else {
      selectUsaha.disabled = false;
    }
  });

  // Cek status radio saat halaman dimuat
  if (radioAdaUsaha.checked) {
    selectUsaha.disabled = false;
  } else if (radioTidakAdaUsaha.checked) {
    selectUsaha.disabled = true;
  }

  const radioLayakHuni = document.getElementById("layak-huni");
  const radioTidakLayakHuni = document.getElementById("tidak-layak-huni");
  const selectAlasanTidakLayak = document.getElementById(
    "pilihan-jika-tidak-layak-huni"
  );

  // Tambahkan event listener untuk perubahan pada elemen radio
  radioLayakHuni.addEventListener("change", function () {
    // Jika elemen radio "ada" dipilih, aktifkan elemen select
    if (radioLayakHuni.checked) {
      selectAlasanTidakLayak.disabled = true;
    } else {
      selectAlasanTidakLayak.disabled = false;
    }
  });

  radioTidakLayakHuni.addEventListener("change", function () {
    // Jika elemen radio "tidak ada" dipilih, nonaktifkan elemen select
    if (radioTidakLayakHuni.checked) {
      selectAlasanTidakLayak.disabled = false;
    } else {
      selectAlasanTidakLayak.disabled = true;
    }
  });

  // Cek status radio saat halaman dimuat
  if (radioLayakHuni.checked) {
    selectAlasanTidakLayak.disabled = true;
  } else if (radioTidakLayakHuni.checked) {
    selectAlasanTidakLayak.disabled = false;
  }
}
