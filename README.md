# Kubernetes Practice Project

This project provides hands-on practice for learning Kubernetes through a simple multi-service setup.

## Project Structure

```
cloud_work/
├── k8s-spring/          # Spring Boot application
├── mysql-pod/           # MySQL database
└── nginx-pod/           # Nginx web server
```

## How to Run

### 1. Spring Boot Application

```bash
cd k8s-spring
kubectl apply -f spring-pod.yml
kubectl apply -f spring-service.yml
```

### 2. MySQL Database

```bash
cd mysql-pod
kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql-config.yaml
kubectl apply -f mysql-pv.yaml
kubectl apply -f mysql-pvc.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f mysql-service.yaml
```

### 3. Nginx Web Server

```bash
cd nginx-pod
kubectl apply -f nginx-pod.yml
```

## Configuration

**Update MySQL Password**
In the `mysql-pod/mysql-secret.yaml` file, replace `your-password-here` with your actual password.

## 📡 Access Information

* **Spring Application**: `http://localhost:30000`
* **MySQL Database**: `localhost:30002`

  * **User**: `root`
  * **Password**: Defined in the Secret
  * **Database**: `kub-practice`

## Port Forwarding

```bash
# Forward Spring service
kubectl port-forward service/spring-service 30000:8081

# Forward MySQL service
kubectl port-forward service/mysql-service 30002:3306
```

## Notes

* In production environments, make sure to store and manage Secrets securely.
* The `target/` directory is included in `.gitignore` and will not be committed (it contains build artifacts).
