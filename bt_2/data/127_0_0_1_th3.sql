-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2023 lúc 08:20 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btth03_cse485`
--
CREATE DATABASE IF NOT EXISTS `btth03_cse485` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `btth03_cse485`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Course 1', 'Description for Course 1', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 'Course 2', 'Description for Course 2', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 'Course 3', 'Description for Course 3', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 'Course 4', 'Description for Course 4', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 'Course 5', 'Description for Course 5', '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 2, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 3, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 4, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 5, '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lesson 1', 'Description for Lesson 1', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 2, 'Lesson 2', 'Description for Lesson 2', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 3, 'Lesson 3', 'Description for Lesson 3', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 4, 'Lesson 4', 'Description for Lesson 4', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 5, 'Lesson 5', 'Description for Lesson 5', '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `materials`
--

INSERT INTO `materials` (`id`, `lesson_id`, `title`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Material 1', '/path/to/material1', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 2, 'Material 2', '/path/to/material2', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 3, 'Material 3', '/path/to/material3', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 4, 'Material 4', '/path/to/material4', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 5, 'Material 5', '/path/to/material5', '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_text` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Option 1', 1, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 1, 'Option 2', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 1, 'Option 3', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 1, 'Option 4', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 2, 'Option 1', 1, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(6, 2, 'Option 2', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(7, 2, 'Option 3', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(8, 2, 'Option 4', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(9, 3, 'Option 1', 1, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(10, 3, 'Option 2', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(11, 3, 'Option 3', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(12, 3, 'Option 4', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(13, 4, 'Option 1', 1, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(14, 4, 'Option 2', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(15, 4, 'Option 3', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(16, 4, 'Option 4', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(17, 5, 'Option 1', 1, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(18, 5, 'Option 2', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(19, 5, 'Option 3', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(20, 5, 'Option 4', 0, '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 1, 'Question 1', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 2, 'Question 2', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 3, 'Question 3', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 4, 'Question 4', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 5, 'Question 5', '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quizzes`
--

INSERT INTO `quizzes` (`id`, `lesson_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quiz 1', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 2, 'Quiz 2', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 3, 'Quiz 3', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 4, 'Quiz 4', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 5, 'Quiz 5', '2023-12-16 02:20:05', '2023-12-16 02:20:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'User1', 'user1@email.com', 'password1', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(2, 'User2', 'user2@email.com', 'password2', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(3, 'User3', 'user3@email.com', 'password3', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(4, 'User4', 'user4@email.com', 'password4', '2023-12-16 02:20:05', '2023-12-16 02:20:05'),
(5, 'User5', 'user5@email.com', 'password5', '2023-12-16 02:20:05', '2023-12-16 02:20:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Chỉ mục cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Các ràng buộc cho bảng `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Các ràng buộc cho bảng `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Các ràng buộc cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
