<?php
require("koneksi.php");
$query = "SELECT * FROM myboba";
$eksekusi = mysqli_query($konek, $query);
$cek = mysqli_affected_rows($konek);

if($cek > 0){
    $response["kode"] = 1;
    $response["pesan"] = "Data Tersedia";
    $response["data"] = array ();

    while($ambil = mysqli_fetch_object($eksekusi)){
        $F["id"] = $ambil->id;
        $F["toko"] = $ambil->toko;
        $F["alamat"] = $ambil->alamat;
        $F["telepon"] = $ambil->telepon;

        array_push($response["data"], $F);
    }
}
else {
    $response["kode"] = 0;
    $response["pesan"] = "Data Tidak Tersedia";
}

echo json_encode($response);
mysqli_close($konek);