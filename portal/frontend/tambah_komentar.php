<?php

include 'koneksi.php';

$no = mysqli_query($koneksi, "select id from komentar order by id desc ");

$kode_komentar = mysqli_fetch_array($no);
$kode = $kode_komentar['id'];

$susun = substr($kode, 3, 5);
$plus = (int) $susun + 1;

if(strlen($plus) == 1){

$tambah = "K-"."0".$plus;

}

elseif (strlen($plus) == 2) {
$tambah = "K-"."0".$plus;
}

else{

$tambah = "K-".$plus;
}

$id = $tambah;
$nama = $_POST['nama'];
$email = $_POST['email'];
$komentar = $_POST ['komentar'];
$aktif = 'N';
$id_berita = $_POST['id_berita'];

mysqli_query($koneksi,"insert into komentar values('$id','$nama','$email','$komentar','$aktif','$id_berita')");

header("location:halaman.php");

?>