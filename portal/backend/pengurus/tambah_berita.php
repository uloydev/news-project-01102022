<?php

include 'koneksi.php';

$id = $_POST['id'];
$judul = $_POST['judul'];
$tgl_post = $_POST['tgl_post'];
$isi = $_POST ['isi'];
$penulis = $_POST['penulis'];
$gambar = $_POST['gambar'];

mysqli_query($koneksi,"insert into tambah_post values('$id','$judul','$tgl_post','$isi','$penulis','$gambar')");

header("location:tableberita.php");

?>