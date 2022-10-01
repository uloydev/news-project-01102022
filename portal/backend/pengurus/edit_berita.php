<?php

include 'koneksi.php';

$id = $_POST['id'];
$judul = $_POST['judul'];
$tgl_post = $_POST['tgl_post'];
$isi = $_POST ['isi'];
$penulis = $_POST['penulis'];
$gambar = $_POST['gambar'];

mysqli_query($koneksi,"update tambah_post set id='$id', judul='$judul', tgl_post='$tgl_post', isi='$isi', penulis='$penulis', gambar='$gambar' where id='$id'");

header("location:tableberita.php");

?>