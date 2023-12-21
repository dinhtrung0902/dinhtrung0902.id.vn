<?php 
	if (isset($_SESSION['email'])){
?>
<div id="login" class="col-md-4 col-sm-12 col-xs-12 text-right">
    <div id="login-main">
        <ul>
        	<li id="user">Xin chào <?php echo $_SESSION['email'];?>
                <div>
                    <ul id="user-main">
                        <li><a href="./quantri/chucnang/dangxuat/dangxuat.php">Đăng xuất</a></li>
                    </ul>      
                </div>
            </li>
        </ul>
    </div>
</div>
<?php  
	}else{
?>
<div id="login" class="col-md-4 col-sm-12 col-xs-12 text-right" style="padding-top: 7px; margin-bottom: -4px;">
    <div id="login-main">
        <p><button><a href="./quantri/index.php">Đăng nhập</a></button> <span> / </span> <button><a href="./chucnang/tao_tk/taotk.php">Đăng ký</a></button></p>
    </div>
</div>
<?php  
	}
?>