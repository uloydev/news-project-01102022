<?php

include 'koneksi.php';

$id = $_POST['id'];
$nama = $_POST['nama'];
$email = $_POST['email'];
$komentar = $_POST ['komentar'];
$aktif = $_POST['aktif'];
$id_berita = $_POST['id_berita'];

mysqli_query($koneksi,"update komentar set nama='$nama', email='$mail', komentar='$komentar', aktif='$aktif', id_berita='$id_berita' where id='$id'");

header("location:tablekomentar.php");
?>