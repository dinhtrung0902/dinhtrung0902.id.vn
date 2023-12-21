<?php
	session_start();  
	if($_SESSION['email']=='admin@gmail.com' && $_SESSION['pass']=='123'){
		$id_donhang=$_GET['id_donhang'];
		include_once'../../ketnoi.php';
		$sql="DELETE FROM chitietdonhang WHERE id_donhang='$id_donhang'";
		$query=mysqli_query($conn ,$sql);
		header('location: ../../quantri.php?page_layout=danhsachdonhang');
	}else{
		header('location: ../../index.php');
	}
?>