<?php 
session_start();

include 'koneksi.php';

$username = $_POST['username'];
$password = $_POST['password'];


$login = mysqli_query($koneksi,"select * from user where username='$username' and password='$password'");
$cek = mysqli_num_rows($login);

if($cek > 0){

	$data = mysqli_fetch_assoc($login);
	if($data['level']=="admin"){
		$_SESSION['username'] = $username;
		$_SESSION['level'] = "admin";
		header("location:admin/utama.php");
		}

	// else if($data['level']=="bendahara"){
	// 	$_SESSION['username'] = $username;
	// 	$_SESSION['level'] = "bendahara";
	// 	header("location:bendahara/utama1.php");
	// 	}

	// else if($data['level']=="ketua"){
	// 	$_SESSION['username'] = $username;
	// 	$_SESSION['level'] = "ketua";
	// 	header("location:ketua/utama2.php");
	// 	}

	// else if($data['level']=="sekdit"){
	// 	$_SESSION['username'] = $username;
	// 	$_SESSION['level'] = "sekdit";
	// 	header("location:sekdit/utama3.php");
	// 	}

	// else if($data['level']=="sekretaris"){
	// 	$_SESSION['username'] = $username;
	// 	$_SESSION['level'] = "sekretaris";
	// 	header("location:sekretaris/utama4.php");
	// 	}

	// 	else{
	// 	header("location:index.php?pesan=gagal");
	// 	}	
	// }
	// else{
	header("location:index.php?pesan=gagal");
}

?>