-- MySQL 데이터베이스 생성 스크립트

-- 새 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS myapp;
CREATE DATABASE IF NOT EXISTS testdb2;
CREATE DATABASE IF NOT EXISTS development;

-- 데이터베이스 목록 확인
SHOW DATABASES;

-- 특정 데이터베이스 사용
USE myapp;

-- 테이블 생성 예시
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 테이블 목록 확인
SHOW TABLES; 