<?php

include 'koneksi.php';

$id = $_POST['id'];
$nama = $_POST['inputnama'];
$alamat = $_POST['inputalamat'];
$mail = $_POST ['inputemail'];
$user = $_POST['inputuser'];
$pass = $_POST['inputpass'];
$lv = $_POST['lv'];

mysqli_query($koneksi,"insert into user values('$id','$nama','$alamat','$mail','$user','$pass','$lv')");

header("location:tabledata.php");

?>