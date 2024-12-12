-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th12 12, 2024 lúc 03:40 PM
-- Phiên bản máy phục vụ: 5.7.39
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `unicode-console`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Nguyễn Tuấn a', 'nguyentuana@gmail.com', NULL, '$2y$12$jjg72KQ7DtTAbii3YVUpW.g4XGdJovJCUCwk4qPEl7tee.w/8t9Wa', NULL, '2024-12-12 08:24:03', '2024-12-12 08:24:03'),
(8, 'Nguyễn Tuấn b', 'nguyentuanb@gmail.com', NULL, '$2y$12$MMY.fF7AaYegoGW8r8BJh.cNffaBhTrh3rCxNYgyXl/p/zYZ2JPb2', NULL, '2024-12-12 08:24:03', '2024-12-12 08:24:03'),
(9, 'Nguyễn Tuấn c', 'nguyentuanc@gmail.com', NULL, '$2y$12$RmM/9hSR9wLuNKcfJpfhZu8LNrwQuhFmE4E3xrAWntMMjri7xrWA2', NULL, '2024-12-12 08:24:04', '2024-12-12 08:24:04'),
(10, 'Nguyễn Tuấn d', 'nguyentuand@gmail.com', NULL, '$2y$12$2vt1WT8O90EP7RMkjeMT5.WEuS3tyDEIpyTpg1xYh8h1h7ltUidH.', NULL, '2024-12-12 08:24:04', '2024-12-12 08:24:04'),
(11, 'Nguyễn Tuấn e', 'nguyentuane@gmail.com', NULL, '$2y$12$4c5KojTW6HYTRCXzyYFXE.Rv8YqFzbR.54Z7BDcoXQpXFT2O0unfq', NULL, '2024-12-12 08:24:04', '2024-12-12 08:24:04'),
(12, 'Nguyễn Tuấn f', 'nguyentuanf@gmail.com', NULL, '$2y$12$fDX2iZqDZUI188wNCj2O5uz7dLLUsKlLBDEh87YbOF/M5AR93827a', NULL, '2024-12-12 08:24:04', '2024-12-12 08:24:04'),
(13, 'Nguyễn Tuấn g', 'nguyentuang@gmail.com', NULL, '$2y$12$9BTmNE3cnsU8FGmRprz4aeZwfAJGyOlVcBYdr8XdLV8JFm.lyvkLa', NULL, '2024-12-12 08:24:05', '2024-12-12 08:24:05'),
(14, 'Nguyễn Tuấn h', 'nguyentuanh@gmail.com', NULL, '$2y$12$KpzcIbC3bVBLH3SWza8i7OjciDyRFrO.qpZSFgzmPpeONs9pRCCum', NULL, '2024-12-12 08:24:05', '2024-12-12 08:24:05'),
(15, 'Nguyễn Tuấn i', 'nguyentuani@gmail.com', NULL, '$2y$12$x.jq3HMy7NMwHsXqVBEBU.k0WI1p.1FVDPqHqj1pqSkbzDhhaPVnS', NULL, '2024-12-12 08:24:05', '2024-12-12 08:24:05'),
(16, 'Nguyễn Tuấn j', 'nguyentuanj@gmail.com', NULL, '$2y$12$zjTxaamy/PDt1zYgI1225O2gktzC.sW3bNY.lxjwOyZ8MVOh7jxC2', NULL, '2024-12-12 08:24:05', '2024-12-12 08:24:05'),
(17, 'Nguyễn Tuấn k', 'nguyentuank@gmail.com', NULL, '$2y$12$0psyXDygUR6JMpnjX/oIzeL9riBIVJkdG8chq9eeLREyBjg.R0rz.', NULL, '2024-12-12 08:24:05', '2024-12-12 08:24:05'),
(18, 'Nguyễn Tuấn l', 'nguyentuanl@gmail.com', NULL, '$2y$12$1YLcdDmAMRFrp3v8d7KwVecXmutZD5ycc1xSOTF7i4ZYbinmPE6h.', NULL, '2024-12-12 08:24:06', '2024-12-12 08:24:06'),
(19, 'Nguyễn Tuấn m', 'nguyentuanm@gmail.com', NULL, '$2y$12$pq.8hCkZpjYo2evQK/RF6.Zo6HABqptH7W8qTFEHjjQANHjbaxLxS', NULL, '2024-12-12 08:24:06', '2024-12-12 08:24:06'),
(20, 'Nguyễn Tuấn n', 'nguyentuann@gmail.com', NULL, '$2y$12$T6KYH3X3IQnHdYYP.NbNVuOGc9ScJggxAcxAtiQ.Uu726uTzBQ1sy', NULL, '2024-12-12 08:24:06', '2024-12-12 08:24:06'),
(21, 'Nguyễn Tuấn o', 'nguyentuano@gmail.com', NULL, '$2y$12$Qlhdg5XAwqA2TC9MHoR2yuZRv.TLD92o7y3oHr0TJo68o2nTJlQNG', NULL, '2024-12-12 08:24:06', '2024-12-12 08:24:06'),
(22, 'Nguyễn Tuấn p', 'nguyentuanp@gmail.com', NULL, '$2y$12$vqzh1OpvrBjFGn.3rE0jL.d9QygAo2UGi1AdwiVAZ0Dr0be6eNAle', NULL, '2024-12-12 08:24:07', '2024-12-12 08:24:07'),
(23, 'Nguyễn Tuấn q', 'nguyentuanq@gmail.com', NULL, '$2y$12$qA4lEvNzKUCJKFLuknegN.b9pS238J3aSlVAsYt7ESlWuGT.RzF16', NULL, '2024-12-12 08:24:07', '2024-12-12 08:24:07'),
(24, 'Nguyễn Tuấn r', 'nguyentuanr@gmail.com', NULL, '$2y$12$ilLVLtWvMEo4NP7IFLzCX.b2h/3ulMuSAD9gXOsLmkp7lAu8MFNWi', NULL, '2024-12-12 08:24:07', '2024-12-12 08:24:07'),
(25, 'Nguyễn Tuấn s', 'nguyentuans@gmail.com', NULL, '$2y$12$XT7gVwIMz0OAHvH37fjkdezN0CFqVyzfUI5CnMnrx1yA5dplGwpKy', NULL, '2024-12-12 08:24:07', '2024-12-12 08:24:07'),
(26, 'Nguyễn Tuấn t', 'nguyentuant@gmail.com', NULL, '$2y$12$L.5SJ1Eeg0yfvWE/PNN1aes3CfKvWY.mrVWGNgtrHTa5bksMPwfui', NULL, '2024-12-12 08:24:07', '2024-12-12 08:24:07'),
(27, 'Nguyễn Tuấn u', 'nguyentuanu@gmail.com', NULL, '$2y$12$tKarRLK8OKJk3KQPkynbiuS4NuGs33Q/1vdbtp3CijLMZcSTY8PWa', NULL, '2024-12-12 08:24:08', '2024-12-12 08:24:08'),
(28, 'Nguyễn Tuấn v', 'nguyentuanv@gmail.com', NULL, '$2y$12$pexCxputh9JDh65KNGlqseOAnxEDus1GRdbcSg9FYevgC/nkN4PJi', NULL, '2024-12-12 08:24:08', '2024-12-12 08:24:08'),
(29, 'Nguyễn Tuấn w', 'nguyentuanw@gmail.com', NULL, '$2y$12$0Bbouw0a66kjCqAKU7Unb.oDg3/O.6W4ds3oJ9F8kCzxREkoBTDZa', NULL, '2024-12-12 08:24:08', '2024-12-12 08:24:08'),
(30, 'Nguyễn Tuấn x', 'nguyentuanx@gmail.com', NULL, '$2y$12$yIDqKKGXc9m18jUCz8WzLuPsXlKqj1Ei1weXYKhuRdGDzAeNNnrby', NULL, '2024-12-12 08:24:08', '2024-12-12 08:24:08'),
(31, 'Nguyễn Tuấn y', 'nguyentuany@gmail.com', NULL, '$2y$12$2lg02DPh0mork05.vO8lke/V8E4XxOJCE2sIC90MR/ak9ihryUf.2', NULL, '2024-12-12 08:24:08', '2024-12-12 08:24:08'),
(128, 'Nguyễn Tuấn 1', 'nguyentuan1@gmail.com', NULL, '$2y$12$TK/zipbuopM7allKxZfoA.zlAAg.lisl7Sj/6xGDPBUq7pvee6Epm', NULL, '2024-12-12 08:25:26', '2024-12-12 08:25:26'),
(129, 'Nguyễn Tuấn 2', 'nguyentuan2@gmail.com', NULL, '$2y$12$OHOkc./imqDacDG8q43DRuS9sdyIfI35dRtuFtZccmC6QY7.V1g0W', NULL, '2024-12-12 08:25:26', '2024-12-12 08:25:26'),
(130, 'Nguyễn Tuấn 3', 'nguyentuan3@gmail.com', NULL, '$2y$12$0xXX.Ut8MBZ5rbCmt4SgyO6m2oD0JdlYL5XCuwUQb9eQEC82xQtlu', NULL, '2024-12-12 08:25:26', '2024-12-12 08:25:26'),
(131, 'Nguyễn Tuấn 4', 'nguyentuan4@gmail.com', NULL, '$2y$12$1bnkzGJQmv8K6UUfDF.Pi.Mfcb02RJ2dn9ITsbzQ7gczdeiFxutFK', NULL, '2024-12-12 08:25:26', '2024-12-12 08:25:26'),
(132, 'Nguyễn Tuấn 5', 'nguyentuan5@gmail.com', NULL, '$2y$12$m80F.munqeuwu9r4Ds958uHuMM0y4xHd366rkABDrbNnYazJ/y256', NULL, '2024-12-12 08:25:27', '2024-12-12 08:25:27'),
(133, 'Nguyễn Tuấn 6', 'nguyentuan6@gmail.com', NULL, '$2y$12$QlBTzDwE/yyQJgxIapgnNOWyAadVtZXUYyuouoNmuCFMpmZKm90rO', NULL, '2024-12-12 08:25:27', '2024-12-12 08:25:27'),
(134, 'Nguyễn Tuấn 7', 'nguyentuan7@gmail.com', NULL, '$2y$12$N/flCbwCRTvoXBbz8hc6HuWfXZjRcJYTTEEI5Yzg7HX1LgnOy8bt6', NULL, '2024-12-12 08:25:27', '2024-12-12 08:25:27'),
(135, 'Nguyễn Tuấn 8', 'nguyentuan8@gmail.com', NULL, '$2y$12$VbKEHp8hIfIuW7nMkKiozeyyZM9UJz.LZNiMhqz9E/NIDFlDANima', NULL, '2024-12-12 08:25:27', '2024-12-12 08:25:27'),
(136, 'Nguyễn Tuấn 9', 'nguyentuan9@gmail.com', NULL, '$2y$12$NIIKklZtugYfvGFIgZcog.zycyl6TJqxtyaT0fPm6DHX8PpWxRcri', NULL, '2024-12-12 08:25:28', '2024-12-12 08:25:28'),
(137, 'Nguyễn Tuấn 10', 'nguyentuan10@gmail.com', NULL, '$2y$12$GszawDcxHDKGxiTOPXwit.DdIUEzVTp1B7XroUGLalr9hawyj7Aw6', NULL, '2024-12-12 08:25:28', '2024-12-12 08:25:28'),
(138, 'Nguyễn Tuấn 11', 'nguyentuan11@gmail.com', NULL, '$2y$12$bIEermwLB9Xn4XdTFVWD7u6gwLG.X2r9woE1sjfi5oPJBaYkY3Srq', NULL, '2024-12-12 08:25:28', '2024-12-12 08:25:28'),
(139, 'Nguyễn Tuấn 12', 'nguyentuan12@gmail.com', NULL, '$2y$12$awgnr/MiKsu4v6A6zD84Gei/vHPHmGfSLqKkJ1dzQlwMbOBKoYS76', NULL, '2024-12-12 08:25:28', '2024-12-12 08:25:28'),
(140, 'Nguyễn Tuấn 13', 'nguyentuan13@gmail.com', NULL, '$2y$12$NBTjGfzsA3ZNcD8QwbRARuLYBO0G9SEYryBBZB99QzycJT2oyqqge', NULL, '2024-12-12 08:25:28', '2024-12-12 08:25:28'),
(141, 'Nguyễn Tuấn 14', 'nguyentuan14@gmail.com', NULL, '$2y$12$0VCgpTqsOHtOHqa//IeEZ.h3R88xDXivd2.vb4D.j6sdbzp7UPWkW', NULL, '2024-12-12 08:25:29', '2024-12-12 08:25:29'),
(142, 'Nguyễn Tuấn 15', 'nguyentuan15@gmail.com', NULL, '$2y$12$fsE..J38Jc7Er.gecqy1IeWfLHGW0dgCzestp0p43JnYoJkh9n7qK', NULL, '2024-12-12 08:25:29', '2024-12-12 08:25:29'),
(143, 'Nguyễn Tuấn 16', 'nguyentuan16@gmail.com', NULL, '$2y$12$1CEeV1dFjwQsqoUM8Vz0ouNIso1Ht3a4WyB7ozhYZ5JMeTg.cP6UK', NULL, '2024-12-12 08:25:29', '2024-12-12 08:25:29'),
(144, 'Nguyễn Tuấn 17', 'nguyentuan17@gmail.com', NULL, '$2y$12$wNdd5VBZ4B9dz3RmZVEc.OvchUJg7Bi7xJXXs9juPpJBum8w8zgZq', NULL, '2024-12-12 08:25:29', '2024-12-12 08:25:29'),
(145, 'Nguyễn Tuấn 18', 'nguyentuan18@gmail.com', NULL, '$2y$12$.3K.tGXR1btBkq/YwNDlOukfbz1aQ1yiIO.BV7iPSLLI3rIQs/bHO', NULL, '2024-12-12 08:25:30', '2024-12-12 08:25:30'),
(146, 'Nguyễn Tuấn 19', 'nguyentuan19@gmail.com', NULL, '$2y$12$rLGoIyv1ptNDwuNGU2c4EOqQ1HhfEGGplmpocfYBn9HKM0/fSJlWW', NULL, '2024-12-12 08:25:30', '2024-12-12 08:25:30'),
(147, 'Nguyễn Tuấn 20', 'nguyentuan20@gmail.com', NULL, '$2y$12$uIBIOkEyT4yq8hjqnlJH/uP4l.WsqnmO1qPgMKExrr8gKUMDnqvHG', NULL, '2024-12-12 08:25:30', '2024-12-12 08:25:30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
