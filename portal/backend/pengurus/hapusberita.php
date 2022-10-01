<?php

include 'koneksi.php';

$id = $_GET['id'];

mysqli_query($koneksi,"delete from tambah_post where id='$id'");

header("location:tableberita.php"); 

?>