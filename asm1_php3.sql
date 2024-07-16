-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2024 at 09:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm1_php3`
--

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc_tins`
--

CREATE TABLE `danh_muc_tins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_muc_tins`
--

INSERT INTO `danh_muc_tins` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BÓNG ĐÁ VIỆT NAM', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(2, 'BÓNG RỔ VIỆT NAM', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(3, 'BƠI LỘI', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(4, 'VÕ THUẬT', '2024-07-14 17:16:51', '2024-07-14 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_tins`
--

CREATE TABLE `loai_tins` (
  `id` bigint UNSIGNED NOT NULL,
  `danh_muc_tin_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_tins`
--

INSERT INTO `loai_tins` (`id`, `danh_muc_tin_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tin tức về các giải đấu trong nước', 'Dolorem neque harum dolore excepturi optio. Minus et tenetur veniam. Sit et quisquam neque placeat ut. Quisquam ipsam maxime officia voluptatem laborum impedit.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(2, 3, 'Tin tức về các giải bơi lội trong nước', 'Nisi voluptates aut est sed. Laboriosam impedit dolorum mollitia aut dolore. Nobis ducimus odio et adipisci adipisci et est et.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(3, 4, 'Tin tức về các giải đấu võ thuật truyền thống ', 'Distinctio autem ab atque quod assumenda sunt est. Dolore earum tempora ut commodi quia et sed sit. Fuga est autem dolor. Officia cumque ut vitae.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(4, 2, 'Tin tức về giải bóng rổ ', 'Laudantium ad dolorem voluptatem labore nemo. Quos pariatur maxime ut quod. Nulla doloribus sunt est fugiat. Sed illum rerum nesciunt nisi esse assumenda.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(5, 1, 'Kết quả và bình luận trận đấu của các đội bóng Việt Nam.', 'Maxime officiis voluptatibus possimus ut iusto. Rerum vitae vel perspiciatis est sit nulla. Perspiciatis repellendus natus ipsum aut repellendus nemo possimus tempore. In sit id rem.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(6, 3, 'Kết quả và nhận định về các vận động viên bơi lội Việt Nam', 'Est est velit sit voluptas tempore. Et ex vitae consequuntur quo.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(7, 4, 'Phân tích và đánh giá về các vận động viên nổi bật và các trận đấu', 'Eius a deleniti explicabo ea distinctio omnis eum. Facere nostrum saepe unde impedit nulla repudiandae.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(8, 1, 'Thông tin về đội tuyển bóng đá quốc gia Việt Nam.', 'Culpa corporis esse occaecati blanditiis quia tempora. Et quia vel similique explicabo officia rerum. Reprehenderit consectetur repudiandae molestias fugiat.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(9, 4, 'Phát triển các môn võ thuật tại Việt Nam', 'Eius non quaerat neque maiores amet. Molestias nemo aut architecto sit quisquam omnis exercitationem error. Beatae ea voluptates quidem modi est. Officiis magni vitae et quo sed eos autem rerum.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(10, 3, 'Thông tin về các kỹ năng và kỹ thuật bơi lội', 'Quia sapiente numquam numquam iste. Voluptatem enim sapiente explicabo laborum molestias. Enim qui accusamus qui.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(11, 1, 'Những tin tức chuyển nhượng của các CLB trong nước.', 'Sit reiciendis quis pariatur nulla. Dolorem temporibus aliquam vero eum doloribus ad nihil quis.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(12, 2, 'Kết quả và phân tích các trận đấu của các đội bóng rổ Việt Nam', 'Itaque eveniet expedita aliquid porro cumque aut. Consequatur et praesentium ut. Quae cum nobis itaque quas illum.', '2024-07-14 17:16:51', '2024-07-14 17:16:51'),
(13, 2, 'Thông tin về các vận động viên bóng rổ nổi bật của Việt Nam', 'Praesentium mollitia a sit. Consequatur occaecati dignissimos voluptas accusamus autem fuga. Sint dolore modi impedit voluptatem eius earum earum.', '2024-07-14 17:16:51', '2024-07-14 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2024_07_11_113323_create_danh_muc_tins_table', 1),
(29, '2024_07_11_113324_create_loai_tins_table', 1),
(30, '2024_07_11_113335_create_tin_tucs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tin_tucs`
--

CREATE TABLE `tin_tucs` (
  `id` bigint UNSIGNED NOT NULL,
  `loai_tin_id` bigint UNSIGNED NOT NULL,
  `danh_muc_tin_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_good` tinyint(1) NOT NULL DEFAULT '0',
  `is_view_lot` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tin_tucs`
--

INSERT INTO `tin_tucs` (`id`, `loai_tin_id`, `danh_muc_tin_id`, `title`, `content`, `image`, `is_hot`, `is_good`, `is_view_lot`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Kình ngư nữ Long An Võ Thị Mỹ Tiên nhận suất đặc cách tham dự Olympic Paris 2024', '\"Hôm nay đánh dấu một chương mới – tôi nghỉ thi đấu bơi lội\", Schooling thông báo trên trang cá nhân Instagram sáng nay.\n\nTrong cuộc họp báo sau đó, kình ngư sinh năm 1995 cho biết giải nghệ vì cảm thấy khó có thể đạt được thành công từ sau năm 2016. Những thất bại đến thường xuyên hơn cùng những biến cố cuộc sống, trong đó có việc dùng ma túy trong thời gian tập huấn và thi đấu ở SEA Games 31 tại Hà Nội năm 2022, khiến anh chọn dừng lại.\n\nSchooling nói: \"Tôi không thích việc giải nghệ vì không còn gì để hướng tới với tư cách VĐV. Tôi luôn muốn trở thành người giỏi nhất trong lĩnh vực của mình và sẽ tiếp tục nỗ lực, cống hiến và tập trung như vậy cho giai đoạn sự nghiệp tiếp theo\".\n\nVĐV 28 tuổi không loại trừ theo đuổi con đường chính trị khi trả lời \"đừng bao giờ nói không bao giờ\". Tuy nhiên, tương lai gần của anh là tập trung vào các dự án kinh doanh, đi chơi golf, dạy bơi và dành nhiều thời gian hơn cho mẹ sau khi bố mất. \"Đến lúc tôi trở thành một cậu bé hay một chàng trai bình thường\", Schooling chia sẻ.', 'https://cdnmedia.webthethao.vn/uploads/Chau-La/swi-vothimytien-2506.jpg', 1, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(2, 5, 1, 'Nguyễn Tuấn Anh ký hợp đồng với Nam Định', 'Tiền vệ Nguyễn Tuấn Anh chia tay HAGL sau 17 năm gắn bó, ký hợp đồng có thời hạn ba năm với đương kim vô địch V-League Nam Định.\n\nTuấn Anh ký hợp đồng với Nam Định hôm qua 13/7. Ngoài thời hạn ba năm, đôi bên có thể gia hạn thêm một năm.\n\nTuấn Anh sinh năm 1995 tại Thái Bình, trưởng thành từ khoá I Học viện HAGL Arsenal JMG. Anh từng được ông bầu Đoàn Nguyên Đức đánh giá là tài năng bậc nhất của lò đào tạo này. Tuy nhiên, sự nghiệp của Tuấn Anh khá lận đận do những chấn thương liên miên, nhiều lần vắng mặt trong các sự kiện lớn của U23 và ĐTQG.Cùng các đồng đội Lương Xuân Trường, Nguyễn Công Phượng..., Tuấn Anh được đôn lên đội một HAGL thi đấu từ năm 2015. Tuy nhiên, anh chưa giành được danh hiệu nào trong màu áo đội bóng phố núi.\n\nGiữa mùa giải 2023-2024, Tuấn Anh được bầu Đức tạo điều kiện đến Nam Định thi đấu theo dạng cho mượn. Tại đây, anh góp công giúp đội bóng thành Nam đăng quang ở V-League.\n\nĐánh giá cao tài năng của Tuấn Anh, Nam Định quyết định chiêu mộ anh với bản hợp đồng dài hạn. \"Tôi rất vui khi ký hợp đồng với Nam Định. Đây là đội bóng mạnh. Tôi sẽ cố gắng cùng các đồng đội thi đấu tốt để mang thêm nhiều danh hiệu về cho CLB\", Tuấn Anh chia sẻ.', 'https://i1-thethao.vnecdn.net/2024/07/14/A1-8620-1720902251.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=BiyBYCyrKC_aXikx0w4GkQ', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(3, 10, 3, 'Tổng hợp các kỹ thuật bơi lội cơ bản và quan trọng nhất', '1. Tập thở\nKỹ thuật đầu tiên là tập thở, đó là kỹ thuật cơ bản nhất và quan trọng nhất trong bơi lội. Khi bơi, việc thở đúng cách khi bơi giúp cung cấp đủ oxy cho cơ thể và duy trì sự bơi một cách hiệu quả. Vận động viên cần hít thở sâu vào trong khi nổi lên mặt nước và thở ra khi đưa mặt xuống nước. Việc hít thở đều đặn và không hụt hơi sẽ giúp duy trì sức bơi lâu hơn và tránh tình trạng mệt mỏi quá nhanh.\n\nVới người mới, bạn nên liên tục đứng lên rồi ngồi xuống sao cho đầu ngập trong nước. Khi đứng lên, bạn hãy hít vào. Khi ngồi xuống thì thở ra. Cách này sẽ giúp bạn tạo thói quen thở đúng cách khi bơi.2. Kỹ thuật nổi\nTiếp theo là kỹ thuật tập nổi, đây là kỹ thuật quan trọng để giữ cho cơ thể ở trên mặt nước. Vận động viên cần thực hiện những động tác nhẹ nhàng như lắc chân và vỗ tay nhẹ để tạo ra lực nâng hỗ trợ cơ thể. Kỹ thuật này đòi hỏi sự điều chỉnh liên tục để duy trì cân bằng và tránh bị chìm xuống nước.\n\nCách tập đơn gian nhất, đó là thả lỏng cơ thể để tự trôi nổi trong nước, sau đó sử dụng tay chân vỗ thật nhẹ nhàng để cơ thể nổi lên.3. Tập đạp chân\nKỹ thuật thứ ba là tập đạp chân, đây là kỹ thuật giúp di chuyển một cách nhanh chóng và mạnh mẽ trong nước. Vận động viên cần tập trung vào việc đẩy chân ra phía sau bằng cách sử dụng cả lòng bàn chân để tạo lực đẩy. Động tác này cần được thực hiện đều đặn và mạnh mẽ để giúp tiến xa và nhanh hơn trên mặt nước. Hãy bám tay vào thành bể bơi hoặc hoặc phao bơi, đạp chân cho phần thân dưới nổi lên bằn cách co gập đầu gối liên tục, giữ thẳng ống đồng – cổ chân – bàn chân', 'https://24hsport.vn/webroot/img/images/ky%20thuat%20boi%20loi%203.jpg', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(4, 12, 2, 'Cầu thủ bóng rổ Melvin Phùng và màn trở lại ấn tượng sau chấn thương', 'Melvin Phùng (tên thật là Phùng Quốc Hưng, sinh năm 2001) là cái tên không xa lạ với cộng đồng bóng rổ Việt Nam. Anh từng có thời gian tập luyện ở CLB Saigon Heat cũng như đã thi đấu tại VBA mùa giải 2021 và 2022 trong màu áo Nha Trang Dolphins. \n\nChàng cầu thủ gốc Hà Nội sở hữu chiều cao 1m85 và thi đấu tại vị trí hậu vệ ghi điểm (shooting guard - SG). Quãng thời gian tại Mỹ cùng việc chăm chỉ tập luyện giúp anh sở hữu dáng ném tốt cùng sức mạnh đáng nể. Anh đã từng chứng tỏ bản thân ở nhiều giải đấu khác nhau trong và ngoài nước.\n\nĐam mê bóng rổ kết hợp với tài năng vốn có giúp anh sớm gặt hái được những thành công. Lên cấp 3, gia đình cho Melvin sang Mỹ du học. Được tiếp cận trực tiếp với nền bóng rổ mạnh nhất hành tinh đã giúp cho chàng trai trẻ có những suy nghĩ ngày một chín chắn hơn. ', 'https://sport5.mediacdn.vn/158855217956261888/2023/6/20/7eb05ebf1640c71e9e51-1687230591798507825917-1687232228125-16872322285551123368145.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(5, 9, 4, 'LỊCH SỬ VÕ CỔ TRUYỀN VIỆT NAM HÌNH THÀNH VÀ PHÁT TRIỂN', 'Vào khoảng năm 1925, Võ cổ truyền được phục hồi cùng với sự nhập khẩu các môn võ từ nước ngoài như Quyền Anh, Thiếu Lâm… Trong thời kỳ này, nhiều võ sư huyền thoại đã trở nên nổi tiếng.\n\nTrước năm 1945, Tứ Đại Sư Bãi-Múa-Cát-Quế đã được biết đến rộng rãi. Họ đã đào tạo rất nhiều thanh niên yêu nước, sẵn sàng chiến đấu để bảo vệ quê hương và tạo nên truyền thống võ thuật vững mạnh trên khắp nơi và năm châu.\n\nSau năm 1945, những đệ tử của ông Quế như Nguyễn Văn Quý, Đặng Văn Hinh và Giáo sư Tiến sĩ Đặng Quang Lương đã tiếp tục phát triển Võ cổ truyền dân tộc Việt Nam. Ba vị sư phụ còn lại trong Tứ đại danh sư được gọi là “Tam Nhựt” (ba mặt trời) gồm Hàn Bái, Ba Cát và Bảy Múa. Họ đã được vinh danh vì đóng góp của mình cho Võ cổ truyền Việt Nam trong thời kỳ đó.\n\nCho đến khi người Pháp rời Việt Nam và chính quyền của Ngô Đình Diệm ở miền Nam, võ thuật Việt Nam tiếp tục được phục hồi dưới sự lãnh đạo của Tổng hội Võ thuật Việt Nam (VABA) và các Tổng hội Võ sư khác, được gọi là “Tam Nguyệt” (ba vầng trăng). Có nhiều người đã đóng góp và phát triển nền võ thuật Việt Nam, như Trương Thanh Đăng.\n\nTiếp tục từ năm 1960, một nhóm võ sĩ Nhu Đạo dưới sự chỉ huy của võ sư Phạm Lãi tham gia vào cuộc đảo chính chống lại Ngô Đình Diệm và đã bị đánh bại. Do đó, từ năm 1960 đến năm 1963, Ngô Đình Diệm tiếp tục cấm phát triển võ thuật, bao gồm cả Võ Việt Nam.', 'https://tse3.mm.bing.net/th?id=OIP.VCcmjCXURN2VXIVrfcFeEAHaE4&pid=Api&P=0&h=180', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(6, 6, 3, 'Kết quả và nhận định về các vận động viên bơi lội Việt Nam', 'Nguyễn Thị Ánh Viên được đánh giá một trong những vận động viên bơi lội xuất sắc nhất của Việt Nam. Cô sở hữu một sự nghiệp thể thao đáng ngưỡng mộ với hàng trăm danh hiệu lớn nhỏ.\n\nCô chính thức gia nhập đội tuyển quốc gia vào năm 2011 và ghi dấu ấn mạnh mẽ bằng việc giành HCV ở cả 10 nội dung tham dự tại giải bơi các lứa tuổi Vô địch quốc gia và phá 7 kỷ lục quốc gia. Tại SEA Games 2013, cô giành được 3 HCV và lập 2 kỷ lục SEA Games.\n\nĐáng chú ý, thành tích giành HCV tại Olympic trẻ 2014 tại Trung Quốc là “bàn đạp” đưa kình ngư này trở thành một ngôi sao đích thực của thể thao Việt Nam nói chung và bộ môn bơi lội nói riêng.Bước vào ngày thi đấu chính thức đầu tiên 17/8/2014, Ánh Viên tham dự nội dung 200 m hỗn hợp cá nhân nữ. \n\nBất chấp nội dung này không phải là sở trường, Ánh Viên vẫn thể hiện một phong độ ổn định tại nhà thi đấu Nam Kinh. Tại vòng loại thi đấu buổi sáng, Ánh Viên hoàn thành phần thi với thời gian 2 phút 16 giây 02, xếp thứ 2 tại lượt bơi thứ 4. Thành tích này chỉ giúp kình ngư Việt Nam đứng thứ 6 trong số 8 VĐV giành quyền vào thi đấu chung kết.\n\nTuy nhiên, “Tiểu tiên cá” đã trình diễn một bộ mặt hoàn toàn khác khi bước vào lượt đấu tranh chấp huy chương\n\nTrong cự ly 50m bơi bướm đầu tiên, Ánh Viên hoàn thành với 28 giây 57, nhanh hơn 18% giây so với đối thủ Bernard Haughey của Hồng Kông. Đến 50m bơi ngửa, cô tiếp tục bứt phá để hơn Bernard Haughey 1 giây 69. Ở 50m ếch, kình ngư gốc Cần Thơ để đổi thủ thu hẹp khoảng cách chỉ 39% giây.', 'https://cdn-img.thethao247.vn/origin_842x0/storage/files/btvttth1/2024/01/19/dlbeatsnoopcom-final-gfh4uet7r1-1705655589-161654.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(7, 12, 2, 'Đội tuyển bóng rổ nữ bật khóc nức nở, vỡ òa với tấm HCV lịch sử tại SEA Games', 'Austin Lý là ai?\nAustin Lý có tên tiếng Việt là Lý Thanh Tuấn, sinh năm 1998 tại Canada, có ba mẹ đều là người Việt Nam. Sở hữu chiều cao không quá ấn tượng với chỉ 1m75, tuy nhiên tốc độ và khả năng cầm bóng cùng những cú ném 3 chuẩn xác là thứ vũ khí nguy hiểm của Austin Lý trên sân.\n\nTrong quá trình phát triển kỹ năng và chơi bóng trên ghế nhà trường, Austin Lý giành được nhiều danh hiệu cá nhân, đáng chú ý nhất là học bổng toàn phần để tới chơi bóng cho trường đại học Quest University.', 'https://sport5.mediacdn.vn/158855217956261888/2024/4/8/sfds-17125465024511148210869-1712547849921-17125478501071536489786.jpg', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(8, 11, 1, 'Chuyển nhượng V-League mới nhất: CLB TP.HCM chia tay một loạt cầu thủ', 'Cùng với Bình Định thì CLB TP.HCM là đội bóng gây bất ngờ lớn nhất ở V-League 2023/2024. Cho dù chất lượng đội hình khiêm tốn và phải thay huấn luyện viên ở đầu mùa giải, nhưng đội chủ sân Thống Nhất vẫn chơi tốt và đứng hạng tư chung cuộc.\n\nĐáng chú ý, với lối chơi phòng ngự phản công của mình, đoàn quân của HLV Phùng Thanh Phương trở thành đội bóng kiếm điểm trên sân nhà nhiều nhất V-League 2023/2024, vượt qua cả những đội mạnh như Nam Định, CAHN hay Hà Nội FC.Sau mùa giải thành công ngoài mong đợi, CLB TP.HCM đã có sự xáo trộn về mặt lực lượng. Theo tin chuyển nhượng V-League 2024/2025 mới nhất, CLB TP.HCM thông báo chia tay cùng lúc 6 cầu thủ. Những cầu thủ rời CLB TP.HCM gồm Minh Tùng, Chu Văn Kiên, Hữu Nghĩa, Uông Ngọc Tiến, Lê Cao Hoài An và Đặng Ngọc Tuấn.\n\nTrong số những cầu thủ này thì Minh Tùng và Chu Văn Kiên là những người có đóng góp vào thành công của CLB TP.HCM ở mùa giải 2023/2024. Nếu như Minh Tùng ra sân 21 trận với tổng thời lượng là 1770 phút thì Chu Văn Kiên cũng chơi 23 trận với 1364 phút cho đội chủ sân Thống Nhất.', 'https://tse1.mm.bing.net/th?id=OIP.kf8-2Wb6l5bNgA-ZlXPTuQHaEo&pid=Api&P=0&h=180', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(9, 5, 1, 'Cựu HLV Hà Nội: \'V-League không nên dựa dẫm vào ngoại binh nữa\'', 'Trong cuộc phỏng vấn với tạp chí Qoly trước khi rời Hà Nội FC, HLV Iwamasa Daiki muốn các CLB V-League giảm phụ thuộc vào ngoại binh và hướng tới lối chơi phát huy tốt hơn sức mạnh cầu thủ nội.\n\n- Nhìn lại bảy tháng làm việc ở Hà Nội FC, ông cảm nhận thế nào?\n\n- Một trải nghiệm tốt. Nếu nhìn chi tiết, có rất nhiều thứ xảy ra, nhưng nếu một ngày nào đó nghĩ lại thì tôi sẽ rất vui với những gì đã nhận được ở CLB.\n\n- Hồi tháng 2/2024, ông từng nói muốn thay đổi văn hóa bóng đá Việt Nam từ phản công, chơi bóng dài sang kiểm soát bóng để tận dụng cơ địa nhỏ bé của cầu thủ nội. Mức độ hoàn thành mục tiêu là bao nhiêu trên thang điểm 100?\n\n- Nếu nhìn chi tiết hơn, nó sẽ dao động từ 70 đến 80 điểm. Nhưng xét đến những gì đã đạt được, tôi tin đã vượt qua cả 100 điểm.\n\n- Có nghĩa là các cầu thủ thích ứng tốt hơn mong đợi?\n\n- Thành thật thì nó khác với những gì tôi nghĩ trước đây. Tôi từng nghe rằng phối hợp với cầu thủ Việt khó khăn. Nhưng nếu bạn trình bày một hệ thống và làm rõ từng nhiệm vụ, cầu thủ có thể hiểu được, dẫn đến sự hợp tác và hỗ trợ lẫn nhau. Không thể phủ nhận triết lý đã bén rễ nhanh chóng, dựa vào sự tiếp thu nhanh kết hợp với khao khát mạnh mẽ muốn chơi theo phong cách này của cầu thủ.', 'https://i1-thethao.vnecdn.net/2024/07/09/hlv-iwamasa-daiki-ha-noi-fc-20-3392-9779-1720463727.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=UWFiX_thgefGMTWkk68e2Q', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(10, 10, 3, '5 quy tắc quan trọng khi cho trẻ đi bơi', 'Chọn trang phục bơi nổi bật\n\nNước có thể làm cho mọi thứ khó nhìn hơn. Các gợn sóng, nước bắn tung tóe, ánh sáng bị phản chiếu, tất cả đều che khuất tầm nhìn của bạn. Do đó, bạn có thể giúp tầm nhìn dễ dàng hơn bằng cách chọn đồ bơi có màu sắc rực rỡ, nổi bật so với các nhóm màu điển hình ở hồ bơi là xanh lam và xanh lục.\n\nTránh xa cống thoát nước hồ bơi\n\nCống thoát nước, đặc biệt là ở những hồ bơi cũ, có lực hút khá mạnh. Đôi khi chúng có thể hút trẻ vào và không thể bứt qua.\n\nCha mẹ cần học cách hô hấp nhân tạo, sơ cứu cơ bản\n\nBản thân cha mẹ cần học các kỹ năng sơ cứu để xử lý trong trường hợp khẩn cấp. Bạn cũng cần giữ thái độ bình tĩnh, không cuống cuồng, đứng chết lặng khi bắt gặp trẻ gặp tình huống nguy hiểm. Sự bình tĩnh của cha mẹ có thể giúp con thoát khỏi tình huống nguy ngập một cách hiệu quả.', 'https://i1-giadinh.vnecdn.net/2023/05/24/z4352177896737-1facf2592aff59c-1830-9339-1684903529.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=YXra8BIhzAKxdQdyinH-bA', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(11, 4, 2, 'Tuyển Mỹ \"đón\" ca chấn thương đầu tiên, nói lời chia tay với Kawhi Leonard', 'Sau tuần đầu tiên hội quân chuẩn bị cho Olympic Paris 2024, đội tuyển bóng rổ Mỹ đã phải nói lời chia tay với cầu thủ đầu tiên vì chấn thương.\n\nKhông phải Kevin Durant, người đang ngồi ngoài nhiều ngày qua và bỏ lỡ trận giao hữu với Canada vì chấn thương bắp chân mà là Kawhi Leonard. Nguyên nhân được cho là đau đầu gối, điều mà Leonard đã đương đầu trong nhiều tháng qua từ trong mùa giải NBA.Phát ngôn về điều này, đại diện đội tuyển bóng rổ Mỹ cho biết:\n\n“Kawhi đã cố gắng tập luyện để sẵn sàng cho Olympic trong nhiều tuần qua, bao gồm những buổi tập để lại nhiều ấn tượng khi hội quân với đội tuyển Mỹ.', 'https://cdnmedia.webthethao.vn/uploads/2024-07-12/tuyen-my-kawhi-leonard-chan-thuong-rut-lui-chien-dich-olympic-1.jpg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(12, 2, 3, 'Hành trình lập kỷ lục yoga nổi dưới nước của bà 78 tuổi', '65 tuổi mới biết bơi nhưng ở tuổi 78 bà Ngọc Cầm vừa lập kỷ lục là người cao tuổi nhất thực hiện được 8 động tác yoga nổi trên mặt nước, rất phức tạp.\n\nĐã thành thói quen gần 10 năm nay, 14h30 mỗi buổi chiều, bà Phạm Thị Ngọc Cầm bắt đầu buổi tập aqua yoga trong bể bơi của tòa nhà đang ở. Sau mấy vòng khởi động, người phụ nữ 78 tuổi bắt đầu xoay lật cơ thể lên xuống như đang múa trong hồ nước.\n\nXoay một hồi, bà bắt đầu chuyển sang các tư thế khó, lúc vặn mình trong tư thế chim bồ câu, lúc lại thu tứ chi làm động tác thiền hoa sen. Hai mắt bà nhắm lại, cả cơ thể nổi trên mặt nước cả chục phút. \"Đây là giây phút thư giãn nhất trong buổi tập của tôi\", bà Ngọc Cầm, một giáo viên dạy Văn về hưu, chia sẻ.', 'https://cdnmedia.webthethao.vn/uploads/asean-schools-games-lich-thi-dau-boi-1.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(13, 9, 4, 'CON GÁI NÊN HỌC VÕ GÌ? ƯU, NHƯỢC ĐIỂM TỪNG MÔN VÕ', 'Trong xã hội hiện đại, việc trang bị cho bản thân những kỹ năng tự vệ là điều vô cùng quan trọng, đặc biệt là đối với phái nữ. Học võ không chỉ giúp con gái rèn luyện sức khỏe, thể chất mà còn nâng cao khả năng tự bảo vệ bản thân, trau dồi tinh thần và ý chí. Tuy nhiên, với vô số môn võ khác nhau, việc lựa chọn môn võ phù hợp có thể khiến nhiều người băn khoăn. Bài viết này sẽ giới thiệu giải thích con gái nên học võ gì, đồng thời phân tích ưu điểm và nhược điểm của từng môn để giúp bạn đưa ra lựa chọn sáng suốt.\n\n1. Võ cổ truyền Việt Nam\nVõ cổ truyền Việt Nam là một hệ thống võ thuật lâu đời và phong phú, bao gồm nhiều môn phái khác nhau như Vovinam, Võ Bình Định, Tây Sơn, v.v. Môn võ này đề cao tinh thần yêu nước, ý chí quật cường và khả năng thích nghi linh hoạt phù hợp câu hỏi Con gái nên học võ gì.Ưu điểm:\n\nRèn luyện sức khỏe toàn diện, tăng cường sự dẻo dai, linh hoạt và sức mạnh.\nNâng cao tinh thần tự hào dân tộc, ý chí kiên cường và lòng yêu nước.\nPhát triển khả năng tự vệ hiệu quả trong nhiều tình huống.\nGiúp rèn luyện tính kỷ luật, sự tập trung và tinh thần đồng đội.\nNhược điểm:\n\nQuá trình học tập có thể đòi hỏi nhiều thời gian và sự kiên trì.\nMột số môn phái có thể có những kỹ thuật phức tạp và khó thực hiện.\nViệc tìm kiếm thầy dạy có trình độ chuyên môn cao có thể gặp khó khăn.', 'https://tse3.explicit.bing.net/th?id=OIP.ZtnXF2Qb0I5FyGoLOk4uoQHaFj&pid=Api&P=0&h=180', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(14, 13, 2, 'Tuyển thủ bóng rổ Việt Nam được chọn dự giải nữ bóng rổ nhà nghề Mỹ', 'Đây được xem là sự kiện lịch sử với bóng rổ Việt Nam khi lần đầu tiên có 1 cầu thủ được gia nhập giải bóng rổ nữ nhà nghề hấp dẫn bậc nhất thế giới là WNBA. Trước đó Trương Thảo Vy góp công lớn giúp đội tuyển nữ bóng rổ Việt Nam lần đầu đoạt HCV nội dung 3x3 tại SEA Games 32 (năm 2023 tại Campuchia).Trước khi được CLB Washington Mystics tuyển chọn, Trương Thảo Vy có 5 mùa giải chơi bóng trong màu áo đội Trường ĐH Gonzaga ở giải vô địch bóng rổ các trường ĐH Mỹ. Với niềm đam mê bất tận, nỗ lực hoàn thiện không ngừng, Trương Thảo Vy từ vai trò dự bị trong 2 mùa giải đầu trở thành trụ cột đội Trường ĐH Gonzaga. Màn thể hiện ấn tượng của tay ném sinh năm 2001 giúp cô lọt vào mắt xanh của các CLB tại WNBA.', 'https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/4/16/43579117210016554350408732786185883826457979n-17132397921971183578026.jpg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(15, 4, 2, 'Chuyển nhượng NBA: 6 đội bắt tay nhau đưa Klay Thompson đến Dallas, làm nên lịch sử giải đấu', 'Klay Thompson đã nói lời chia tay với Golden State Warriors sau 13 năm gắn bó, một cuộc chia ly mang rất nhiều cảm xúc của cả đôi bên. Song song với đó, cũng nặng nề không kém là yếu tố pháp lý xoay quanh việc Klay rời khỏi Warriors và cập bến Dallas Mavericks.\n\nTheo ESPN, thương vụ ký hợp đồng rồi trao đổi xoay quanh Klay Thompson có liên quan đến tổng cộng 6 đội bóng. Một cú trade 6 bên mà lịch sử NBA chưa bao giờ chứng kiến.Về phía tay ném đã 13 năm gắn bó với Golden State Warriors, anh sẽ trở thành đồng đội của hai hậu vệ siêu sao bao gồm Luka Doncic và Kyrie Irving.\n\nNBA hiếm khi chứng kiến một tay ném đẳng cấp cao như Thompson ở bên cạnh hai hậu vệ có khả năng hút người kèm tốt như Luka và Kyrie. Do đó bộ ba này cũng vô cùng đáng chú ý ở mùa giải tới.', 'https://cdnmedia.webthethao.vn/uploads/2024-07-08/chuyen-nhuong-nba-6-doi-bat-tay-hoan-tat-klay-thompson-dallas-warriors-3.jpg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(16, 5, 1, 'Thắng luân lưu Hà Nội FC, Thanh Hóa đoạt Cup Quốc gia 2023-2024', 'Bước vào trận đấu trên sân Thanh Hoá, chủ nhà vẫn bị đánh giá bất lợi hơn khi vắng chân sút chủ lực Rimario và HLV Velizar Popov vì án treo giò. Bên cạnh đó, Hà Nội đang đạt phong độ cao khi thắng bảy, hoà hai và chỉ thua một trong 10 trận đã qua. Chiến thắng gần nhất của đội bóng thủ đô là trước Thể Công, với tỷ số 4-1, ở bán kết Cup Quốc gia 2023-2024, cách đây ba ngày.\n\nThanh Hoá và Hà Nội tạo nên loạt đá luân lưu dài nhất trong lịch sử Cup Quốc gia, với 10 lượt, chỉ còn thiếu loạt sút của hai thủ môn. Sau bốn lượt đầu, Hà Nội FC dẫn 4-3, sau khi của Đình Tùng phía Thanh Hoá bị Văn Hoàng cản phá, ở lượt thứ hai.\n\nChiến thắng đã ở rất gần thầy trò HLV Iwamasa Daiki thì Joel Tagueu sút hỏng ở lượt năm. Anh đặt lòng vào góc trái và bị thủ môn Xuân Hoàng bắt bài cản phá. Kể từ đó, cầu thủ đôi bên liên tục sút thành công, đưa loạt luân lưu đến tỷ số 8-8.\n\nĐiều này buộc đội trưởng Văn Quyết phải sút lượt thứ 10, dù anh đã muốn tránh. Tiền đạo sinh năm 1991 đá hỏng phạt đền hai trận liên tiếp, khi Hà Nội thắng Công an Hà Nội 2-1 ở vòng 23 và hoà Bình Dương 3-3 ở vòng 26 V-League 2023-2024. Áp lực phần nào khiến Văn Quyết đánh mất tự tin, bị thủ môn đối phương bắt bài cản phá cú sút vào góc trái.\n\nLượt quyết định của Thanh Hoá do Hoàng Thái Bình thực hiện. Hậu vệ trái này bình lĩnh sút vào chính giữa đánh lừa Văn Hoàng và giữ Cup Quốc gia Casper ở lại với sân Thanh Hoá.', 'https://i1-thethao.vnecdn.net/2024/07/07/449315544-875141424446312-4158-2967-6527-1720364477.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=gDSjBH3oZQDBKt5HtrO7BQ', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(17, 3, 4, 'Kết quả gây tranh cãi tại LION Championship 15, cá...', ' \n \n \n \nSau sự kiện võ thuật tổng hợp LION Championship 15 (LC15), làn sóng phẫn nộ của người hâm mộ võ thuật dành cho BTC giải đấu ngày một tăng cao, thu hút cả sự quan tâm của những võ sĩ nước ngoài. \n\nKết quả của cuộc đối đầu tâm điểm tại sự kiện võ thuật LION Championship 15 vừa qua giữa nhà vô địch hạng cân 56kg nữ, Dương Thị Thanh Bình và “Bóng hồng Hungary” Bianka Balajti hiện đang vấp phải nhiều tranh cãi đến từ dư luận. \n\nĐa phần người hâm mộ theo dõi đều cho rằng Bianka Balajti mới là người xứng đáng giành chiến thắng ở trận đấu này. Xuyên suốt 5 hiệp thi đấu căng thẳng, nữ võ sĩ người Hungary luôn ở thế chủ động tấn công; dù là đánh đứng hay địa chiến, Bianka đều cho thấy sự trên cơ hoàn toàn so với đối thủ bên kia chiến tuyến của mình. Dẫu vậy, một trận thua với tỷ số quá chênh lệch lên tới 46-49 cho Bianka là điều mà ngay cả những người ủng hộ lạc quan nhất cũng không thể chấp nhận. ', 'https://cdn-img.thethao247.vn/origin_842x0/storage/files/ctvqt/2024/07/14/450904691_461622583287659_425092420853110971_n-164036.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(18, 5, 1, 'Thắng luân lưu Hà Nội FC, Thanh Hóa đoạt Cup Quốc gia 2023-2024', 'Bước vào trận đấu trên sân Thanh Hoá, chủ nhà vẫn bị đánh giá bất lợi hơn khi vắng chân sút chủ lực Rimario và HLV Velizar Popov vì án treo giò. Bên cạnh đó, Hà Nội đang đạt phong độ cao khi thắng bảy, hoà hai và chỉ thua một trong 10 trận đã qua. Chiến thắng gần nhất của đội bóng thủ đô là trước Thể Công, với tỷ số 4-1, ở bán kết Cup Quốc gia 2023-2024, cách đây ba ngày.\n\nThanh Hoá và Hà Nội tạo nên loạt đá luân lưu dài nhất trong lịch sử Cup Quốc gia, với 10 lượt, chỉ còn thiếu loạt sút của hai thủ môn. Sau bốn lượt đầu, Hà Nội FC dẫn 4-3, sau khi của Đình Tùng phía Thanh Hoá bị Văn Hoàng cản phá, ở lượt thứ hai.\n\nChiến thắng đã ở rất gần thầy trò HLV Iwamasa Daiki thì Joel Tagueu sút hỏng ở lượt năm. Anh đặt lòng vào góc trái và bị thủ môn Xuân Hoàng bắt bài cản phá. Kể từ đó, cầu thủ đôi bên liên tục sút thành công, đưa loạt luân lưu đến tỷ số 8-8.\n\nĐiều này buộc đội trưởng Văn Quyết phải sút lượt thứ 10, dù anh đã muốn tránh. Tiền đạo sinh năm 1991 đá hỏng phạt đền hai trận liên tiếp, khi Hà Nội thắng Công an Hà Nội 2-1 ở vòng 23 và hoà Bình Dương 3-3 ở vòng 26 V-League 2023-2024. Áp lực phần nào khiến Văn Quyết đánh mất tự tin, bị thủ môn đối phương bắt bài cản phá cú sút vào góc trái.\n\nLượt quyết định của Thanh Hoá do Hoàng Thái Bình thực hiện. Hậu vệ trái này bình lĩnh sút vào chính giữa đánh lừa Văn Hoàng và giữ Cup Quốc gia Casper ở lại với sân Thanh Hoá.', 'https://i1-thethao.vnecdn.net/2024/07/07/thanh-hoa-ha-noi-fc-chung-ket-1172-2042-1720362554.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=qW3fBc1qdsRNtJwqiSxxug', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(19, 7, 4, 'Những huyền thoại thành công nhất lịch sử Olympic', '(Dân trí) - Siêu kình ngư Michael Phelps (Mỹ) vẫn là vận động viên (VĐV) thành công nhất trong lịch sử Olympic, xếp trên nhiều tên tuổi lẫy lừng trên khắp thế giới.\nTính cho đến trước khi Olympic Tokyo 2020 khởi tranh, Michael Phelps vẫn là VĐV giành nhiều huy chương nhất trong lịch sử các kỳ Olympic, với 28 huy chương các loại, trong đó có 23 HCV.\n\nCựu VĐV bơi người Mỹ khởi đầu những năm tháng huyền thoại của mình với 6 HCV và hai HCĐ tại Olympic Athens 2004. Tiếp đó, đến Olympic Bắc Kinh năm 2018, anh giành thêm 8 HCV nữa. Ở kỳ Thế vận hội trên đất Trung Quốc, có cảm giác như cứ hễ Phelps nhảy xuống nước là anh lại leo lên bờ chờ đeo HCV.Trong những năm tháng rực rỡ nhất của mình, siêu kình người Mỹ không có đối thủ ở các cự ly ngắn trong môn bơi, từ bơi tự do, bơi bướm, cho đến hỗn hợp. Chỉ có nội dung bơi ngửa không phải là sở trường của Phelps, và anh chưa dành HCV nào ở nội dung này ở đấu trường Thế vận hội.\n\nSang đến Olympic London 2012, Phelps lại có thêm 4 HCV và hai HCB nữa, nâng tổng số huy chương của anh cho đến thời điểm ấy lên con số 18 vàng, hai bạc và hai đồng. ', 'https://cdnphoto.dantri.com.vn/DxkSQ0n0-R-8jMIiAIsqKVceFsg=/thumb_w/990/2021/07/23/phelps223721-1627016110108.jpeg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(20, 7, 4, 'Cái chết nhiều bí ẩn ở tuổi 32 của huyền thoại phim võ thuật Lý Tiểu Long', 'Lý Tiểu Long (1940-1973) là ngôi sao huyền thoại của dòng phim võ thuật. Tài tử còn được xem là người góp phần sáng tạo nên bộ môn võ tự do (MMA).\n\nLý Tiểu Long được đánh giá là một biểu tượng của văn hóa đại chúng trong thế kỷ 20. Tài tử từng đáp ứng được thị hiếu của cả công chúng phương Đông và phương Tây thông qua các bộ phim điện ảnh.\n\nLý Tiểu Long qua đời vào ngày 20/7/1973 ở tuổi 32. Thời gian đã trôi qua đã hơn 50 năm, nhưng những đồn đoán xung quanh nguyên nhân dẫn tới sự ra đi của nam diễn viên huyền thoại vẫn chưa dừng lại.\n\nTờ tin tức South China Morning Post đã có loạt bài lật lại những giả thuyết xung quanh sự ra đi của huyền thoại võ thuật Lý Tiểu Long.', 'https://cdnphoto.dantri.com.vn/L5LfmBZKuXk-iAbtx1WjuGvkHho=/2024/06/02/du-an-moi-1717336841308.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(21, 13, 2, 'Khoa Trần khiến đồng đội \'toát mồ hôi\' ở Đấu trường tài năng', 'Theo luật chơi, Khoa Trần nhập hội cùng bộ đôi diễn viên Hoàng Phi và Trịnh Thảo (đội Khổng lồ) để thi thố ở các trò chơi vận động với các bé thiếu nhi (đội Tí hon). Ở phần thi bóng rổ, Khoa tranh tài với bé Bảo Duy. Phần thi này yêu cầu mỗi đối thủ dằn và ném bóng vào rổ tính điểm. Trong thời gian quy định, ai ghi điểm nhiều hơn sẽ chiến thắng. Ở nội dung sở trưởng, Khoa Trần bị “làm khó” khi phải dùng một tay đi bóng và ném rổ ở khoảng cách xa hơn. Tuy vậy, Mr. Wiggle (biệt danh của Khoa) vẫn thong dong vượt qua.Khi thời gian còn nhiều, thấy thử thách của chương trình chưa đủ đô, Khoa Trần chọn vị trí xa hơn để dứt điểm. Tuy nhiên, tất cả những pha ném sau đó của tay ném cao 1,83 m đều ra ngoài. Hoàng Phi và Trịnh Thảo không giấu được sự hồi hộp, tiếc nuối khi đồng đội không thể ghi thêm điểm. Tuy vậy, hết thời gian, Khoa Trần vẫn may mắn giành chiến thắng cách biệt chỉ 1 điểm.', 'https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/5/27/khoa-tran-do-va-doi-thu-nhi-bao-duy-16852291326592045997152.png', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(22, 12, 2, 'Cặp song sinh Việt kiều vỡ òa cảm xúc khi bóng rổ Việt Nam tạo địa chấn trước Thái Lan, trả món nợ từ SEA Games 31', 'NBA vốn là giải đấu nơi ngôi sao rất được đề cao. Dù không phải môn thể thao số một tại nước Mỹ thế nhưng bóng rổ vẫn rất nổi tiếng trên toàn thế giới chính nhờ những cầu thủ của mình. Các màn trình diễn tuyệt vời của họ chính là thứ gia vị tuyệt diệu nhất dành cho NHM. Damian Lillard với 71 điểm trong sáng nay theo giờ Việt Nam không phải ngoại lệ. Tuy nhiên anh lại chẳng thoát nổi “phòng y tế”.Ngay sau khi trận đấu Moda Center kết thúc, ban tổ chức NBA đã lại một lần nữa khiến fan NBA phải bật cười. Sau “sự cố” kiểm tra doping cho Donovan Mitchell sau khi lập kỷ lục cá nhân tới 71 điểm trước CHicago Bulls. Rõ ràng họ chẳng thể buông tha đối với Damian Lillard, đặc biệt khi cầu thủ 32 tuổi làm được điều tương tự trong khi chẳng cần tới hiệp phụ.\n\nTheo đưa tin từ người phát ngôn cho Portland Trail Blazers là ông Casey Holdahl, Damian Lillard được yêu cầu kiểm tra doping. Thậm chí nhà vô địch Olympic còn phải kiểm tra máu chứ không đơn giản chỉ nước tiểu như thường lệ. Việc này cho phép bộ phận y tế có cái nhìn rõ ràng hơn hẳn trong việc tìm các tiền chất như EPO. Có vẻ như việc kiểm tra doping gần đây giống như sự cộng nhận một cách hài hước đến từ NBA dành cho cầu thủ.', 'https://tse4.mm.bing.net/th?id=OIP.L4--YgGsPozgim-cKiIfFgHaD4&pid=Api&P=0&h=180', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(23, 7, 4, 'Khách Việt chờ suốt 5 năm để được tới Thiếu Lâm Tự học võ thuật', 'Trung Quốc hiện có hơn chục ngôi chùa mang tên Thiếu Lâm. Nhưng Thiếu Lâm Tự nổi tiếng nhất và xuất hiện trong tiểu thuyết của cố nhà văn Kim Dung là ngôi chùa nằm ở Tung Sơn, huyện Đăng Phong thuộc thành phố Trịnh Châu tỉnh Hà Nam, Trung Quốc.\n\nNổi tiếng khắp thế giới, chùa Thiếu Lâm được nhiều người biết tới là cái nôi của nhiều môn phái võ Trung Hoa, đồng thời là nơi ở của những vị sư võ công cao cường.Cách thủ đô Bắc Kinh chừng 600km, chùa được xây dựng trong khu rừng trên núi thuộc dãy Tung Sơn. Đây cũng là một trong các dãy núi lớn của Trung Quốc nằm ở phía Nam sông Hoàng Hà, phía Bắc sông Dương Tử.\n\nVới bề dày lịch sử hơn 1.500 năm, quần thể công trình được UNESCO công nhận là Di sản Văn hóa Thế giới. Chùa trải qua nhiều lần trùng tu, trở thành cổ tự lâu đời nhất tại Trung Quốc.\n\nDanh tiếng của Thiếu Lâm Tự từng vang dội qua nhiều bộ truyện kiếm hiệp của cố nhà văn Kim Dung và chuyển thể thành phim, say lòng biết bao thế hệ người xem Việt Nam. Anh Đoàn Phước Trường là một trong những người có chung niềm đam mê đó.', 'https://cdnphoto.dantri.com.vn/MkMH2YvQxbS5KYtGDC9uLkwAPv0=/thumb_w/990/2024/04/05/khach-viet-cho-suot-5-nam-de-duoc-toi-chua-thieu-lam-tu-hoc-vo-thuatdocx-1712304815282.jpeg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(24, 7, 4, 'Chủ tịch nước Võ Văn Thưởng và Tổng thống Indonesia xem trình diễn võ thuật', 'Năm 1982, Lý Nguyên Bá vụt sáng thành ngôi sao nhờ thành công của bộ phim hành động Ninja in the Dragon\'s Den của điện ảnh Hong Kong. Phim đạt doanh thu toàn cầu là 100 triệu USD, con số ấn tượng với một tác phẩm hành động thời điểm đó. \n\nTruyền thông dành lời khen ngợi cho Lý Nguyên Bá trong khi các chuyên gia điện ảnh nhận định, ông sẽ là người kế nhiệm Thành Long vì khả năng đánh võ xuất sắc và gương mặt khá giống đàn anh. Lý Nguyên Bá là người học võ, thành thục nhiều môn võ như quyền Anh, kung fu, Taekwondo và karate. Ngôi sao sinh năm 1959 chào đời tại Trung Quốc nhưng trưởng thành tại Mỹ. \n\nNhững năm 90 của thế kỷ trước, Lý Nguyên Bá bất ngờ thông báo dừng đóng phim vì tình hình sức khỏe đáng báo động của mẹ ruột. Trong thông cáo gửi người hâm mộ, Lý Nguyên Bá viết: \"Tôi sẵn sàng hi sinh sự nghiệp của mình để chăm sóc mẹ ruột. Tôi muốn được dành sự quan tâm và thương yêu cho người phụ nữ đã dành cho tôi mọi điều tốt nhất trên cuộc đời này\". ', 'https://icdn.dantri.com.vn/thumb_w/960/2018/4/4/thuy-van-gemme-nguyen-john-huy-tran-minh-tu-2-15227770200761142868876.jpg', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(25, 8, 1, 'U19 Việt Nam chốt danh sách dự giải ĐNÁ: Cầu thủ Việt Kiều bị loại', 'Chia sẻ với truyền thông về quá trình tập luyện trước khi lên đường tham dự giải U19 Đông Nam Á 2024, HLV Hứa Hiền Vinh cho biết: “ĐT U19 Việt Nam có 3 trận giao hữu chất lượng ở Trung Quốc và 2 trận vừa qua. Đến thời điểm này, các cầu thủ đã sẵn sàng trạng thái tốt và chuẩn bị cho giải đấu sắp tới. Các em đã nắm bắt được cánh vận hành đề ra. Tất nhiên, U19 Việt Nam cũng có những vấn đề cần khắc phục như đường chuyền gần cầu môn tốt hơn. BHL cũng đã chú trọng trong những buổi tập gần đây đến khâu ấy.”\n\nVề điều kiện thời tiết khắc nghiệt tại Indonesia, nhà cầm quân sinh năm 1973 chia sẻ: \"Nếu nói lợi thế thì chỉ có chủ nhà lợi thế. U19 Việt Nam qua đó phải phải thích nghi. Chúng tôi di chuyển từ Hà Nội vào TP.HCM, có 4 buổi tập ở đây và tập khung giờ sớm là giúp các cầu thủ thích nghi. Có thể nói, các em cũng đã dần dần thích nghi với giờ thi đấu.\"Được biết, U19 Việt Nam sẽ đáp chuyến bay đi Jarkata vào sáng 16/7. Sau đó, thầy trò ông  Hứa Hiền Vinh sẽ tiếp tục nối chuyến để bắt đầu hành trình đến địa điểm thi đấu.', 'https://media.bongda.com.vn/editor-upload/2024-7-15/le_quoc_quan/U19-Viet-Nam-01.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(26, 10, 3, '2\nĐời sốngBài học sốngThứ hai, 17/4/2023, 16:48 (GMT+7)\nNhững nguyên tắc an toàn khi cho trẻ đi bơi', 'Bơi lội là hoạt động trẻ em ưa thích vào mùa hè nhưng đuối nước cũng là một trong những nguyên nhân hàng đầu gây tử vong cho trẻ nhỏ trên toàn thế giới.\n\nTrẻ em thường ở trong độ tuổi thích khám phá và không ý thức được nguy hiểm xung quanh mình. Trách nhiệm của mỗi bậc cha mẹ là giữ an toàn cho con mình bất kể tính cách hay hành vi của chúng.\n\nCần phải trang bị đầy đủ thông tin và biện pháp phòng ngừa phù hợp trước khi đưa trẻ đến bất kỳ nơi nào gần một vùng nước lớn, cụ thể là hồ bơi. Các bậc cha mẹ hãy lưu ý những điều sau để đảm bảo trải nghiệm hồ bơi an toàn và thú vị cho trẻ.Đừng bao giờ bỏ mặc con dù chỉ một giây\n\nĐiều rất quan trọng là bạn phải luôn để mắt đến trẻ. Nếu bạn muốn rời khỏi hồ bơi, hãy đưa con bạn theo. Đừng bao giờ nghĩ rằng có người khác đang trông chừng. Đừng để trẻ bơi khi không có người để ý. Phao không thay thế được cho người giám sát.', 'https://i1-giadinh.vnecdn.net/2023/04/17/Tre-con-boi-5990-1681714762.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=TU0SWr8sy5mW11B9n_jcqg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(27, 1, 1, 'Cựu HLV Hà Nội: \'V-League không nên dựa dẫm vào ngoại binh nữa\'', 'Trong cuộc phỏng vấn với tạp chí Qoly trước khi rời Hà Nội FC, HLV Iwamasa Daiki muốn các CLB V-League giảm phụ thuộc vào ngoại binh và hướng tới lối chơi phát huy tốt hơn sức mạnh cầu thủ nội.\n\n- Nhìn lại bảy tháng làm việc ở Hà Nội FC, ông cảm nhận thế nào?\n\n- Một trải nghiệm tốt. Nếu nhìn chi tiết, có rất nhiều thứ xảy ra, nhưng nếu một ngày nào đó nghĩ lại thì tôi sẽ rất vui với những gì đã nhận được ở CLB.\n\n- Hồi tháng 2/2024, ông từng nói muốn thay đổi văn hóa bóng đá Việt Nam từ phản công, chơi bóng dài sang kiểm soát bóng để tận dụng cơ địa nhỏ bé của cầu thủ nội. Mức độ hoàn thành mục tiêu là bao nhiêu trên thang điểm 100?\n\n- Nếu nhìn chi tiết hơn, nó sẽ dao động từ 70 đến 80 điểm. Nhưng xét đến những gì đã đạt được, tôi tin đã vượt qua cả 100 điểm.\n\n- Có nghĩa là các cầu thủ thích ứng tốt hơn mong đợi?\n\n- Thành thật thì nó khác với những gì tôi nghĩ trước đây. Tôi từng nghe rằng phối hợp với cầu thủ Việt khó khăn. Nhưng nếu bạn trình bày một hệ thống và làm rõ từng nhiệm vụ, cầu thủ có thể hiểu được, dẫn đến sự hợp tác và hỗ trợ lẫn nhau. Không thể phủ nhận triết lý đã bén rễ nhanh chóng, dựa vào sự tiếp thu nhanh kết hợp với khao khát mạnh mẽ muốn chơi theo phong cách này của cầu thủ.\n', 'https://i1-thethao.vnecdn.net/2024/07/09/hlv-iwamasa-daiki-ha-noi-fc-20-3392-9779-1720463727.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=UWFiX_thgefGMTWkk68e2Q', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(28, 3, 4, 'LION Championship 15: Đánh bại \'đả nữ\' Hungary, Dương Thị Thanh Bình bảo vệ thành công đai vô địch', ' \n \n \n \n(Kết quả LION Championship) - Tâm điểm LION Championship 15 hướng về trận bảo vệ đai đầu tiên trong năm tại hạng 56kg nữ giữa nhà vô địch Dương Thị Thanh Bình với bông hồng người Hungary - Bianka Balajti.\n\nSự kiện võ thuật tổng hợp chuyên nghiệp LION Championship 15 sẽ diễn ra vào hai khung giờ 15h00 và 20h00 ngày thứ 7 13/7 tại Nhà thi đấu Tây Hồ, Xuân La, Hà Nội.\n\nTâm điểm sẽ hướng về trận bảo vệ đai đầu tiên trong năm tại hạng 56kg nữ giữa nhà vô địch Dương Thị Thanh Bình với bông hồng người Hungary - Bianka Balajti. Sau khi lên ngôi ở mùa giải 2022, Thanh Bình mất một năm để xác định đối thủ trang đai đầu tiên trong hành trình bảo vệ ngôi vương.\n\nNgay ở hiệp 1, Bianka cho thấy sự hiệu quả từ các tình huống ra đòn, đặc biệt là các đòn tay, trong khi Thanh Bình di chuyển và thực hiện nhiều đòn chân.\n\nTrận đấu được chuyển về vị trí địa chiến đầu hiệp 2, Bianka có được vị trí kiểm soát mount nhưng Thanh Bình đã phòng thủ thành công. Trận đấu sau đó diễn ra ở tư thế đánh đứng với các tình huống đổi đòn từ đôi bên.', 'https://cdn-img.thethao247.vn/origin_842x0/storage/files/btvttth1/2024/07/13/6692aba46203f.jpg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(29, 13, 2, 'Nữ tuyển thủ bóng rổ Việt Nam lập kỷ lục cá nhân ở giải sinh viên Mỹ', 'Trương Thảo Vy (hay Kaylynne Trương) đã lập kỷ lục cá nhân về số điểm ghi được trong một trận đấu. Cụ thể, nữ tuyển thủ bóng rổ Việt Nam đã thực hiện thành công 6 cú ném 3 và mang về tổng cộng 26 điểm để giúp cho đội Đại học Gonzaga thắng Pepperdine với tỷ số 77-63 (30.12), trong khuôn khổ giải NCAA Division I khu vực bờ Tây (cấp độ cao nhất của giải bóng rổ sinh viên Mỹ).\n\nTrước đó, Trương Thảo Vy từng ghi được nhiều nhất 24 điểm, trong trận Đại học Gonzaga thắng BYU Cougars với tỷ số 67-58 (ngày 18.12). Hiện tại, Thảo Vy đang ghi điểm rất đều đặn tại giải đấu cao nhất của bóng rổ sinh viên Mỹ. Trong chuỗi 4 trận thắng gần nhất của Đại học Gonzaga, nữ tuyển thủ cao 1,72m này đã đóng góp đến 88 điểm (cao nhất đội), hiệu suất ghi điểm trung bình là 22 điểm/trận. Phong độ ấn tượng của Thảo Vy góp phần giúp đội Đại học Gonzaga giữ vững ngôi đầu trên bảng xếp hạng.', 'https://image.thanhnien.vn/Uploaded/thaodn/2022_12_31/322108592-627844925808801-6190748421143890250-n-9618.jpg', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(30, 2, 3, 'Aquaman Vietnam 2023 trao 26 giải thưởng cho VĐV', 'DNSE Aquaman Vietnam tại Phan Thiết ngày 29/10 cũng là lần đầu tiên HLV này thử sức bơi - chạy, dù trước đó là gương mặt quen thuộc của các giải triathlon. Chị cho biết hai năm qua ít thi đấu, chỉ tham gia vài giải vì tập trung cho huấn luyện, kinh doanh và điều trị chấn thương. Aquaman Vietnam đánh dấu thử thách mới trên hành trình phát triển thể thao của HLV 42 tuổi.\n\nPhạm Thúy Vi nói luôn dành sự quan tâm đặc biệt cho các giải phong trào tại Việt Nam như Aquaman Vietnam vì đây là nền móng của thể thao nước nhà. Trong bối cảnh các giải hai, ba môn phối hợp còn ít, chưa đáp ứng hết nhu cầu cộng đồng, HLV xem Aquaman Vietnam như làn gió mới, nhiều tiềm năng thu hút runner chuyển sang bơi lội - bộ môn bổ trợ rất tốt cho người chơi thể thao.\n\nCựu trợ lý HLV tuyển bơi trẻ Singapore đánh giá những giải phong trào giúp phát hiện nhiều tài năng và ủng hộ mở rộng trong tương lai. Đây là nơi cọ xát tốt cho thành viên đội tuyển vì quy tụ nhiều VĐV mạnh cả nước. Mùa trước, Vũ Đình Duân - học trò của Phạm Thúy Vi, vấp phải cạnh tranh quyết liệt từ Võ Xuân Vĩnh và chỉ bứt lên về nhất khi rút đích ngoạn mục trong 200 mét cuối. Những vị trí cao nhất của bảng xếp hạng nữ đều là những cái tên đi lên từ phong trào. \"Không phải chơi chuyên nghiệp mà không quan tâm tới phong trào. Ngược lại, nhiều VĐV phong trào là đối trọng và cũng là động lực thúc đẩy thể thao chuyên nghiệp đi nhanh hơn\", HLV sinh năm 1981 nói và khẳng định đây là lý do mang dàn VĐV chất lượng dự giải.', 'https://cdnmedia.webthethao.vn/uploads/nguyen-huy-hoang-boi-asian-games-2023-1.jpg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(31, 11, 1, 'Chuyển nhượng V-League: CAHN chia tay Bùi Tiến Dũng', 'Trước Joel Tagueu, Hà Nội FC chia tay ngoại binh Deni Junior, tiền đạo Việt kiều Ryan Hà và đặc biệt là người Nhật Bản HLV Daiki Iwamasa. \n\nMột đại diện khác của bóng đá Thủ đô là Thể Công Viettel xác nhận chia tay hai cầu thủ đầu tiên sau khi mùa giải 2023/24 kết thúc. Cụ thể hai cái tên rời đội là cặp ngoại binh Joao Pedro và Jaha. \n\nJoao Pedro ghi được 2 bàn thắng sau 12 trận cho Thể Công Viettel, còn Jaha có 4 mùa giải chơi cho đội bóng áo lính. Dù có vai trò quan trọng nhưng tuổi tác cùng chấn thương khiến Jaha không có nhiều đóng góp với đội.\n\nỞ một diễn biến khác, CLB CAHN nói lời chia tay bộ đôi Bùi Tiến Dũng và Janio Fialho de Aquino Junior. Trước đó, Bùi Tiến Dũng gia nhập đội bóng ngành công an vào đầu mùa giải 2023, nhưng thường xuyên phải ngồi dự bị.', 'https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/7/15/ha-noi-1-2753.jpg?width=0&s=ipCpOR6756fkbTWGeLuULg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(32, 10, 3, 'Huy Hoàng: \'Tôi muốn trở thành VĐV Việt Nam đầu tiên vào top 8 ở Olympic\'', 'Tấm HC đồng ở 400m tự do có thể xem là bất ngờ, khi không phải nội dung sở trường. Huy Hoàng cảm thấy thế nào?\n\n- Tôi rất vui và bất ngờ vì không tin có thể giành huy chương ở cự ly này. Tôi đã làm được và muốn dành tặng tấm huy chương cho thầy cô và chuyên gia - những người cùng tôi trải qua nhiều cực khổ trong bốn tháng qua để đạt được kết quả hôm nay.\n\n- Vậy anh chinh phục cự ly này bằng chiến thuật nào?\n\n- Tôi bơi giữ sức rồi nước rút đoạn cuối. Ở 100 m cuối cùng, tôi thấy đối thủ ngang mình nên tự thúc đẩy bản thân phải cố gắng. Tôi nhìn sang làn năm (Khiew Hoe Yean) thấy đối thủ đuối dần nên càng nghĩ có thể vượt lên. Khi tay chạm bể, tôi biết mình giành HC đồng nên rất hạnh phúc\n\n- Sau khi hụt huy chương 1.500m tự do, Huy Hoàng thừa nhận bị áp lực thành tích. Anh đã vượt qua như thế nào, để giành HC đồng 800m tự do và 400m tự do?\n\n- Khi bắt đầu cự ly 1.500m tự do, tôi có nhiều suy nghĩ trong đầu. Đó là làm sao để bảo vệ HC bạc kỳ trước, làm sao giành huy chương cho đoàn thể thao Việt Nam, rồi làm sao đạt kỳ vọng của mọi người. Tôi nhận được nhiều sự thương yêu, tình cảm nên càng nghĩ nhiều.', 'https://i1-thethao.vnecdn.net/2023/09/29/nguyen-huy-hoang-asiad-19-8-16-3537-3777-1695997024.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Vr1HxTM-7TKuk62BqsY7VQ', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(33, 12, 2, 'Niềm hạnh phúc giản đơn của ĐT bóng rổ nữ Việt Nam: Vui mừng vì được thưởng trà sữa, thoa son, đeo khuyên tai lên nhận huy chương vàng SEA Games 32', 'ĐT bóng rổ nữ 3x3 Việt Nam vừa làm nên lịch sử khi giành được huy chương vàng SEA Games 32. Trong trận chung kết gặp tuyển nữ Philippines, tuyển bóng rổ nữ Việt Nam đã giành chiến thắng với cách biệt thuyết phục 21-15, qua đó lần đầu vô địch SEA Games. Niềm vui nở rộ trên gương mặt của các cô gái.\n\nKhoảnh khắc hậu trường ghi lại, sau khi giành Huy chương vàng, ĐT bóng rổ nữ Việt Nam được thưởng một món quà bất ngờ. Đó là trà sữa - món đồ uống mà các cô gái vô cùng yêu thích. Thậm chí, VĐV Việt kiều Trương Thảo Vy còn có biệt danh Vy \"trà sữa\". Không phải những món quà xa xỉ hay to tát, chỉ bằng một cốc trà sữa, Thảo Vy đã lập tức cười tươi như hoa vui vẻ thưởng thức.Các cô gái còn cùng nhau thoa son, đeo khuyên tai để chuẩn bị bước lên bục nhận huy chương. Sau những giây phút thi đấu căng thẳng và đầy máu lửa trên sân, đem về vinh quang cho Tổ quốc, những thiếu nữ lại trở về với sở thích làm đẹp duyên dáng. Dáng vẻ của các nữ VĐV khiến CĐV thi nhau thả tim vì quá đáng yêu.', 'https://sport5.mediacdn.vn/158855217956261888/2023/5/7/photo-2-1683442371773723761654-1683448121748-16834481218852117863676.jpg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(34, 2, 3, 'Khoảnh khắc ấn tượng của VĐV nhí lần đầu thi hai môn phối hợp', 'Quam omnis doloremque et sint dolores. A cupiditate nisi doloribus nostrum id natus dolorem. Expedita qui placeat nulla aut ullam cumque assumenda. Maxime aperiam at porro sunt ea. Similique consequatur facere maiores enim debitis distinctio. Minus aspernatur labore ad inventore aspernatur aut. Voluptatem sapiente laudantium hic ipsa quia ut. Dolorem eum cumque est recusandae sunt. Vero dicta cupiditate molestiae rerum perferendis autem ea. Ab et sunt est sunt explicabo veritatis molestiae. Ut cum amet vel optio accusamus. Est ratione dolor sed rerum mollitia quod. Expedita vero autem rerum veniam. Aspernatur ad dignissimos itaque eum eum. Ut eaque ducimus fugit quia. Alias quibusdam ducimus eos sit et. Id quia enim expedita. Id qui delectus commodi cumque. Cum sed soluta non. Impedit natus sed nemo eligendi eius. Sunt quia et nulla esse non voluptates aut asperiores. Beatae adipisci incidunt et est ratione. Quas voluptas ut temporibus et.', 'https://tse4.mm.bing.net/th?id=OIP.ZMBmUJDMiwcU8XkeZpK7OgHaE7&pid=Api&P=0&h=180', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(35, 13, 2, 'Sau 60 năm, bóng rổ Việt Nam mới trở lại với sân chơi đẳng cấp châu lục. Tuyển bóng rổ Việt Nam đã triệu tập những tay ném giàu kinh nghiệm bên cạnh các tài năng trẻ vừa có thành tích tốt trong năm qua để chuẩn bị cho giải đấu này.', 'Trong số các cầu thủ này, Justin Young là thủ quân tuyển nam bóng rổ Việt Nam tại SEA Games 31 vừa qua (tháng 5.2022) ở cả hai nội dung bóng rổ 3x3 và 5x5. Hảo thủ gốc Việt từng là một trong những trụ cột giúp tuyển bóng rổ Việt Nam có cú đúp HCĐ lịch sử tại SEA Games 30 và mới đây là HCB tại SEA Games 31. “Năm 2019 khi SEA Games được tổ chức tại Philippines, bóng rổ Việt Nam đã lần đầu giành được huy chương. Đội tuyển cũng giành được nhiều chiến thắng ở các giải quốc tế. Thi đấu tại vòng sơ loại FIBA châu Á là bước tiến lớn tiếp theo của bóng rổ Việt Nam. Lần này, chúng ta sẽ tranh tài với các đội tuyển trong khu vực châu Á chứ không chỉ Đông Nam Á”, Justin Young chia sẻ.', 'https://thanhnien.mediacdn.vn/Uploaded/hoangquynh/2022_10_25/tu-trai-sang-justin-young-dang-thai-hung-le-hieu-thanh-la-nhung-tay-nem-giau-kinh-nghiem-se-khoac-ao-tuyen-quoc-gia-4432.png', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(36, 4, 2, 'Kết quả bốc thăm bóng rổ Olympic 2024: Dàn sao tuyển Mỹ chạm trán Nikola Jokic ngay trận đầu', 'Theo kết quả bốc thăm, nhà đương kim vô địch bóng rổ nam là đội tuyển Mỹ sẽ chạm trán Serbia (cùng ở bảng C) ngay trận đấu đầu tiên, nhiều khả năng mở ra cuộc thư hùng giữa dàn sao NBA của đội tuyển Mỹ với nhà vô địch kiêm Finals MVP - Nikola Jokic.', 'https://cdnmedia.webthethao.vn/uploads/2024-03-20/ket-qua-boc-tham-chia-bang-olympic-2024-bong-ro-5x5-tuyen-my-doi-dau-serbia-1.jpg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(37, 8, 1, 'U19 Việt Nam sở hữu thống kê vượt trội ở giải Đông Nam Á', 'Được biết, dù giải U19 Đông Nam Á 2024 chưa bắt đầu nhưng ĐT U19 Việt Nam đã dẫn đầu ở một thống kê thú vị. Cụ thể, U19 Việt Nam và U19 Thái Lan đều có 18 lần góp mặt tại giải đấu, nhiều nhất ở khu vực.\n\nDù vậy, U19 Việt Nam không thể so sánh cùng U19 Thái Lan và U19 Australia về danh hiệu khi cả hai quốc gia này đều từng 5 lần đăng quang. Tính đến hiện tại, đội bóng trẻ Việt Nam chỉ mới 1 lần giành được chức vô địch vào năm 2007 trên sân nhà.\n\nNói về cuộc cạnh tranh ở giải đấu năm nay, HLV Hứa Hiền Vinh cho biết: “Bảng đấu của U19 Việt Nam tương đối nặng ký. U19 Australia từng vô địch năm 2020, năm 2022 không tham gia và kỳ này đã trở lại.\n\nĐây là ứng cử viên nặng ký. Ngoài ra, U19 Lào cũng là ẩn số, cách đây 2 năm họ từng giành ngôi á quân. Nhìn chung bảng đấu tương đối có tính cạnh tranh rất cao và U19 Việt Nam sẽ phải rất nỗ lực”.', 'https://media.bongda.com.vn/editor-upload/2024-7-15/nguyen_van_minh_nhat/y1-compressed.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(38, 13, 2, 'Sao bóng rổ VBA làm gì ngoài giờ tập luyện, thi đấu tập trung cách ly ở Nha Trang?', 'Một trong số những hoạt động nổi bật của đội Danang Dragons là tương tác với fan bằng chuyên đề “Fan hỏi - các chàng trai nhà Rồng trả lời”. Mới đây nhất là clip Q&A cùng Trần Xuân Hoài Bão. Khi hết VBA, cầu thủ áo số 0 cho biết sẽ trở về Đà Nẵng chơi cho CLB 89 Basketball. Ngoài ra, Hoài Bão cũng giải đáp cần chú trọng chế độ ăn, tập luyện thể dục nửa tiếng 1 ngày và nghỉ ngơi cho các fan muốn biến bụng một múi thành 6 múi. Cầu thủ này cũng chia sẻ về các sân bóng rổ để fan tập luyện và bí kíp tập ném thuần thục ở cự ly gần rổ, ném phạt, cự ly trung bình rồi đến 3 điểm để ném 3 điểm tốt như mình.Cái tên thứ hai “lên sóng” được nhiều người hâm mộ nhắc đến là Mai Phước Thịnh. Trong clip trả lời các câu hỏi của fan, chàng trai trẻ này đã chia sẻ biệt danh Bắp là tên mẹ đặt cho anh khi còn nhỏ và đi kèm với đó là nỗi nhớ nhà. Khi được hỏi về cách đối đầu với các ngoại binh cao to, Thịnh nói anh chỉ có thể sử dụng những kỹ thuật cá nhân để qua người chứ không thể nào đối đầu trực diện với các ngoại binh này. Anh cũng thể hiện sự tôn trọng và mong muốn học hỏi từ các đàn anh như Tô Quang Trung và Triệu Hán Minh. Phước Thịnh cũng cho biết thêm hiện anh đang theo học khoa Du lịch và lữ hành, nếu không thi đấu bóng rổ chuyên nghiệp anh sẽ đi theo con đường này vì đây là sở thích từ rất lâu của anh.', 'https://thanhnien.mediacdn.vn/uploaded/hoangquynh/2021_08_25/dnd-hoaibaotraloifans_ELGT.png?width=500', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51');
INSERT INTO `tin_tucs` (`id`, `loai_tin_id`, `danh_muc_tin_id`, `title`, `content`, `image`, `is_hot`, `is_good`, `is_view_lot`, `created_at`, `updated_at`) VALUES
(39, 5, 1, 'Đại chiến ở bán kết Cup Quốc gia Việt Nam\n', 'Mùa 2023, Thanh Hoá đạt thành công ngoài mong đợi. Dù lực lượng hạn chế, họ đánh bại Thể Công trong loạt sút luân lưu để đoạt Cup Quốc gia, sau đó hạ tiếp nhà vô địch V-League Công an Hà Nội ở trận tranh Siêu Cup Việt Nam. Đoàn quân của HLV Velizar Emilov Popov vì vậy nhận nhiều kỳ vọng khi bước vào V-League 2023-2024.\n\nTuy nhiên, đội bóng xứ Thanh thi đấu không thành công, có thời điểm bị cuốn vào cuộc đua trụ hạng trước khi kết thúc giải ở vị trí thứ tám. Tất cả những gì còn lại với họ lúc này là bảo vệ ngôi vị ở Cup Quốc gia. Thách thức dành cho thầy trò Popov sẽ vô cùng lớn khi phải đối đầu đội bóng có lực lượng và phong độ tốt nhất lúc này: Nam Định.Sau khi có nhà tài trợ mới, Nam Định thoát cảnh \"con nhà nghèo\", mang về Thiên Trường nhiều cầu thủ chất lượng như tiền đạo Rafaelson, Hendrio, Nguyễn Văn Toàn, tiền vệ Lý Công Hoàng Anh... HLV Vũ Hồng Việt từ đó có điều kiện xây dựng cho đội bóng lối chơi tấn công máu lửa. Họ kết thúc V-League mùa giải năm nay với 60 lần xé lưới đối phương sau 26 trận.\n\nTrong lần gặp nhau gần nhất, ở lượt về V-League 2023-2024, Thanh Hoá từng vươn lên dẫn trước 2-0 nhưng sau đó thua ngược 2-5. Cả năm bàn của Nam Định hôm đó đều được ghi bởi tiền đạo Rafaelson. Trước đó, ở trận lượt đi, Thanh Hoá phải nhờ tới quả phạt 11m phút bù giờ mới có được kết quả hòa 2-2 ở Thiên Trường.\n\nLần gần nhất Nam Định vào chung kết Cup Quốc gia là năm 2007. Năm nay, đấu trường này càng có giá trị đối với họ, khi mở ra cơ hội đoạt cú đúp quốc nội lần đầu tiên trong lịch sử CLB.', 'https://i1-thethao.vnecdn.net/2024/07/04/69394acdf9d1598f00c0-171673086-8037-8369-1720062737.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=URJZDlDJnDbpra5mDo_w0A', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(40, 6, 3, 'Nguyễn Thị Ánh Viên – Vận động viên bơi lội nữ Việt Nam ', 'Với tố chất đặc biệt và đầy triển vọng, cô liên tiếp ghi dấu ấn với nhiều thành tích xuất sắc trong môn bơi lội. Khi mới 16 tuổi, Ánh Viên đã sở hữu những yếu tố tuyệt vời của một vận động viên bơi lội, bao gồm chiều cao 1m7, sải tay dài 1m93 và bàn chân to với những nhóm cơ suôn dài.\n\nNguyễn Thị Ánh Viên được coi là vận động viên nữ xuất sắc nhất trong đội tuyển quốc gia Việt Nam. Cô đã ghi danh vào lịch sử bơi lội Đông Nam Á khi liên tiếp giành được 8 tấm Huy Chương Vàng và phá vỡ 8 kỷ lục Sea Games chỉ trong một kỳ đại hội. Nhờ những thành tựu ấn tượng này, cô được vinh danh với biệt danh “kình ngư” và đã góp phần đưa tên tuổi của môn bơi lội Việt Nam vươn tầm quốc tế.', 'https://kienthuctonghop.vn/wp-content/uploads/2023/08/van-dong-vien-boi-loi-nu.jpg', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(41, 10, 3, 'Lợi ích của bơi lội với người bệnh tiểu đường', 'Người bệnh tiểu đường bơi thường xuyên giúp giảm tình trạng kháng insulin và viêm mạn tính, giảm đường huyết, cải thiện quá trình trao đổi chất.\n\nBơi lội phù hợp với nhiều người, kể cả người mắc tiểu đường. Hoạt động này giúp cải thiện sức khỏe tim mạch và phổi, ổn định đường huyết, tâm trạng tốt, ngủ ngon hơn.\n\nTheo nghiên cứu công bố năm 2021 của Trường Đại học Quốc gia An-Najah (Palestine) trên 40 người mắc tiểu đường type 2, bơi lội thường xuyên cải thiện quá trình trao đổi chất bao gồm huyết áp, cholesterol, đường huyết và mỡ cơ thể tốt hơn.\n\nNăm 2020, Trường Đại học Y Hawler (Iraq) thực hiện nghiên cứu về hiệu quả của bơi lội trong kiểm soát đường huyết. 40 nam thanh thiếu niên mắc tiểu đường type 1 được chia thành hai nhóm. Nhóm tham gia bơi lội (20 người) và nhóm còn lại không bơi trong 10 tuần. Kết quả cho thấy thường xuyên bơi lội có tác dụng giảm đường huyết, kiểm soát lượng đường trong máu.', 'https://i1-suckhoe.vnecdn.net/2023/09/29/portrait-beautiful-young-asian-6475-8999-1695961273.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=LmKAcH9wKy_NoVYVI5TYBg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(42, 13, 2, 'Xuất hiện hệ thống sân bóng rổ thế hệ mới tại Hà Nội', 'Hệ thống sân bóng rổ thế hệ mới này có những thông số kỹ thuật đáng chú ý như sau: 2 sân bóng rổ có mái che nắng và che mưa kiên cố có diện tích tổng cộng 1.184 m2 và 1 sân tập khởi động 3x3; 2 sân bóng rổ có mái che được trang bị hệ thống sàn thể thao nhập khẩu chuyên dụng tới từ nhà cung cấp sàn FIBA 3x3 quốc tế; 5 cột bóng rổ tiêu chuẩn quốc tế được nhập khẩu chính hãng từ nhà cung cấp rổ tiêu chuẩn FIBA tại châu Á; 1 máy tập ném bóng rổ tự động nhập khẩu từ Mỹ; Hệ thống CLUB House bao gồm phòng tập thể lực, phòng điều hành cũng như hệ thống nhà tắm và vệ sinh đảm bảo tiêu chuẩn.Hệ thống sân hiện đại mang \"sứ mệnh\" hỗ trợ phát triển cộng đồng bóng rổ Hà Nội nói riêng và Việt Nam nói chung; xây dựng và phát triển mô hình sinh hoạt CLB bóng rổ quận Tây Hồ; là sân tập luyện ngoài trời tiêu chuẩn lý tưởng cho các CLB bóng rổ chuyên nghiệp, bán chuyên và không chuyên tại Hà Nội; là sân đào tạo tiêu chuẩn cho các đối tác hợp tác đào tạo bóng rổ chuyên nghiệp tại Hà Nội; sân tổ chức tiêu chuẩn các giải đấu bán chuyên và không chuyên cho cộng đồng bóng rổ Hà Nội.', 'https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/5/25/edde572d-2639-4441-8376-824b7e0d83a5-16850549631081353563081.jpg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(43, 9, 4, 'PENCAK SILAT LÀ GÌ? CÁC HỆ PHÁI PENCAK SILAT', 'Pencak Silat là một môn võ thuật phát triển từ các nước Đông Nam Á như Philippines, Indonesia và Malaysia. Tuy nhiên, định nghĩa chính xác của môn võ thuật này thường không được rõ ràng do sự sử dụng phổ biến hơn trong quân đội, và nhiều người gọi nó là vũ nhà binh.\n\nPencak Silat được phân thành bảy hệ phái chính, bao gồm Hồi giáo, kín, mở, thể thao, truyền thống dân gian, đang thất truyền và lai tạp.Phong cách đánh Pencak Silat có sự khác biệt tùy thuộc vào từng quốc gia và khu vực. Môn võ thuật này được mô tả như mô phỏng động tác của các loài động vật. Mỗi võ sĩ có thể sáng tạo ra các thế võ khác nhau từ những cơ bản để làm phong phú cho môn phái. Tuy nhiên, tất cả các thế võ của Pencak Silat đều có một cơ sở chung.', 'https://tse1.mm.bing.net/th?id=OIP.lq1D6aRhv3bLiOjV-Q3m2AHaEs&pid=Api&P=0&h=180', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(44, 6, 3, 'Ánh Viên lọt top 10 vận động viên bơi lội xuất sắc nhất thế giới', 'Lần đầu tiên trong lịch sử, bơi lội Việt Nam có VĐV có mặt trong tốp dẫn đầu của Bảng xếp hạng thế giới. Trên bảng xếp hạng mới nhất của Lien đoàn bơi lội thế giới (FINA), Ánh Viên cũng là VĐV châu Á thứ  4 có mặt ở danh sách này (sau 1 VĐV Nhật Bản và 2 VĐV Trung Quốc). Đây thực sự là một cột mốc mới với bơi lội Việt Nam và với cá nhân Ánh Viên.  \n\nTrong năm 2014, Ánh Viên được đầu tư tới 4 tỷ trong chuyến tập huấn dài hạn tại Mỹ, Ngay đầu năm, \"kình ngư\" người Cần Thơ đã đạt được những thành tích rất ấn tượng, góp công lớn giúp cô lần đầu tiên có mặt trong tốp 10 thế giới.\n\nCụ thể, tại giải vô địch Bơi mùa xuân bang Florida (Mỹ) được tổ chức mới đây, Ánh Viên giành tới 4 HCV và 2 HCB. Đặc biệt, dù chỉ giành vị trí Á quân ở nội dung 400m hỗn hợp cá nhân nữ tại Orlando Grand Prix 2014 (thành tích 4 phút 41 giây 68, bỏ xa người về nhì đến hơn 3 giây), nhưng đây lại là thành tích tốt nhất của Ánh Viên ở nội dung này từ trước đến nay. Thành tích này vượt xa kỷ lục SEA Games do chính Ánh Viên mới thiết lập tại Nay Pyi Taw(Myanmar) hồi tháng 12/2013 đến gần 5 giây.\nVới thành công tại giải vô địch bang Floria vào đầu tháng 3, Ánh Viên còn lọt vào top 12 VĐV trẻ xuất sắc nhất nước Mỹ lứa tuổi từ 11 đến 18 và được ban tổ chức giải bầu chọn là nữ VĐV xuất sắc nhất giải Florida.\n\nTrong năm nay, mục tiêu lớn nhất của Ánh Viên là Asiad. Theo giới chuyên môn đánh giá, nếu tiếp tục thể hiện sự tiến bộ như thời gian qua, Ánh Viên có hy vọng tranh chấp tấm HCV./.', 'https://cdn.tuyengiao.vn/uploads/2014/3/10/..o00qh..jpg?w=680&r=1.5&s=3nv4dpb68a8', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(45, 4, 2, 'Nhọc nhằn thắng Canada, LeBron James cùng Curry có chiến thắng đầu tiên với tuyển Mỹ', 'Đội tuyển bóng rổ Mỹ bắt đầu loạt trận giao hữu tiền Olympic Paris bằng cuộc so tài với người.Đại diện tuyển Mỹ cho biết Kevin Durant bị căng cơ chỉ vài ngày trước khi hội quân, chấn thương gặp phải do ngôi sao Phoenix Suns tập luyện quá sức với đội ngũ HLV cá nhân.\n\n“Cậu ta bị đau ngay trước khi hội quân với đội tuyển. Tình hình không nghiêm trọng nhưng chúng tôi muốn cầu toàn một cách tuyệt đối\", HLV Steve Kerr chia sẻ với các phóng viên.\n\n hàng xóm, cũng là một trong những đối thủ nặng ký là đội tuyển Canada. \n\nVà tuy có những chập choạng nhất định, đương kim vô địch bóng rổ nam Thế vận hội đã có khởi đầu đúng như họ mong muốn. Dẫn đầu bởi Anthony Edwards và Anthony Davis, tuyển Mỹ giành chiến thắng 86-72 trước đội tuyển Canada, mở đầu chuỗi 4 trận giao hữu bằng kết quả có lợi.Dù cả tuyển Mỹ lẫn Canada đều có nhiều cầu thủ NBA, hai đội nhập cuộc chậm với ít tình huống tấn công có điểm. \n\nTuyển Mỹ thậm chí còn tệ hơn trong ngày không có Kevin Durant (chấn thương bắp chân) và Kawhi Leonard (rút lui khỏi đội), “đói điểm” trong nhiều phút đầu trận.', 'https://cdnmedia.webthethao.vn/uploads/2024-07-11/lebron-curry-tuyen-my-thang-tran-dau-tien-truoc-olympic-1.jpg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(46, 8, 1, 'Dàn sao U23 Việt Nam gây choáng khi trở về đá giải U21 Quốc gia', 'Tại vòng loại giải U21 Quốc gia năm nay, người hâm mộ Việt Nam sẽ cảm thấy bất ngờ khi xuất hiện không ít ngôi sao của đội U23 Việt Nam, thậm chí có những người đã từng được gọi lên tuyển quốc gia, tiêu biểu có thể kể đến Nguyễn Đình Bắc (Quảng Nam), Nguyễn Quốc Việt (HAGL), Nguyễn Văn Trường (Hà Nội), Đinh Xuân Tiến (SLNA),...\n\nThực tế thì những cái tên này vốn đã gây chú ý ở các cấp độ trẻ trước đây và từng khẳng định được bản thân ở các sân chơi quốc tế cấp U23 lẫn tuyển quốc gia. Do đó, việc họ vẫn bị gọi về để tham dự các đấu trường với quy mô nhỏ hơn đã tạo nên cú sốc với người hâm mộ.Đó là chưa kể đến việc gia tăng thêm cường độ thi đấu khi mùa giải V-League đã kết thúc có thể gây ảnh hưởng đến nền tảng thể lực và quá trình hồi phục của những \'sao mai\' này.\n\nTrong quá khứ, Đoàn Văn Hậu từng là cái tên chịu ảnh hưởng của chấn thương do phải liên tục tham gia các sân chơi từ cấp độ trẻ, CLB cho đến tuyển quốc gia và đó là điều mà những người làm bóng đá cần phải chú ý để tạo điều kiện phát triển tốt nhất cho những \'măng non\' thế hệ sau.\n\n', 'https://media.bongda.com.vn/editor-upload/2024-7-14/le_duc_trong/db.jpg', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(47, 5, 1, 'HLV Trần Minh Chiến: \'Việt Nam đã tặng chiến thắng cho Indonesia\'', 'Trận này, Việt Nam mất tới bảy cầu thủ do chấn thương sau trận bán kết thua ngược Thái Lan 1-2. Đội xác định là \"cửa dưới\" nên chọn lối chơi phòng ngự - phản công. Các học trò của ông Chiến đã làm tốt nhiệm vụ, khiến Indonesia chỉ tung ra hai cú dứt điểm ở tư thế khó, không thể đánh bại được thủ môn Xuân Tín.\n\nNhưng đúng phút thi đấu chính thức cuối cùng, Hồng Quang và Duy Long mắc lỗi, để Zahaby lách qua giữa thoát xuống mở tỷ số. Tới phút bù thứ tư, hàng loạt cầu thủ áo đỏ đứng trong vòng cấm nhưng tranh chấp thiếu dứt khoát để Dafa Zaidan nhân đôi cách biệt.\n\nSang hiệp hai, cầu thủ Việt Nam xuống thể lực, không còn theo kịp đối thủ. Học trò của HLV Trần Minh Chiến liên tục mắc sai lầm, để Indonesia ghi ba bàn chỉ trong bảy phút (từ 75 tới 82), với cú đúp của Daniel và xen giữa là pha làm bàn của Gholy.\n\nThua trắng 0-5, Việt Nam tay trắng rời giải U16 Đông Nam Á.\n\nÔng Chiến cho rằng việc bị dẫn trước hai bàn, cùng với thể lực đi xuống đã khiến các cầu thủ Việt Nam không làm chủ được bản thân, dẫn tới thêm sai lầm ở cuối hiệp hai, và phải chịu trận thua đậm. \"Sau kết quả này, ban huấn luyện sẽ phải đánh giá lại khả năng của từng vị trí. Bản thân tôi cũng phải đánh giá lại khả năng chuyên môn của mình\", ông cho biết.\n\nViệt Nam khởi đầu giải U16 Đông Nam Á bằng chiến thắng 15-0 trước Brunei, sau đó hòa Campuchia 1-1 và thắng Myanmar 5-1 để đứng đầu bảng B. Tại bán kết, đội dẫn trước nhưng thua ngược Thái Lan với bàn ấn định đến ở phút bù giờ. Theo ông Chiến, thất bại ở giải U16 Đông Nam Á là bài học lớn cho các cầu thủ trẻ, hy vọng họ tích luỹ kinh nghiệm và chuyên môn qua nhiều trận đấu hơn nữa để tiến bộ.', 'https://i1-thethao.vnecdn.net/2024/07/03/a1-jpeg-2573-1720010894.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=5Vf6c1aL61aJZt3b1nxASg', 0, 1, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(48, 12, 2, 'VĐV Việt kiều ôm bố khóc, gọi điện cho mẹ ở Mỹ ăn mừng khi tuyển bóng rổ nữ Việt Nam giành HCV SEA Games 32', 'Trong trận chung kết bóng rổ nữ 3x3 diễn ra lúc 12h trưa 7/5 tại nhà thi đấu Elephant Hall 2, Morodok Techo National Stadium, Campuchia, ĐT Việt Nam đã xuất sắc đánh bại đối thủ mạnh Philippines để giành huy chương vàng. Phút giây vinh quang, nữ VĐV người Mỹ gốc Việt Trương Thảo My xúc động bật khóc và ôm lấy bố ăn mừng.\n\nThảo My cùng chị em song sinh Thảo Vy là nhân tố quan trọng giúp ĐT bóng rổ nữ Việt Nam giành vàng SEA Games năm nay. Cả hai đều đang sinh sống tại Mỹ và đã trở về thi đấu cho ĐT bóng rổ nữ Việt Nam ở SEA Games.Bố của Thảo My và Thảo Vy là người trực tiếp có mặt theo dõi trận đấu và chứng kiến chiến thắng vỡ oà của ĐT bóng rổ nữ Việt Nam. Ông chia sẻ: \"Chú rất vui và hãnh diện khi hai em đã đóng góp mang về huy chương vàng. Ở trên khán đài chú rất hồi hộp. Năm ngoái, mình đã thua 1,2 điểm. Năm nay đã đánh hết mình. Chú rất mừng, không biết nói gì. Ở bên Mỹ, tụi nó cũng thi đấu nhiều lắm. Nhưng vì đây là đại diện Việt Nam lấy Huy chương vàng nên chú rất là hãnh diện\".', 'https://sport5.mediacdn.vn/158855217956261888/2023/5/7/photo-1-16834419259761446206648-1683447980275-16834479809331995332005.jpg', 0, 1, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(49, 4, 2, 'Vừa tập trung được 3 ngày, đội tuyển Mỹ có ca chấn thương đầu tiên trước thềm Olympic Paris', 'Bắt đầu từ cuối tuần qua tại Las Vegas, đội tuyển bóng rổ Mỹ với dàn sao hàng đầu NBA. như LeBron James, Stephen Curry hay nhà tân vô địch NBA Jayson Tatum… đã hội quân nhằm chuẩn bị cho chiến dịch Olympic Paris 2024.\n\nTuy nhiên trong số 12 cái tên góp mặt, một cầu thủ đã sớm ngồi ngoài vì chấn thương. HLV trưởng tuyển Mỹ là ông Steve Kerr cho biết Kevin Durant bị căng cơ bắp chân và chưa thể tập luyện cùng các đồng đội.Đại diện tuyển Mỹ cho biết Kevin Durant bị căng cơ chỉ vài ngày trước khi hội quân, chấn thương gặp phải do ngôi sao Phoenix Suns tập luyện quá sức với đội ngũ HLV cá nhân.\n\n“Cậu ta bị đau ngay trước khi hội quân với đội tuyển. Tình hình không nghiêm trọng nhưng chúng tôi muốn cầu toàn một cách tuyệt đối\", HLV Steve Kerr chia sẻ với các phóng viên.\n\n', 'https://cdnmedia.webthethao.vn/uploads/2024-07-09/kevin-durant-chan-thuong-tuyen-my-bong-ro-olympic-nba-1.jpg', 0, 0, 1, '2024-07-15 05:04:51', '2024-07-15 05:04:51'),
(50, 10, 3, 'VĐV chủ nhà thử đường bơi DNSE Aquaman Vietnam', 'TRUNG QUỐCĐể đối thủ Nhật Bản vượt trong 50 mét cuối tối 26/9, VĐV bơi số một Việt Nam Nguyễn Huy Hoàng không thể hoàn thành mục tiêu giành huy chương 1.500m tự do tại Asiad 19.\n\nTrước giải, Huy Hoàng được kỳ vọng đổi màu huy chương từ bạc sang vàng. Tuy nhiên, Nhật Bản và Hàn Quốc đều có ứng viên tiềm năng, trong khi đó đối thủ lớn nhất vẫn là Trung Quốc. Sau thời Sun Yang, Trung Quốc tiếp tục cho ra lò một ứng cử viên khác là Fei Liwei, 20 tuổi, và từng đạt thành tích tốt nhất 14 phút 46 giây 59.Tại Cung thể thao dưới nước Hàng Châu tối nay 26/9, Huy Hoàng không vội bung sức nên chỉ đứng thứ bảy sau 100 mét. Sau đó, kình ngư 23 tuổi dần bứt lên thứ tư ở 650 mét rồi thứ ba ở 850 mét.\n\nHuy Hoàng duy trì vị trí suốt chặng đường còn lại, nhưng kịch tính xảy đến ở 50 mét cuối. Kình ngư Nhật Bản Shogo Takeda có màn nước rút xuất thần với thời gian 26 giây 56 để vượt qua Huy Hoàng - người mất 28 giây 26 ở đoạn cuối này - và đoạt HC đồng. Tổng thời gian của Takeda là 15 phút 03 giây 29, nhanh hơn Huy Hoàng 0,77 giây.', 'https://i1-thethao.vnecdn.net/2023/09/26/nguyen-huy-hoang-asiad-19-2-7817-1695734083.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=pon90u-qGN7G8f5cyfbh5w', 0, 0, 0, '2024-07-15 05:04:51', '2024-07-15 05:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user', 'user@gmail.com', NULL, '$2y$10$yo5dnkXemiIendHz6kK8Ou3v5dgowXH3IRq9Y9yFej5F/xA41H.ze', 0, NULL, '2024-07-15 21:04:48', '2024-07-15 21:04:48'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$KFri7PlIA1H.yI1Amr9Fpu.t0WnLrpG.RsyEnwXE3CYi1zzFXY7/m', 1, NULL, '2024-07-15 21:05:15', '2024-07-15 21:05:15'),
(5, 'Lê Thành Đạt', 'test@gmail.com', NULL, '$2y$10$qguqfwW9XAqAFz/5KdBdPOj2bcBdzxYBT6ejUO0sVnrwVgAJwkGya', 0, NULL, '2024-07-16 02:31:07', '2024-07-16 02:31:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danh_muc_tins`
--
ALTER TABLE `danh_muc_tins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loai_tins`
--
ALTER TABLE `loai_tins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai_tins_danh_muc_tin_id_foreign` (`danh_muc_tin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tin_tucs`
--
ALTER TABLE `tin_tucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tin_tucs_loai_tin_id_foreign` (`loai_tin_id`),
  ADD KEY `tin_tucs_danh_muc_tin_id_foreign` (`danh_muc_tin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danh_muc_tins`
--
ALTER TABLE `danh_muc_tins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_tins`
--
ALTER TABLE `loai_tins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1411;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tin_tucs`
--
ALTER TABLE `tin_tucs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loai_tins`
--
ALTER TABLE `loai_tins`
  ADD CONSTRAINT `loai_tins_danh_muc_tin_id_foreign` FOREIGN KEY (`danh_muc_tin_id`) REFERENCES `danh_muc_tins` (`id`);

--
-- Constraints for table `tin_tucs`
--
ALTER TABLE `tin_tucs`
  ADD CONSTRAINT `tin_tucs_danh_muc_tin_id_foreign` FOREIGN KEY (`danh_muc_tin_id`) REFERENCES `danh_muc_tins` (`id`),
  ADD CONSTRAINT `tin_tucs_loai_tin_id_foreign` FOREIGN KEY (`loai_tin_id`) REFERENCES `loai_tins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
