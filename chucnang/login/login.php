<?php 
    if (isset($_SESSION['email'])){
?>
<div id="login" class="col-md-4 col-sm-12 col-xs-12 text-right">
    <div id="login-main">
        <span class="welcome-text">Xin chào, <?php echo htmlspecialchars($_SESSION['email']); ?></span>
        <button class="btn btn-logout" onclick="location.href='./quantri/chucnang/dangxuat/dangxuat.php'">Đăng xuất</button>
    </div>
</div>
<?php  
    } else {
?>
<div id="login" class="col-md-4 col-sm-12 col-xs-12 text-right">
    <div id="login-main">
        <button class="btn btn-login" onclick="location.href='./quantri/index.php'">Đăng nhập</button>
        <button class="btn btn-register" onclick="location.href='./chucnang/tao_tk/taotk.php'">Đăng ký</button>
    </div>
</div>
<?php  
    }
?>

<style>
    #login-main {
        display: flex;
        align-items: center;
        justify-content: flex-end;
    }
    .welcome-text {
        margin-right: 10px;
        font-weight: bold;
    }
    .btn {
        padding: 8px 16px;
        margin-left: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
        transition: background-color 0.3s;
    }
    .btn-login {
        background-color: #4CAF50;
        color: white;
    }
    .btn-register {
        background-color: #008CBA;
        color: white;
    }
    .btn-logout {
        background-color: #f44336;
        color: white;
    }
    .btn:hover {
        opacity: 0.8;
    }
</style>
