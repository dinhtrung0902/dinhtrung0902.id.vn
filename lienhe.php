<?php
// Kiểm tra xem người dùng đã nhấp vào nút Gửi chưa
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Kiểm tra xem tất cả các trường đã được điền đầy đủ hay không
    if (!empty($_POST['name']) && !empty($_POST['sdt']) && !empty($_POST['email']) && !empty($_POST['message'])) {
        $name = $_POST['name'];
        $sdt = $_POST['sdt'];
        $email = $_POST['email'];
        $message = $_POST['message'];
        $datetime = date('Y-m-d H:i:s'); // Lấy ngày giờ hiện tại

        // Kiểm tra định dạng email hợp lệ
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Lưu thông tin vào cơ sở dữ liệu

            $conn = new mysqli('localhost', 'root', '', 'xemay2');
            if ($conn->connect_error) {
                die("Kết nối cơ sở dữ liệu thất bại: " . $conn->connect_error);
            }

            $sql = "INSERT INTO lienhe (email, hoten, sdt, ngaygio, nhanxet) VALUES ('$email', '$name', '$sdt', '$datetime', '$message')";

            if ($conn->query($sql) === TRUE) {
                echo "Thông tin đã được gửi thành công!";
            } else {
                echo "Lỗi khi lưu thông tin: " . $conn->error;
            }

            $conn->close();
        } else {
            echo "Email không hợp lệ!";
        }
    } else {
        echo "Vui lòng điền đầy đủ thông tin!";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Liên hệ - Huyền thoại xe máy </title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Liên hệ với chúng tôi</h1>
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <div class="form-group">
                <label for="name">Họ và tên:</label>
                <input type="text" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="phone">Số điện thoại:</label>
                <input type="text" name="sdt" required>
            </div>

            <div class="form-group">
                <label for="message">Nội dung:</label>
                <textarea name="message" required rows="8"></textarea>
            </div>

            <div class="form-group">
                <input type="submit" value="Gửi">
            </div>
        </form>
        <div class="form-group">
            <a href="index.php" class="lienhe-btn">Trang chủ</a>
            </div>
    </div>
</body>
</html>
<style>
    .container {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f2f2f2;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #555;
}

input[type="text"],
input[type="email"],
textarea {
    width: 95%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.error {
    color: red;
    margin-top: 5px;
}
.body{
    background: url("../images/banner.jpg");
}
</style>