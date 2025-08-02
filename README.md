# Kubernetes Practice Project

이 프로젝트는 Kubernetes 학습을 위한 실습 프로젝트입니다.

## 📁 프로젝트 구조

```
cloud_work/
├── k8s-spring/          # Spring Boot 애플리케이션
├── mysql-pod/           # MySQL 데이터베이스
└── nginx-pod/           # Nginx 웹서버
```

## 🚀 실행 방법

### 1. Spring Boot 애플리케이션
```bash
cd k8s-spring
kubectl apply -f spring-pod.yml
kubectl apply -f spring-service.yml
```

### 2. MySQL 데이터베이스
```bash
cd mysql-pod
kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql-config.yaml
kubectl apply -f mysql-pv.yaml
kubectl apply -f mysql-pvc.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f mysql-service.yaml
```

### 3. Nginx 웹서버
```bash
cd nginx-pod
kubectl apply -f nginx-pod.yml
```

## ⚙️ 설정

### MySQL 비밀번호 변경
`mysql-pod/mysql-secret.yaml` 파일에서 `your-password-here`를 실제 비밀번호로 변경하세요.

## 📡 접속 정보

- **Spring 애플리케이션**: `http://localhost:30000`
- **MySQL 데이터베이스**: `localhost:30002`
  - 사용자: `root`
  - 비밀번호: Secret에서 설정한 값
  - 데이터베이스: `kub-practice`

## 🔧 포트 포워딩

```bash
# Spring 서비스
kubectl port-forward service/spring-service 30000:8081

# MySQL 서비스
kubectl port-forward service/mysql-service 30002:3306
```

## 📝 주의사항

- 실제 운영 환경에서는 Secret의 비밀번호를 안전하게 관리하세요.
- target/ 폴더는 .gitignore에 포함되어 빌드 결과물이 제외됩니다.
