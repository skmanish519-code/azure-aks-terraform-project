# azure-aks-terraform-project
Production-style Azure DevOps implementation using Terraform for infrastructure provisioning, Docker for containerization, Azure DevOps CI/CD pipelines, and deployment to Azure Kubernetes Service (AKS)
![CI](https://github.com/skmanish519-code/azure-aks-terraform-project/actions/workflows/docker-build.yml/badge.svg)
##  Architecture Overview

```
Developer
   ↓
Git Push
   ↓
GitHub Actions (CI)
   ↓
Docker Image Build
   ↓
Docker Hub Registry
   ↓
Kubernetes Deployment
   ↓
Horizontal Pod Autoscaler
```
**Technologies Used**
```
	•	Terraform – Infrastructure as Code
	•	Docker – Containerization
	•	Kubernetes – Deployment & scaling
	•	GitHub Actions – CI pipeline automation
	•	ConfigMap & Secrets – Configuration management
	•	Metrics Server – Resource monitoring
	•	Horizontal Pod Autoscaler (HPA) – Dynamic scaling
```

**Project Structure**
```
azure-aks-terraform-project/
│
├── terraform/              # Infrastructure as Code
├── docker/                 # .NET application & Dockerfile
├── kubernetes/             # K8s manifests
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── configmap.yaml
│   ├── secret.yaml
│   └── hpa.yaml
│
├── .github/workflows/      # GitHub Actions CI pipeline
│   └── docker-build.yml
│
 └── README.md
```

**Features Implemented**
```
	•	Dockerized .NET application
	•	Kubernetes Deployment & Service
	•	ConfigMap integration for environment variables
	•	Secret management using Kubernetes Secrets
	•	Resource requests and limits configuration
	•	Horizontal Pod Autoscaling based on CPU utilization
	•	Metrics Server integration and debugging
	•	GitHub Actions CI pipeline
	•	Automated Docker image build and push to Docker Hub
```

**CI Pipeline (GitHub Actions)**
```
On every push to the main branch:
	1.	Checkout repository code
	2.	Login to Docker Hub
	3.	Build Docker image
	4.	Push image to Docker Hub

Workflow file location: .github/workflows/docker-build.yml
```

**Autoscaling Demonstration**
```
The application uses HPA with:
	•	Target CPU utilization: 50%
	•	Minimum replicas: 1
	•	Maximum replicas: 3
```
The scaling behavior was tested live by generating load and observing replica changes using: **kubectl get hpa -w**
<img width="862" height="107" alt="image" src="https://github.com/user-attachments/assets/f28da1db-c137-41f0-9325-a8b4ed61f0d8" />

**Configuration & Secrets**
```
	•	Application configuration managed via ConfigMap
	•	Sensitive data managed via Kubernetes Secret
	•	Environment variables injected into pods securely
```
**Monitoring & Observability**
```
Monitoring is implemented using:

- Prometheus (metrics collection)
- Grafana (visualization dashboard)
- Horizontal Pod Autoscaler (CPU-based scaling)
```
**Prometheus Metrics**
```
Prometheus scrapes:
- Application CPU usage
- Application Memory usage
- Kubernetes resource metrics
```

**Grafana Dashboard**
```
Grafana visualizes:
- App CPU Usage (%)
- App Memory Usage (MB)
- Pod Restarts
```
<img width="1911" height="907" alt="image" src="https://github.com/user-attachments/assets/25b5aca1-251b-41fe-84d6-869526d0fdba" />

**Future Enhancements**
```
	•	Deploy infrastructure to Azure AKS using Terraform
	•	Integrate Azure Container Registry (ACR)
	•	Implement full CD (automatic Kubernetes deployment)
	•	Introduce Helm chart packaging
```

**Project Objective**
```
This project demonstrates real-world DevOps practices including:
	•	Infrastructure automation
	•	Container lifecycle management
	•	Kubernetes production patterns
	•	Secure configuration handling
	•	CI pipeline automation
	•	Application autoscaling strategy
```

