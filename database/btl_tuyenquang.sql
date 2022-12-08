-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2022 lúc 12:09 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_tuyenquang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Di tích '),
(3, 'Danh thắng'),
(18, 'Tin tức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduce`
--

CREATE TABLE `introduce` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `title` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `introduce`
--

INSERT INTO `introduce` (`id`, `description`, `title`, `image`) VALUES
(0, 'Trong các tỉnh miền núi phía Bắc, Tuyên Quang có một bản sắc rất riêng. Bản sắc này hình thành từ yếu tố lịch sử, tự nhiên và con người. Về lịch sử, các nhà khảo cổ học đã xác định Tuyên Quang là một trong những cái nôi của người Việt cổ. Trong tiến trình hình thành và phát triển, Tuyên Quang một thời cũng là “phên giậu của Quốc gia”. Thời kỳ kháng chiến chống thực dân Pháp xâm lược, Tuyên Quang trở thành Thủ đô Khu giải phóng - Thủ đô Kháng chiến của cả nước.\r\nThời Hùng Vương, Tuyên Quang nằm trong Nhà nước Văn Lang và thuộc địa bàn bộ Vũ Định. Trải qua các thời kỳ Đinh, Lê, Lý, Trần, hậu Lê… tỉnh Tuyên Quang thuộc thừa Tuyên Quang. Đời nhà Nguyễn được gọi là tỉnh Tuyên Quang. Nửa cuối thế kỷ XIX thực dân Pháp xâm lược nước ta, tháng 4-1900 toàn quyền Đông Dương ra quyết định chia tách tỉnh Tuyên Quang thành 2 tỉnh: Tuyên Quang và Hà Giang. Tỉnh Tuyên Quang bao gồm 6 châu: Yên Sơn, Sơn Dương, Hàm Yên, Chiêm Hóa, Nà Hang và Yên Bình. Năm 1956, huyện Yên Bình được sáp nhập về tỉnh Yên Bái. Năm 1975, tỉnh Tuyên Quang và Hà Giang lại được tái sáp nhập, nhưng đến năm 1991 lại tách thành 2 tỉnh như ngày nay. Tỉnh Tuyên Quang giờ có 6 huyện, 1 thành phố với 141 xã, phường, thị trấn.\r\n\r\nHiện nay, tỉnh Tuyên Quang có trên 22 dân tộc anh em cùng sinh sống. Chủ nhân xa xưa vùng đất này là người Tày, Dao, Cao Lan… Các dân tộc thiểu số khác cũng có nhưng dân số không nhiều. Chính mảnh đất Tuyên Quang giàu tài nguyên thiên nhiên, có tuyến đường thủy sông Lô, sông Gâm thuận lợi, nên xa xưa đã có các thuyền buôn người Kinh từ vùng xuôi lên giao thương.\r\n\r\nVào thập niên 50 - 70 của thế kỷ XX, những người Kinh chủ yếu ở đồng bằng Bắc Bộ lên Tuyên Quang xây dựng vùng kinh tế mới. Họ làm trong các lâm, nông trường, các nhà máy, hợp tác xã nông nghiệp, tự khai khẩn đất hoang để phát triển kinh tế. Đến nay, toàn tỉnh có hơn 750 nghìn dân, trong đó 56% là đồng bào dân tộc thiểu số, 44% là người Kinh. Văn hóa giữa người bản địa và người Kinh có sự giao thoa khá lớn. Người dân tộc này lấy dân tộc kia, người Kinh lấy người dân tộc thiểu số, tạo ra một lớp người khỏe mạnh, thông minh, năng động. Bởi vậy, con gái Tuyên Quang đã có tiếng đẹp nết, đẹp người. Đi đâu người ta cũng nói “Chè Thái, gái Tuyên” để nói về “thương hiệu” người con gái Tuyên Quang.\r\n\r\nĐất đai, khí hậu, nguồn nước đã tạo ra tính cách người Tuyên Quang phóng khoáng, đôn hậu, thủy chung, hiếu khách. Người Tuyên Quang ở các địa phương hay sống quần tụ thành từng làng, tính cộng đồng và đoàn kết khá cao. Chính vì lẽ đó mà Tuyên Quang được ví như “thành lũy vững chắc” bảo vệ thành Thăng Long. Bia đá trên núi Thổ Sơn (TP Tuyên Quang) từng ghi “An biên viễn hải ưu kim bạc/Tuyên thành vạn cổ án Thăng Long”. Dịch nghĩa là “Vùng biên ải xa biển có nhiều vàng bạc/Thành Tuyên Quang đời đời che chắn thành Thăng Long”.\r\n\r\nTrong kháng chiến chống thực dân Pháp xâm lược, Bác Hồ và Trung ương Đảng đã chọn Tuyên Quang là Thủ đô khu giải phóng - Thủ đô kháng chiến không chỉ vì nơi đây có vị trí địa lý thuận lợi, mà chính nơi đây còn có lòng dân luôn thủy chung theo cách mạng.\r\n\r\nTuyên Quang là vùng đất thiêng, đi đến đâu cũng có các đền, chùa. Hệ thống đền của Tuyên Quang tập trung thờ Thánh Mẫu và các anh hùng dân tộc. Có lẽ tín ngưỡng thờ đạo Mẫu là tín ngưỡng thuần Việt, cổ xưa mang đậm nét của người Tuyên Quang nói riêng và người Việt Nam nói chung. Ngoài đền, Tuyên Quang có nhiều ngôi chùa cổ hàng nghìn năm tuổi, khẳng định Phật giáo vào đất Tuyên Quang khá sớm.\r\n\r\nTuyên Quang còn có nhiều lễ hội phong phú như Hội đua thuyền trên sông Lô (TP Tuyên Quang); Lễ hội Lồng tông của đồng bào dân tộc Tày (Chiêm Hóa, Nà Hang, Lâm Bình); Lễ hội Đình Giếng Tanh của đồng bào dân tộc Cao Lan, Lễ hội Đầm Mây của dân tộc Dao (Yên Sơn); Lễ hội Động Tiên - Chợ quê của các dân tộc (Hàm Yên); Lễ hội Cầu Mùa của đồng bào Tày, xã Tân Trào (Sơn Dương); Lễ hội Nhảy lửa của dân tộc Pà Thẻn (Lâm Bình); Lễ hội Thành Tuyên - lễ hội cấp tỉnh lớn nhất năm của người Tuyên Quang với nhiều mô hình đèn Trung thu độc đáo, ấn tượng…\r\n\r\nKiến trúc nhà ở của người Tuyên Quang khá phong phú, ngoài hệ thống nhà xây hiện đại ở các đô thị, trung tâm các xã, thị trấn thì nhà sàn ở vùng nông thôn vẫn còn giữ được nhiều. Tập quán ở nhà sàn của người Tày, Dao, Cao Lan… vẫn được phát huy, hiện nay người dân còn làm nhà sàn cột bê tông cốt thép, vừa hiện đại lại vừa lưu giữ được nét truyền thống. Ngôi nhà sàn thực sự đã tô điểm cho không gian văn hóa làng quê, ở đó tiếng đàn Tính, làn điệu Then; tiếng trống Sành, làn điệu Sình Ca; kèn Pí lè, làn điệu Páo dung văng vẳng hồn quê.\r\n\r\nBản sắc văn hóa Tuyên Quang còn hội tụ ở yếu tố ẩm thực. Ai lên đây còn nhớ đặc sản Xứ Tuyên như cá Dầm xanh, Anh vũ, cá chiên, lăng, bỗng, gà đồi, lợn đen, rau rừng, cam sành Hàm Yên, chè Tân Trào, sông Lô, Mỹ Lâm, rượu ngô Nà Hang, thịt trâu khô, măng rừng, mộc nhĩ, mật ong, các bài thuốc nam, vùng lá dong, hoa lan của miền Bắc… mang đặc trưng Xứ Tuyên.', 'Bản sắc Tuyên Quang', ''),
(1, 'Tuyên Quang là tỉnh Trong cách mạng Tháng Tám, Tuyên Quang vinh dự là Thủ đô Khu giải phóng, được Trung ương Đảng và Bác Hồ chọn làm trung tâm của cách mạng cả nước. Tại Tân Trào-Sơn Dương - Tuyên Quang đã diễn ra nhiều sự kiện lịch sử gắn liền với vận mệnh dân tộc: Hội nghị toàn quốc của Đảng quyết định chủ trương lãnh đạo toàn dân Tổng khởi nghĩa giành chính quyền và cử ra Uỷ ban khởi nghĩa toàn quốc; Quốc dân Đại hội họp tại đình Tân Trào thành lập Uỷ ban dân tộc giải phóng tức Chính phủ lâm thời do Bác Hồ làm Chủ tịch.\r\n\r\nTrong những năm trường kỳ kháng chiến chống thực dân Pháp xâm lược, Tuyên Quang là Thủ đô Kháng chiến, nơi đồng bào cả nước \"trông về Việt Bắc mà nuôi chí bền\"; nhân dân các dân tộc Tuyên Quang đã luôn luôn làm tròn nhiệm vụ thiêng liêng: Xây dựng, bảo vệ An toàn khu (ATK); bảo vệ Bác Hồ, Trung ương Đảng, Quốc hội, Chính phủ, Mặt trận cùng nhiều bộ, ban, ngành Trung ương; bảo vệ các cơ quan đầu não của Cách mạng Lào. Đảng bộ và nhân dân các dân tộc Tuyên Quang đóng góp phần quan trọng, to lớn vào cuộc đấu tranh giành độc lập dân tộc, lập nhiều chiến công vang dội trên chiến trường, đập tan các cuộc tấn công lên Việt Bắc của giặc Pháp. Bình Ca, Cầu Cả, Khe Lau..., là những địa danh lịch sử làm rạng rỡ tinh thần chiến đấu quả cảm, mưu trí, sáng tạo của quân, dân Tuyên Quang trong chiến dịch Việt Bắc (Thu - Đông 1947).\r\n\r\nTại Tuyên Quang, nhiều hội nghị quan trọng của Trung ương Đảng, Chính phủ được triệu tập. Đặc biệt, Đại hội Đại biểu Đảng toàn quốc lần thứ II (họp tại Kim Bình, Chiêm Hoá từ ngày 11 đến ngày 19 tháng 2 năm 1951), là Đại hội đầu tiên của Đảng được tổ chức ở trong nước. Đại hội đã bổ sung, hoàn chỉnh đường lối kháng chiến, kiến quốc, đề ra nhiệm vụ xây dựng Đảng Lao động Việt Nam vững mạnh, quyết định những chủ trương, biện pháp đưa cuộc kháng chiến trường kỳ, oanh liệt của dân tộc ta đến thắng lợi. Cuộc kháng chiến chống thực dân Pháp thắng lợi, Đảng bộ và nhân dân các dân tộc Tuyên Quang tiếp tục xây dựng hậu phương vững mạnh, làm tròn nhiệm vụ của hậu phương lớn đối với tiền tuyến lớn, đánh thắng cuộc chiến tranh phá hoại của đế quốc Mỹ, góp phần xứng đáng vào sự nghiệp giải phóng dân tộc, thống nhất đất nước. Truyền thống yêu nước, đoàn kết, cách mạng, tinh thần đấu tranh anh dũng của lớp lớp cán bộ, đảng viên và nhân dân các dân tộc Tuyên Quang đã để lại những bài học quý giá, những tấm gương sáng ngời cho các thế hệ mai sau học tập, noi theo.\r\n\r\nTrong công cuộc đổi mới, Đảng bộ và nhân dân các dân tộc Tuyên Quang tiếp tục phát huy truyền thống vẻ vang của quê hương cách mạng, quyết tâm vượt qua mọi khó khăn, khai thác tiềm năng, phát huy thế mạnh của địa phương, chủ động hội nhập kinh tế, tạo bước đột phá mạnh mẽ trong phát triển kinh tế - xã hội, tranh thủ sự đóng góp, giúp đỡ của Trung ương và các bộ, ngành, các địa phương trong cả nước và các tổ chức quốc tế, thực hiện thắng lợi các mục tiêu, nhiệm vụ do Đại hội đại biểu Đảng bộ tỉnh lần thứ XVII đề ra, phấn đấu đưa Tuyên Quang trở thành tỉnh phát triển khá trong các tỉnh miền núi phía Bắc, xứng đáng với truyền thống quê hương cách mạng, Thủ đô khu giải phóng, Thủ đô kháng chiến.\r\n\r\n', 'Khái quát chung về Tuyên Quang', ''),
(2, 'Trong cách mạng Tháng Tám, Tuyên Quang vinh dự là Thủ đô Khu giải phóng, được Trung ương Đảng và Bác Hồ chọn làm trung tâm của cách mạng cả nước. Tại Tân Trào-Sơn Dương - Tuyên Quang đã diễn ra nhiều sự kiện lịch sử gắn liền với vận mệnh dân tộc: Hội nghị toàn quốc của Đảng quyết định chủ trương lãnh đạo toàn dân Tổng khởi nghĩa giành chính quyền và cử ra Uỷ ban khởi nghĩa toàn quốc; Quốc dân Đại hội họp tại đình Tân Trào thành lập Uỷ ban dân tộc giải phóng tức Chính phủ lâm thời do Bác Hồ làm Chủ tịch.\r\n\r\nTrong những năm trường kỳ kháng chiến chống thực dân Pháp xâm lược, Tuyên Quang là Thủ đô Kháng chiến, nơi đồng bào cả nước \"trông về Việt Bắc mà nuôi chí bền\"; nhân dân các dân tộc Tuyên Quang đã luôn luôn làm tròn nhiệm vụ thiêng liêng: Xây dựng, bảo vệ An toàn khu (ATK); bảo vệ Bác Hồ, Trung ương Đảng, Quốc hội, Chính phủ, Mặt trận cùng nhiều bộ, ban, ngành Trung ương; bảo vệ các cơ quan đầu não của Cách mạng Lào. Đảng bộ và nhân dân các dân tộc Tuyên Quang đóng góp phần quan trọng, to lớn vào cuộc đấu tranh giành độc lập dân tộc, lập nhiều chiến công vang dội trên chiến trường, đập tan các cuộc tấn công lên Việt Bắc của giặc Pháp. Bình Ca, Cầu Cả, Khe Lau..., là những địa danh lịch sử làm rạng rỡ tinh thần chiến đấu quả cảm, mưu trí, sáng tạo của quân, dân Tuyên Quang trong chiến dịch Việt Bắc (Thu - Đông 1947).\r\n\r\nTại Tuyên Quang, nhiều hội nghị quan trọng của Trung ương Đảng, Chính phủ được triệu tập. Đặc biệt, Đại hội Đại biểu Đảng toàn quốc lần thứ II (họp tại Kim Bình, Chiêm Hoá từ ngày 11 đến ngày 19 tháng 2 năm 1951), là Đại hội đầu tiên của Đảng được tổ chức ở trong nước. Đại hội đã bổ sung, hoàn chỉnh đường lối kháng chiến, kiến quốc, đề ra nhiệm vụ xây dựng Đảng Lao động Việt Nam vững mạnh, quyết định những chủ trương, biện pháp đưa cuộc kháng chiến trường kỳ, oanh liệt của dân tộc ta đến thắng lợi. Cuộc kháng chiến chống thực dân Pháp thắng lợi, Đảng bộ và nhân dân các dân tộc Tuyên Quang tiếp tục xây dựng hậu phương vững mạnh, làm tròn nhiệm vụ của hậu phương lớn đối với tiền tuyến lớn, đánh thắng cuộc chiến tranh phá hoại của đế quốc Mỹ, góp phần xứng đáng vào sự nghiệp giải phóng dân tộc, thống nhất đất nước. Truyền thống yêu nước, đoàn kết, cách mạng, tinh thần đấu tranh anh dũng của lớp lớp cán bộ, đảng viên và nhân dân các dân tộc Tuyên Quang đã để lại những bài học quý giá, những tấm gương sáng ngời cho các thế hệ mai sau học tập, noi theo.\r\n\r\nTrong công cuộc đổi mới, Đảng bộ và nhân dân các dân tộc Tuyên Quang tiếp tục phát huy truyền thống vẻ vang của quê hương cách mạng, quyết tâm vượt qua mọi khó khăn, khai thác tiềm năng, phát huy thế mạnh của địa phương, chủ động hội nhập kinh tế, tạo bước đột phá mạnh mẽ trong phát triển kinh tế - xã hội, tranh thủ sự đóng góp, giúp đỡ của Trung ương và các bộ, ngành, các địa phương trong cả nước và các tổ chức quốc tế, thực hiện thắng lợi các mục tiêu, nhiệm vụ do Đại hội đại biểu Đảng bộ tỉnh lần thứ XVII đề ra, phấn đấu đưa Tuyên Quang trở thành tỉnh phát triển khá trong các tỉnh miền núi phía Bắc, xứng đáng với truyền thống quê hương cách mạng, Thủ đô khu giải phóng, Thủ đô kháng chiến.\r\n\r\n', 'Tuyên Quang qua các thời kỳ lịch sử', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `image`, `description`) VALUES
(2, 2, 'Khu di tích lịch sử Tân Trào', 'tan trao.jpg', 'Khu di tích lịch sử Tân Trào - nơi Chủ tịch Hồ Chí Minh cùng các cơ quan Trung ương ở và làm việc trong thời kỳ tiền khởi nghĩa và thời kỳ kháng chiến chống thực dân Pháp, nằm trên địa bàn các xã: Tân Trào, Minh Thanh, Trung Yên, Bình Yên, Lương Thiện (huyện Sơn Dương); Kim Quan, Trung Sơn, Hùng Lợi, Trung Minh, Đạo Viện, Công Đa, Phú Thịnh (huyện Yên Sơn). Đây cũng là địa bàn giáp gianh giữa hai tỉnh Thái Nguyên và Bắc Kạn.'),
(4, 2, 'Vua Mèo ở Tuyên Quang là ai?', 'vuameo.jpg', 'Vua Mèo ở Tuyên Quang hay còn được biết đến là Vua H’Mông chính là một trong những chức vụ thủ lĩnh tinh thần của cộng đồng người H’Mông sinh sống trên địa bàn nhất định ở Việt Nam. Chức vị lãnh chúa này xuất hiện trước Cách mạng tháng Tám với những cái tên nổi tiếng như Vương Chính Đức, Hoàng A Tưởng. Mãi đến sau Cách mạng, các chính quyền mới không chính thức công nhận chức vị này nữa, chúng mới dần biến mất.'),
(5, 2, 'Nét Văn hóa đồng bào dân tộc', 'dongbaodantoc.jpg', 'Tuyên Quang là một tỉnh miền núi nằm ở vùng Đông Bắc, tổng diện tích tự nhiên 5.800 km2. Dân số trên 80 vạn người, trong đó dân tộc thiểu số chiếm 56% dân số toàn tỉnh. Mỗi dân tộc thiểu số có bản sắc văn hóa truyền thống riêng, được lưu truyền qua bao thế hệ thể hiện qua trang phục, tiếng nói, phong tục tập quán (tang ma, cưới xin, vào nhà mới...), cách ứng xử trong gia đình, cộng đồng, làng bản; tri thức dân gian đặc biệt là các loại hình nghệ thuật, dân ca, dân vũ độc đáo nổi bật, như: Hát Then của dân tộc Tày; hát sình Ca, dân tộc Cao Lan; hát Soọng Cô, dân tộc Sán Dìu; hát Páo Dung, dân tộc Dao; Hát Cỏ lảu (lảy cỏ), hát giao duyên, hát Sli, hát Soong hao, Hát Sli Giang của dân tộc Nùng.\r\nHơn 40 lễ hội dân gian, văn hóa, trong đó một số lễ hội được tổ chức vào dịp đầu năm mới như: Lễ hội Lồng Tông, Cầu Mùa, Cầu Mùa (dân tộc Tày), lễ hội Đình (dân tộc Cao Lan); các nghi lễ truyền thống như: Lễ cấp sắc, lễ Tết Nhảy (dân tộc Dao), lễ Cầu Khoăn, Cúng Cốm (dân tộc Tày); lễ Nhảy lửa (dân tộc Pà Thẻn)... Có thể nói di sản văn hóa truyền thống của các dân tộc thiểu số tỉnh Tuyên Quang hết sức phong phú và đa dạng về cả giá trị văn hóa vật thể và phi vật thể, các giá trị văn hóa luôn được bảo lưu trao truyền, bổ sung, sáng tạo qua các thế hệ theo chiều hướng tích cực, hòa chung trong “dòng chảy” của cộng đồng văn hóa của các dân tộc Việt Nam. '),
(6, 3, 'Hồ Ha Nang', 'hohanang.jpg', 'Tuyên Quang không chỉ được mệnh danh là \"quê hương cách mạng\" với rất nhiều dấu ấn quan trọng trong chiến tranh mà còn sở hữu những thắng cảnh đẹp như mơ. Hồ Ha Nang chính là một trong số đó.\r\n\r\nHồ Na Hang thuộc địa bàn 2 huyện Na Hang và Lâm Bình tỉnh Tuyên Quang. Đây vốn là một hồ thủy điện nhưng lại mang vẻ đẹp trữ tình và thơ mộng có thể làm say đắm lòng bất cứ ai ngay từ lần đầu tiên. Đặc biệt nơi đây còn được gọi là \"tiểu Vịnh Hạ Long\" bởi mặt hồ trải dài mệnh mông xanh ngắt cùng những ngọn núi trùng trùng điệp điệp vô cùng thi vị.'),
(7, 3, 'Thác Khuổi Nhi', 'thackhuoinhi.jpg', 'Mỗi khi đặt chân đến thác Khuổi Nhi là cảm xúc lại dâng chào, lại hồi hộp xao xuyến làm sao vì cảnh vật nơi đây đem lại cho du khách cảm giác lạ thường, cảnh sắc hùng vĩ và kiêu sa bất tận. Ẩn mình giữa đại ngàn núi rừng, thác Khuổi Nhi đẹp hoang dại, thách thức những đôi chân đến khám phá. Một số du khách khi tới đây nhận xét rằng: “ Khi đến nơi đây tôi đã được chiêm ngưỡng một dòng thác quang năm xủi bọt trắng như tiên nữ trải tóc dài giữa đại ngạn làm cho người ta đến là không muốn về”'),
(8, 3, 'Cọc Vài Phạ', 'cocvaipha.jpg', 'Đến với Cọc Vài Phạ, thuộc khu vực xã Thượng Lâm, huyện Lâm Bình. Du khách sẽ được đắm mình trong thiên nhiên hoang sơ kỳ ví, được hòa mình để trải nghiệm những cung bậc cảm xúc với vẻ đẹp và con người nơi đây, dường như mọi bộn bề của cuộc sống đều tan biến.'),
(9, 18, 'Bộ CHQS tỉnh xây dựng đơn vị dân vận tốt', 'danvanquocphong.jpg', 'Thực hiện lời dạy của Bác Hồ: “Việc dân vận rất quan trọng. Dân vận kém thì việc gì cũng kém. Dân vận khéo thì việc gì cũng thành công”, những năm qua, Đảng ủy, Bộ CHQS tỉnh đã lãnh đạo đẩy mạnh phong trào thi đua “Dân vận khéo”, xây dựng “Đơn vị dân vận tốt” trong lực lượng vũ trang (LLVT) tỉnh. Qua đó, góp phần củng cố mối quan hệ máu thịt giữa quân đội và nhân dân; cổ vũ cán bộ, chiến sỹ vượt qua khó khăn, hoàn thành xuất sắc nhiệm vụ.'),
(10, 18, 'Những thông tin nổi bật về Sở tài nguyên và môi trường tỉnh Tuyên Quang', 'tainguyenmoitruong.jpg', 'Tuyên Quang là một tỉnh nổi tiếng với thiên nhiên oai hùng, rậm rạp cùng nhiều phong cảnh hấp dẫn, cuốn hút người xem. Đây được đánh giá là nơi có tiềm năng lớn về phát triển các ngành du lịch. Và để làm được điều đó, không thể không nhắc đến những thành tích vượt trội của Sở Tài nguyên môi trường Tuyên Quang trong công tác xây dựng và bảo vệ môi trường trên toàn khu vực. '),
(11, 18, 'Thịt trâu khô(Trâu gác bếp)', 'traugacbep.jpg', 'Thịt trâu gác bếp là đặc sản thường thấy trong các bữa ăn của người dân tộc Tày, tỉnh Tuyên Quang. Thịt trâu khô không chỉ là món ngon mang đậm hương vị vùng cao, nét văn hóa miền sơn cước mà còn là món ăn quen thuộc của người dân nơi đây, món quà của du khách khi ghé thăm Tuyên Quang.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
