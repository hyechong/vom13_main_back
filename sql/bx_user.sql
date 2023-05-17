-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 23-05-11 11:48
-- 서버 버전: 10.1.13-MariaDB
-- PHP 버전: 7.4.5p1


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- 데이터베이스: `ckgpwl2`
--


-- --------------------------------------------------------


--
-- 테이블 구조 `bx_user`
--


CREATE TABLE `bx_user` (
 `user_idx` int(11) NOT NULL COMMENT '회원인덱스',
 `user_id` varchar(50) NOT NULL COMMENT '회원아이디',
 `user_name` varchar(50) NOT NULL COMMENT '회원이름',
 `user_email` varchar(100) NOT NULL COMMENT '회원이메일',
 `user_pwd` varchar(255) NOT NULL COMMENT '회원비밀번호',
 `user_lvl` int(11) NOT NULL COMMENT '회원레벨'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- 덤프된 테이블의 인덱스
--


--
-- 테이블의 인덱스 `bx_user`
--
ALTER TABLE `bx_user`
 ADD PRIMARY KEY (`user_idx`);


--
-- 덤프된 테이블의 AUTO_INCREMENT
--


--
-- 테이블의 AUTO_INCREMENT `bx_user`
--
ALTER TABLE `bx_user`
 MODIFY `user_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원인덱스';
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




