<?php  
	session_start();
	if(isset($_GET['id_sp'])){
		$id_sp=$_GET['id_sp'];
		if(count($_SESSION['giohang'])==1){
			unset($_SESSION['giohang']);
		} else {
			if($id_sp==0){
				unset($_SESSION['giohang']);
			}else{
				unset($_SESSION['giohang'][$id_sp]);
			}
		}
	}
	header('location: ../../index.php?page_layout=giohang');
?>