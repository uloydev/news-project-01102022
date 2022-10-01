<?php

include 'koneksi.php';

$id = $_POST['id'];
$nama = $_POST['inputnama'];
$alamat = $_POST['inputalamat'];
$mail = $_POST ['inputemail'];
$user = $_POST['inputuser'];
$pass = $_POST['inputpass'];
$lv = $_POST['lv'];

mysqli_query($koneksi,"update user set nama='$nama', alamat='$alamat', email='$mail', username='$user',password='$pass', level='$lv' where id='$id'");

header("location:tabledata.php");
?>