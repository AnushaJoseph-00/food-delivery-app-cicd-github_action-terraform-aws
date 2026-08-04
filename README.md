# Tomato - Food Delivery App | DevOps CI/CD Project

A full-stack food delivery application deployed on AWS using Terraform for infrastructure provisioning and GitHub Actions for CI/CD automation.

## Architecture Diagram

![Architecture Diagram]

## Tech Stack

| Category | Technology |
|---|---|
| Frontend | React 18 + Vite |
| Backend | Node.js + Express |
| Database | MongoDB Atlas |
| Containerisation | Docker |
| Registry | AWS ECR |
| Orchestration | AWS ECS Fargate |
| Load Balancer | AWS ALB |
| Infrastructure | Terraform |
| CI/CD | GitHub Actions |
| Security Scan | Trivy |

## 📁 Project Structure

food-delivery-app-cicd-terraform/
├── frontend/ # React Vite app
├── backend/ # Node.js Express API
├── admin/ # React admin panel
├── terraform/ # AWS infrastructure
│ ├── provider.tf
│ ├── variable.tf
│ ├── terraform.tfvars
│ ├── vpc.tf
│ ├── securitygroup.tf
│ ├── ecr.tf
│ ├── iam.tf
│ ├── ecs.tf
│ ├── alb.tf
│ └── outputs.tf
└── .github/
└── workflows/
└── cicd.yml # 4-stage pipeline

## CI/CD Pipeline

Push to main
↓
Stage 1: Build → Docker build all 3 images
↓
Stage 2: Scan → Trivy vulnerability scanning
↓
Stage 3: Push → Push images to AWS ECR
↓
Stage 4: Deploy → Update ECS Fargate services

## AWS Infrastructure (Terraform)

VPC (10.0.0.0/16)
├── Public Subnet 1 (10.0.1.0/24) - us-east-1a
├── Public Subnet 2 (10.0.2.0/24) - us-east-1b
├── Internet Gateway
├── Route Tables
├── Security Groups (ALB + ECS)
├── ECR Repositories (frontend, backend, admin)
├── ECS Cluster (tomato-cluster)
│ ├── Frontend Service (Nginx + React)
│ ├── Backend Service (Node.js)
│ └── Admin Service (Nginx + React)
├── Application Load Balancer
│ ├── Port 80 → Frontend
│ ├── Port 4000 → Backend
│ └── Port 8080 → Admin
├── IAM Roles
└── CloudWatch Log Groups

## 📸 Screenshots

### Application
![Frontend](screenshots/frontend.png)
![Admin Panel](screenshots/admin.png)

### CI/CD Pipeline
![GitHub Actions](screenshots/pipeline.png)

### AWS Infrastructure
![ECS Cluster](screenshots/ecs.png)
![ECR Repositories](screenshots/ecr.png)
![ALB](screenshots/alb.png)

## 🚀 Deployment Steps

### Prerequisites
- AWS CLI configured
- Terraform >= 1.5.0
- Node.js 18+

### 1. Clone the repo
```bash
git clone https://github.com/AnushaJoseph-00/food-delivery-app-cicd-terraform.git
cd food-delivery-app-cicd-terraform
```

### 2. Provision infrastructure

```bash
cd terraform
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

### 3. Add GitHub Secrets

AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

### 4. Push to trigger pipeline

```bash
git push origin main
```

## Environment Variables

| Variable | Description |
|---|---|
| `MONGO_URL` | MongoDB Atlas connection string |
| `JWT_SECRET` | JWT authentication secret |
| `STRIPE_SECRET_KEY` | Stripe payment key |
| `PORT` | Backend server port (4000) |

## Cost Note
Infrastructure is designed to be created and destroyed — run `terraform destroy` after testing to avoid charges.

