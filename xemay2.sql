-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 04:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhoa_uneti_14a11`
--

-- --------------------------------------------------------

--
-- Table structure for table `blsanpham`
--

CREATE TABLE `blsanpham` (
  `id_bl` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `binh_luan` text NOT NULL,
  `ngay_gio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blsanpham`
--

INSERT INTO `blsanpham` (`id_bl`, `id_sp`, `ten`, `dien_thoai`, `binh_luan`, `ngay_gio`) VALUES
(19, 36, 'diệu', '0123', 'Đây là sản phẩm tuỵt vời', '2023-10-26 06:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_donhang` int(11) NOT NULL,
  `ghi_chu` longtext NOT NULL,
  `thanh_tien` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_donhang`, `ghi_chu`, `thanh_tien`) VALUES
(15, 'id_sp: 37, sl: 2, thanh_tien: 172000000; id_sp: 15, sl: 1, thanh_tien: 8600000', 0),
(16, 'id_sp: 25, sl: 1, thanh_tien: 8600000; id_sp: 30, sl: 1, thanh_tien: 100000000; id_sp: 16, sl: 1, thanh_tien: 86000000', 0),
(17, 'id_sp: 15, sl: 1, thanh_tien: 8600000; id_sp: 4, sl: 3, thanh_tien: 25800000; id_sp: 8, sl: 2, thanh_tien: 17200000', 17200000),
(18, 'id_sp: 24, sl: 4; id_sp: 29, sl: 1; id_sp: 9, sl: 1', 8600000),
(19, 'id_sp: 30, sl: 1; id_sp: 24, sl: 3', 25800000),
(20, 'id_sp: 16, sl: 4; id_sp: 15, sl: 2; id_sp: 14, sl: 1', 369800000);

-- --------------------------------------------------------

--
-- Table structure for table `dmsanpham`
--

CREATE TABLE `dmsanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(0, '#Tất cả sản phẩm'),
(1, 'Hoa đơn'),
(2, 'Hoa chùm'),
(3, 'Hoa mùa xuân'),
(4, 'Hoa mùa hạ'),
(5, 'Hoa mùa thu'),
(6, 'Hoa mùa đông'),
(7, 'Hoa trang trí'),
(8, 'Hoa lớn'),
(9, 'Hoa nhỏ');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `ten_khachhang` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `ten_khachhang`, `email`, `sdt`, `diachi`) VALUES
(15, 'xuân diệu', 'xdieu2k2@gmail.com', 394508922, 'Hà Nội'),
(16, 'xuân diệu cute', 'dieucute@cute.vn', 123456789, 'Bắc Giang'),
(17, 'thu phương', 'tphuong@gmail.com', 978456321, 'Bắc Giang'),
(18, 'admin', 'admin', 666, 'admin'),
(19, 'admin2', 'admin2', 666, 'admin2'),
(20, 'admin3', 'admin3', 666, 'admin3');

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `id_quangcao` int(11) NOT NULL,
  `id_thue` int(11) NOT NULL,
  `ten_anh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `quangcao`
--

INSERT INTO `quangcao` (`id_quangcao`, `id_thue`, `ten_anh`) VALUES
(9, 3, 'quangcao1.jpg'),
(10, 3, 'quangcao2.jpg'),
(11, 3, 'quangcao3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) UNSIGNED NOT NULL,
  `id_dm` int(11) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) NOT NULL,
  `anh_sp` varchar(255) NOT NULL,
  `gia_sp` varchar(255) NOT NULL,
  `bao_hanh` varchar(255) NOT NULL,
  `phu_kien` varchar(255) NOT NULL,
  `tinh_trang` varchar(255) NOT NULL,
  `khuyen_mai` varchar(255) NOT NULL,
  `trang_thai` varchar(255) NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(39, 2, 'Hoa chấm bi hồng', 'hoababyhong.jpg', '350000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(40, 2, 'Hoa chấm bi mix', 'hoababymix.jpg', '400000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(41, 2, 'Hoa chấm bi tím', 'hoababytim.jpg', '370000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(42, 2, 'Hoa chấm bi trắng', 'hoababytrang.jpg', '300000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(43, 2, 'Hoa chấm bi xanh', 'hoababyxanh.jpg', '350000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(44, 2, 'Hoa chấm bi xanh dương (không trang trí)', 'hoababyxanhduong.jpg', '200000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(45, 2, 'Hoa chấm bi tím (bản giới hạn)', 'hoabongbitim.jpg', '420000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa baby có xuất xứ từ các nước lục địa Á – Âu, Châu Phi, Úc và sau khi được nhân giống đi khắp mọi nơi trên thế giới, loài hoa này trở nên phổ biến hơn. Hoa baby thường được sử dụng để tặng cho người thân, bạn bè và người yêu bởi chúng tượng trưng cho tình yêu và sự dịu dàng giống như hình dạng của loài hoa này. Hoa baby có tên gọi tiếng anh là “baby’s breath” – mang nghĩa là hơi thở của em bé. Bởi chúng có vẻ ngoài giống như những bông tuyết mong manh bé nhỏ nhưng lại có sức sống vô cùng mạnh mẽ.'),
(46, 2, 'Hoa cưới cầm tay', 'hoacamtaycuoi.jpg', '150000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa Cầm Tay Cô Dâu Ngày Cưới. Hoa cầm tay là một trong những món phụ kiện không thể thiếu của cô dâu trong lễ cưới.'),
(47, 2, 'Hoa cúc bé', 'hoacucbe.jpg', '222000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa Cầm Tay Cô Dâu Ngày Cưới. Hoa cầm tay là một trong những món phụ kiện không thể thiếu của cô dâu trong lễ cưới.'),
(48, 3, 'Hoa cúc hồng', 'hoacuchong.jpg', '275000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Nó thể hiện sự ngọt ngào và chân thành, đồng thời còn có ý nghĩa về sự tinh khiết và vô tư. Sự hạnh phúc và may mắn: Hoa cúc hồng cũng có thể được sử dụng để biểu thị sự hạnh phúc và may mắn. Nó thường được tặng nhau vào các dịp lễ, kỷ niệm để thể hiện tình cảm và sự tri ân.'),
(49, 4, 'Hoa cúc mẫu đơn', 'hoacucmaudon.jpg', '300000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa cúc mẫu đơn có được, đây là loài hoa thể hiện cho những lời chúc tốt đẹp về sự thành công và hạnh phúc tròn đầy, đồng thời là lời cầu mong có một sức khỏe dồi dào, sống lâu. Do đó, hoa cúc mẫu đơn thường được dùng trong những dịp lễ, tết, ngày kỷ niệm, ngày cưới, sinh nhật,...'),
(50, 5, 'Hoa cúc vàng nhỏ', 'hoacucvangnho.jpg', '333000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa cúc vàng biểu trưng cho tình yêu nồng cháy, son sắt thủy chung, quyết một lòng một dạ hướng về một người. Do đó, loài hoa này hay được các bạn nam lựa chọn tặng người thương như lời nhắn nhủ sẽ yêu nàng tới hết cuộc đời này.'),
(51, 6, 'Hoa đồng tiền', 'hoadongtien.jpg', '150000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa đồng tiền có ý nghĩa về sự may mắn, tin tưởng và thịnh vượng. Khi tặng hoa đồng tiền cho một ai đó sẽ có ý nghĩa như nhắn gửi lời yêu thương chân thành và ấn tượng tới người nhận. Đặc biệt, hoa đồng tiền còn có ý nghĩa tượng trưng cho tình yêu chân thành, sự vui tươi và hạnh phúc.'),
(52, 6, 'Hoa đồng tiền mix', 'hoadongtienmix.jpg', '185000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa đồng tiền có ý nghĩa về sự may mắn, tin tưởng và thịnh vượng. Khi tặng hoa đồng tiền cho một ai đó sẽ có ý nghĩa như nhắn gửi lời yêu thương chân thành và ấn tượng tới người nhận. Đặc biệt, hoa đồng tiền còn có ý nghĩa tượng trưng cho tình yêu chân thành, sự vui tươi và hạnh phúc.'),
(53, 4, 'Hoa hồng cam', 'hoahongcam.jpg', '250000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa hồng cam thường được sử dụng trong các dịp kỷ niệm, để tôn vinh sự độc lập và sức mạnh của người nhận hoa. Chính vì vậy, hoa hồng cam cũng có thể được sử dụng để gửi lời chúc mừng và sự khích lệ trong các dịp như kỷ niệm, lễ tốt nghiệp hay bất cứ dịp đặc biệt nào trong cuộc sống.'),
(54, 4, 'Hoa hồng đỏ', 'hoahongdo.jpg', '235000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa hồng đỏ - loài hoa mang vẻ đẹp hoàn hảo Ở văn hóa các nước phương Tây thì ý nghĩa chung của hoa hồng đỏ là biểu tượng của sự hoàn hảo. Và loại hoa này là hình ảnh đại diện cho sắc đẹp người phụ nữ. Khi tặng bó hoa hồng đỏ cho ai đó là bạn đang khen ngợi sự xinh đẹp và hoàn mỹ trong họ.'),
(55, 7, 'Hoa hồng giả', 'hoahonggia.jpg', '200000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa hồng giả rất phong phú về nghệ thuật, chủng loại và màu sắc.'),
(56, 7, 'Hoa hồng mix', 'hoahongmix.jpg', '370000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa hồng mix gồm rất nhiều các loại hoa hồng kết hợp với nhau rất phong phú về nghệ thuật, chủng loại và màu sắc.'),
(57, 5, 'Hoa hồng trắng', 'hoahongtrang.jpg', '390000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa hồng trắng tôn vinh sự vĩnh cửu, lòng trung thành trong tình yêu và tình bạn. Một sự gắn bó của hai tâm hồn vượt qua mọi cám dỗ và khó khăn. Loài hoa này còn có thể thay cho lời yêu chung thủy, biểu đạt một tình cảm trong sáng, một lời hứa sát cánh cùng nhau khi nắm tay nhau bước qua mọi thăng trầm cuộc sống.'),
(58, 5, 'Hoa hồng vàng', 'hoahongvang.jpg', '390000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa hồng vàng tượng trưng cho tình bạn vô tư, thân thiết, chân thành. Khi muốn động viên hay muốn ai đó biết rằng bạn đang quan tâm đến họ, thì hãy tặng ngay một đóa hoa hồng vàng nhé. Loại hoa này thường được dành như một lời chúc mừng hay chia sẻ niềm vui với những người thân quen.'),
(59, 4, 'Hoa lan', 'hoalan.jpg', '450000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Đó có thể là vẻ đẹp của sự quyến rũ, tinh tế, sang trọng, quý phái, hay dịu dàng, lịch lãm. Nó cũng có thể là vẻ đẹp của trí tuệ, sự thanh cao, tinh khiết, hay sự mạnh mẽ, quyết đoán. Nó cũng biểu trưng cho tình thủy chung, sự son sắt, lòng biết ơn.'),
(60, 3, 'Hoa linh lan', 'hoalinhlan.jpg', '560000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa linh lan là biểu tượng của hạnh phúc ở nước Pháp. Vào ngày 1.5 hằng năm, người Pháp có phong tục tặng nhau loài hoa này để chúc nhau một năm hạnh phúc, người nhận thường treo hoa trong phòng để mong rằng có nhiều niềm vui trong phần còn lại của năm. Ở Bỉ, Hà Lan, Thụy Sĩ và Andorra cũng có phong tục tương tự.'),
(61, 3, 'Hoa loa kèn', 'hoaloaken.jpg', '475000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa loa kèn chẳng rực rỡ như hoa đỗ quyên, nồng nàn quyến rũ như hoa hồng nhưng vẫn đủ sức chinh phục người yêu hoa nhờ sắc trắng tinh khiết và giản dị. Cũng nhờ đó, hoa loa kèn ý nghĩa tượng trưng cho sự chung thủy, hạnh phúc và mang lại sự hòa hợp.'),
(62, 5, 'Hoa sen hồng', 'hoasenhong.jpg', '560000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa sen hồng : tượng trưng cho lòng từ bi và tình yêu cao thượng. Màu hồng của hoa sen thể hiện vẻ đẹp bình dị, dân dã và hiếu khách của người Việt, sự lãng mạn, tình cảm và dịu dàng của người phụ nữ. Hoa sen hồng thường xuất hiện trong các nghi lễ Phật Giáo và là màu sen quốc hoa của Việt Nam.'),
(63, 5, 'Hoa sen trắng', 'hoasentrang.jpg', '540000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa sen trắng tượng trưng cho tình yêu chân thành, trong sáng và vị tha. Hình ảnh bông sen trắng thể hiện tấm lòng yêu thương, nghiêm túc, luôn mơ ước về một tình yêu vĩnh cửu, trường tồn. Vẻ đẹp của loài hoa này xuất hiện trong rất nhiều bài thơ tình của các thi nhân.'),
(64, 6, 'Hoa Siasiaka', 'hoasiasiaka.jpg', '10540000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Một loại hoa hiếm nhập khẩu có hình dáng vô cùng cuốn hút !!!'),
(65, 8, 'Hoa Tiền', 'hoatien.jpg', '2500000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Tiền làm thành bó hoa sẽ rất thú vị vì có vô số cách để xếp các tờ tiền lại với nhau tạo ra sự khác biệt và độc đáo. Tặng hoa bằng tiền vừa thể hiện sự chân thành vừa thực tế của người tặng đến đối phương. Những bông hoa từ tiền bạn sẽ không phải lo lắng hoa có bị héo, hư hay không.'),
(66, 8, 'Hoa tú cầu hồng', 'hoatucauhong.jpg', '750000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa cẩm tú cầu hồng thể hiện sự lãng mạn Ý nghĩa hoa cẩm tú cầu màu hồng biểu đạt tình cảm dạt dào, ngọt ngào và bay bổng, cực kỳ phù hợp cho các đôi đang yêu, cặp vợ chồng hâm nóng tình cảm. Bạn sẽ thấy các lễ cưới chuộng cắm và trang trí hoa màu hồng.'),
(67, 7, 'Hoa tuy-líp', 'hoatuylip.jpg', '350000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Loài hoa này thường trở thành biểu tượng cho tình yêu và gắn kết trong các mối quan hệ. Đặc biệt là trong mối quan hệ vợ chồng, hoa tulip cam thể hiện sự gắn kết và sự hiểu biết sâu sắc giữa hai người. Bằng việc tặng nhau hoa tulip cam, người ta truyền đạt tình cảm và tình yêu một cách tinh tế và sâu sắc hơn.'),
(68, 7, 'Hoa tuy-líp trắng', 'hoatuyliptrang.jpg', '444.000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 0, 'Hoa tulip trắng Tulip trắng là loại hoa có nhiều ý nghĩa tốt đẹp, nó đại diện cho tình yêu thuần khiết, niềm đam mê, sự bình yên, chiến thắng và sự tha thứ. Đây cũng là lý do tại sao nhiều người chọn tulip trắng để trưng bày trong lễ cưới hay tặng tulip trắng để thể hiện sự xin lỗi.'),
(69, 4, 'Hoa thủy tiên trắng', 'hoavangtien.jpg', '680000', '1-3 ngày', 'Ruy băng và thiệp chúc mừng', 'Hoa tươi', 'Mua 1 bó tặng dây thắt nơ', 'Còn hàng', 1, 'Hoa thủy tiên trắng là biểu tượng cho sự chân thành. Vì vậy đây là một món quà rất phù hợp để dành tặng bạn bè, người yêu, người thân trong gia đình, đồng nghiệp,... trong những dịp đặc biệt. Màu trắng của hoa thủy tiên thể hiện sự nhẹ nhàng, thanh khiết và an nhiên ngay cả trong cuộc sống bận rộn thường ngày.');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `email`, `mat_khau`, `quyen_truy_cap`) VALUES
(18, 'admin@admin.vn', '123', 2),
(19, 'xdieu2k2@gmail.com', '220120', 2),
(20, 'user1@gmail.com', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blsanpham`
--
ALTER TABLE `blsanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_donhang`);

--
-- Indexes for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id_quangcao`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blsanpham`
--
ALTER TABLE `blsanpham`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id_quangcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
