<!DOCTYPE html>
<html>
<head>
    <title>Xác Nhận Đơn Hàng Thành Công</title>
    <style>
        body {
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
        }
        
        #custom-form {
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        
        .ordered {
            margin-bottom: 20px;
        }
        
        .ordered-report {
            font-weight: bold;
            font-size: 18px;
        }
        
        #return-home {
            margin-top: 20px;
            text-align: right;
        }
        
        #return-home a {
            text-decoration: none;
            color: #333;
        }
        
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div id="custom-form">
        <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
            <div class="ordered">
                <p class="ordered-report">Quý khách đã đặt hàng thành công!</p>
                <p>• Hóa đơn mua hàng của Quý khách đã được chuyển đến địa chỉ Email có trong phần thông tin khách hàng của chúng tôi</p>
                <p>• Sản phẩm của quý khách sẽ được chuyển đến địa chỉ có trong phần thông tin khách hàng của chúng tôi sau thời gian 1 đến 3 ngày(tùy khoảng cách), tính từ thời điểm này.</p>
                <p>• Nhân viên giao hàng sẽ liên hệ với quý khách qua số điện thoại trước khi giao hàng 30 phút</p>
                <p align="center">Cám ơn quý khách đã sử dụng sản phẩm của cửa hàng chúng tôi!</p>
            </div>        
              
        </form>
    </div>
    
    <button class="btn btn-info" name="submit" onclick="redirectToHomePage()">Trang Chủ</button>    
<script>
    function redirectToHomePage() {
        window.location.href = '../../index.php';
    }
</script>
</body>
</html>