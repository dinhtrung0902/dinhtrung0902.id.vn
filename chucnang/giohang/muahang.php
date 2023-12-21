<?php  
    if(isset($_SESSION['giohang'])){
        $arrid=array();
        foreach ($_SESSION['giohang'] as $id_sp => $sl) {
            $arrid[]=$id_sp;
        }
        $strId=implode(',', $arrid);
        $sql="SELECT * FROM sanpham WHERE id_sp IN($strId) ORDER BY id_sp DESC";
        $query=mysqli_query($conn,$sql);
    }
?>

<div id="checkout">
<h2 class="h2-bar">xác nhận hóa đơn thanh toán</h2>
<table class="table table-bordered">
    <tr>
    <thead>
    <th>Tên sản phẩm</th>
    <th>Giá</th>
    <th>Số lượng</th>
    <th>Thành tiền</th>
    </thead>
    </tr>

    <?php  
        $totalPriceAll=0;
        while ($row=mysqli_fetch_array($query)) {
            $totalPrice=$row['gia_sp']*$_SESSION['giohang'][$row['id_sp']];
    ?>
    <tr>
        <td><?php echo $row['ten_sp']; ?></td>
        <td><span><?php echo $row['gia_sp']; ?></span></td>
        <td><?php echo $_SESSION['giohang'][$row['id_sp']]; ?></td>
        <td><span><?php echo $totalPrice; ?></span></td>
    </tr>
    <?php
        $totalPriceAll+=$totalPrice;  
        }
    ?>
    <tr>
        <td>Tổng giá trị hóa đơn:</td>
        <td colspan="2"></td>
        <td><b><span><?php echo $totalPriceAll; ?></span></b></td>
    </tr>
</table>
</div>
<?php  
    if(isset($_POST['submit'])){
        $ten=$_POST['name'];
        $email=$_POST['mail'];
        $sdt=$_POST['mobi'];
        $diachi=$_POST['add'];
        if (isset($ten)&&isset($email)&&isset($sdt)&&isset($diachi)) { 
            if(isset($_SESSION['giohang'])){
                $arrid=array();
                foreach ($_SESSION['giohang'] as $id_sp => $sl) {
                    $arrid[]=$id_sp;
                }
                $strId=implode(',', $arrid);
                $sql="SELECT * FROM sanpham WHERE id_sp IN($strId) ORDER BY id_sp DESC";
                $query=mysqli_query($conn,$sql);
            }
        $strBody="";
                // Thông tin Khách hàng
        $strBody = '<p>
            <b>Khách hàng:</b> '.$ten.'<br />
            <b>Email:</b> '.$email.'<br />
            <b>Điện thoại:</b> '.$sdt.'<br />
            <b>Địa chỉ:</b> '.$diachi.'
        </p>';
        // Danh sách Sản phẩm đã mua
        $strBody .= '<table border="1px" cellpadding="10px" cellspacing="1px" width="100%">
            <tr>
                <td align="center" bgcolor="#3F3F3F" colspan="4"><font color="white"><b>XÁC NHẬN HÓA ĐƠN THANH TOÁN</b></font></td>
            </tr>
            <tr id="invoice-bar">
                <td width="45%"><b>Tên Sản phẩm</b></td>
                <td width="20%"><b>Giá</b></td>
                <td width="15%"><b>Số lượng</b></td>
                <td width="20%"><b>Thành tiền</b></td>
            </tr>';

            $totalPriceAll = 0;
            while($row = mysqli_fetch_array($query)){
            $totalPrice = $row['gia_sp']*$_SESSION['giohang'][$row['id_sp']];

            $strBody .= '<tr>
                <td class="prd-name">'.$row['ten_sp'].'</td>
                <td class="prd-price"><font color="#C40000">'.$row['gia_sp'].' VNĐ</font></td>
                <td class="prd-number">'.$_SESSION['giohang'][$row['id_sp']].'</td>
                <td class="prd-total"><font color="#C40000">'.$totalPrice.' VNĐ</font></td>
            </tr>';

            $totalPriceAll += $totalPrice;
            }

            $strBody .= '<tr>
                <td class="prd-name">Tổng giá trị hóa đơn là:</td>
                <td colspan="2"></td>
                <td class="prd-total"><b><font color="#C40000">'.$totalPriceAll.' VNĐ</font></b></td>
            </tr>
        </table>';

        $strBody .= '<p align="justify">
            <b>Quý khách đã đặt hàng thành công!</b><br />
            • Sản phẩm của Quý khách sẽ được chuyển đến Địa chỉ có trong phần Thông tin Khách hàng của chúng Tôi sau thời gian 2 đến 3 ngày, tính từ thời điểm này.<br />
            • Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 12 tiếng.<br />
            <b><br />Cám ơn Quý khách đã sử dụng Sản phẩm của Công ty chúng Tôi!</b>
        </p>';

        // // Thiết lập SMTP Server
        // require("class.phpmailer.php"); // nạp thư viện
        // $mailer = new PHPMailer(); // khởi tạo đối tượng
        // $mailer->IsSMTP(); // gọi class smtp để đăng nhập
        // $mailer->CharSet="utf-8"; // bảng mã unicode

        // //Đăng nhập Gmail
        // $mailer->SMTPAuth = true; // Đăng nhập
        // $mailer->SMTPSecure = "ssl"; // Giao thức SSL
        // $mailer->Host = "smtp.gmail.com"; // SMTP của GMAIL
        // $mailer->Port = 465; // cổng SMTP

        // // Phải chỉnh sửa lại
        // $mailer->Username = "admin@admin.vn"; // GMAIL username
        // $mailer->Password = "123"; // GMAIL password
        // $mailer->AddAddress($email, $ten); //email người nhận, $email và $ten là 2 biến đc gán bởi $_POST lấy từ trong form
        // $mailer->AddCC("admin@admin.vn", "Tiem Hoa UNETI"); // gửi thêm một email cho Admin

        // // Chuẩn bị gửi thư nào
        // $mailer->FromName = 'Tiem Hoa UNETI'; // tên người gửi
        // $mailer->From = 'admin@admin.vn'; // mail người gửi
        // $mailer->Subject = 'Hóa đơn xác nhận mua hàng từ Tiem Hoa UNETI';
        // $mailer->IsHTML(TRUE); //Bật HTML không thích thì false

        // // Nội dung lá thư
        // $mailer->Body = $strBody;

        // //gửi mail
        // if(!$mailer->Send()){
        //     //gửi không được đưa thông báo lôi
        //     echo "Lỗi gửi email: ".$mailer->ErrorInfo;
        // }else{
        //     //gửi thành công
        //     header('location: index.php?page_layout=hoanthanh'); 
        // }
        }
        // Kiểm tra và lấy thông tin giỏ hàng
  // Kiểm tra và lấy thông tin giỏ hàng
  if (isset($_SESSION['giohang'])) {
    $arrid = array();
    foreach ($_SESSION['giohang'] as $id_sp => $sl) {
        $arrid[] = $id_sp;
    }
    $strId = implode(',', $arrid);
    $sql = "SELECT * FROM sanpham WHERE id_sp IN($strId) ORDER BY id_sp DESC";
    $query = mysqli_query($conn, $sql);

    // Tạo câu truy vấn INSERT để chèn dữ liệu vào bảng donhang
    $insertQuery = "INSERT INTO donhang (ten_khachhang, email, sdt, diachi) 
                    VALUES ('$ten', '$email', '$sdt', '$diachi')";
    $insertResult = mysqli_query($conn, $insertQuery);
    
    $totalAmount = 0; // Biến để tích lũy tổng thành tiền
    if ($insertResult) {
        $donhangId = mysqli_insert_id($conn); // Lấy ID của đơn hàng vừa được chèn
    
        $ghiChuArray = array(); // Mảng để lưu các ghi chú
    
        foreach ($_SESSION['giohang'] as $id_sp => $sl) {
            $selectSpQuery = "SELECT * FROM sanpham WHERE id_sp = $id_sp";
            $spResult = mysqli_query($conn, $selectSpQuery);
        
            if ($spResult && mysqli_num_rows($spResult) > 0) {
                $spRow = mysqli_fetch_assoc($spResult);
                $gia_sp = $spRow['gia_sp'];
                $thanh_tien = $gia_sp * $sl;
        
                $totalAmount += $thanh_tien; // Tích lũy tổng thành tiền
        
                $ghiChu = "id_sp: $id_sp, sl: $sl";
                $ghiChuArray[] = $ghiChu; // Thêm ghi chú vào mảng
            }
        }
    
        $ghiChuString = implode('; ', $ghiChuArray); // Nối các ghi chú thành một chuỗi duy nhất
    
        $insertChiTietQuery = "INSERT INTO chitietdonhang (id_donhang, ghi_chu,thanh_tien)
                               VALUES ($donhangId, '$ghiChuString',$totalAmount)";
        mysqli_query($conn, $insertChiTietQuery);
    
        // Xóa giỏ hàng sau khi đã hoàn tất đặt hàng
        unset($_SESSION['giohang']);
    
        // Hiển thị thông báo thành công hoặc chuyển hướng đến trang cần thiết
        echo "Đặt hàng thành công!";
        header("Location: chucnang/giohang/hoanthanh.php");
        exit();
    } else {
        echo "Đặt hàng không thành công. Vui lòng thử lại.";
    }
}
    }
?>
<div id="custom-form" class="col-md-6 col-sm-8 col-xs-12">
<form method="post" action="">
    <div class="form-group">
        <label>Tên khách hàng</label>
        <input required type="text" class="form-control" name="name">
    </div>
    <div class="form-group">
        <label>Địa chỉ Email</label>
        <input required type="text" class="form-control" name="mail">
    </div>
    <div class="form-group">
        <label>Số Điện thoại</label>
        <input required type="text" class="form-control" name="mobi">
    </div>
    <div class="form-group">
        <label>Địa chỉ nhận hàng</label>
        <input required type="text" class="form-control" name="add">
    </div>
    <button class="btn btn-info" name="submit">Mua hàng</button>
</form>
</div>