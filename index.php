<?php  
    ob_start();
    session_start();
    include_once './cauhinh/ketnoi.php';
    if( !isset($_SESSION['email']) || ($_SESSION['email']!='admin@gmail.com' && $_SESSION['pass']!='123')||($_SESSION['email']!='trung@gmail.com' && $_SESSION['pass']!='220120') ){
?>
<html>
    <head><title>Huyền thoại xe máy</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/    .js"></script>
        <link rel="stylesheet" href="css/style.css">
        <?php
            if(isset($_GET['page_layout'])){
            switch ($_GET['page_layout']) {
                case 'danhsachtimkiem':
                    echo '<link rel="stylesheet" href="css/danhsachtimkiem.css">';
                    break;
                case 'danhsachsp':
                    echo '<link rel="stylesheet" href="css/danhsachsp.css">';
                    break;
                case 'chitietsp':
                    echo '<link rel="stylesheet" href="css/chitietsp.css">';
                    break;
                case 'giohang':
                    echo '<link rel="stylesheet" href="css/giohang.css">';
                    break;              
                case 'muahang':
                    echo '<link rel="stylesheet" href="css/muahang.css">';
                    break;
                case 'hoanthanh':
                    echo '<link rel="stylesheet" href="css/hoanthanh.css">';
                    break;
                }
            }

        ?>
    </head>
    <body>
        <div class="container">
            <!-- Header -->
            <div id="header">
                <div class="row">
                    <!-- search -->
                    <?php  
                        include_once './chucnang/timkiem/timkiem.php';
                    ?>
                    <!-- end search -->
                    <?php  
                        include_once './chucnang/login/login.php';
                    ?>
                    <!-- y-cart -->
                    <?php  
                        include_once './chucnang/giohang/giohangcuaban.php';
                    ?>
                    <!-- end y-cart -->
                </div>
            </div>
            <!-- End Header -->

            <!-- Banner  -->
            <div id="banner">
                <div class="row">           
                    <div id="logo" class="col-md-4 col-sm-12 col-xs-12">
                        <h1>
                            <a href="index.php">
                                <img src="quantri/anh/logo.png">
                            </a>
                        </h1>
                    </div>
                    <div id="ship" class="col-md-8 col-sm-12 col-xs-12">
                        <img src="images/banner.png">
                    </div>            
                </div>        
            </div>
            <!-- End Banner -->

            <!-- Body -->
            <div id="body">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <?php  
                        include_once './chucnang/sanpham/danhmucsp.php';
                        include_once './chucnang/quangcao/quangcao.php';
                        include_once './chucnang/thongke/thongke.php';
                        ?>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <?php  
                        include_once './chucnang/slideshow/slideshow.php';
                        ?>

                        <div id="main">
                            <?php
                            if(isset($_GET['page_layout'])){
                                switch ($_GET['page_layout']) {
                                case 'danhsachtimkiem':
                                    include_once './chucnang/timkiem/danhsachtimkiem.php';
                                    break;
                                case 'danhsachsp':
                                    include_once './chucnang/sanpham/danhsachsp.php';
                                    break;
                                case 'chitietsp':
                                    include_once './chucnang/sanpham/chitietsp.php';
                                    break;
                                case 'giohang':
                                    include_once './chucnang/giohang/giohang.php';
                                    break;
                                case 'muahang':
                                    include_once './chucnang/giohang/muahang.php';
                                    break;
                                case 'hoanthanh':
                                    include_once './chucnang/giohang/hoanthanh.php';
                                    break;
                                }
                            }else{
                                include_once './chucnang/sanpham/sanpham.php';
                            }
                            
                            ?>
                        </div>
                            
                        
                    </div>
                </div>
            </div>  
            <!-- End Body -->

            <div id="brand">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p> </p>
                    </div>
                </div>
            </div>
            <a href="lienhe.php" class="lienhe-btn">Liên hệ</a>
            <!-- Footer -->
            <div id="footer">
                <div class="row">
                    <div id="footer-main" class="col-md-12 col-sm-12 col-xs-12">
                        <h4>Thành viên trong nhóm</h4>
                        <p>Nguyễn Đình Trung | <b>Ngày sinh</b> 09/02/2002</p> 
                        <p>Nguyễn Ngọc Vinh | <b>Ngày sinh</b> 09/02/2002</p>
                        <p>Vương Mạnh Thắng | <b>Ngày sinh</b> 09/02/2002</p>
                    </div>   
                </div>
            </div>
            <!-- End Footer -->
        </div>
    </body>
</html>
<style>
    .lienhe-btn {
    background-color: green;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 4px;
}

.lienhe-btn:hover {
    background-color: #2b8c5d;
    color: yellow;
}
</style>
<?php   
    }
    else{
        header('location: ./quantri/quantri.php');
    }
?>