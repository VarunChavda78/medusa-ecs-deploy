# 🚀 MedusaJS Deployment on AWS ECS with Terraform and GitHub Actions

This project demonstrates that how to deploy the Medusa open-source headless commerce platform to **Amazon ECS (Fargate)** using **Infrastructure as Code (IaC)** with **Terraform** and automate deployments using **GitHub Actions**.

---

## 📁 Project Structure

medusa-ecs-deploy/
├── backend/
│   ├── package.json
│   ├── medusa.config.js
│   ├── src/
│   ├── ...
├── infra/
│   ├── main.tf
│   ├── provider.tf
│   ├── ...
├── Dockerfile
├── .dockerignore
├── .gitignore
├── .github/
│   └── workflows/
│       └── deploy.yml

---

## ⚙️ Technologies Used

- [MedusaJS v1](https://docs.medusajs.com/v1)
- AWS ECS (Fargate)
- AWS RDS (PostgreSQL)
- AWS ECR
- Terraform
- Docker
- GitHub Actions

---

📚 References

[MedusaJS Docs](https://docs.medusajs.com/v1)

[Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

[GitHub Actions](https://docs.github.com/en/actions)

[AWS ECS Fargate](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html)

---

🔁 GitHub Actions CI/CD

Every push to the main branch triggers a deployment pipeline.

Workflow file: .github/workflows/deploy.yml

🔐 GitHub Secrets Needed

Secret Name	Description

AWS_ACCESS_KEY_ID	- Your AWS access key

AWS_SECRET_ACCESS_KEY	- Your AWS secret key

AWS_REGION -	AWS region (e.g. us-east-1)

ECR_REPO- ECR repository URI

CLUSTER_NAME - ECS cluster name

SERVICE_NAME - ECS service name

## 🔧 Setup Instructions

### 1️⃣ MedusaJS Backend Setup

```bash
npx create-medusa-app@latest
```

Dockerfile (in root)
```bash
FROM node:18

WORKDIR /app

COPY backend/package*.json ./
RUN npm install

COPY backend/. .

EXPOSE 9000
CMD ["npm", "run", "start"]

```

Dockerignore 
```bash

node_modules
.terraform
*.tfstate
*.log
*.env
*.exe

```
Terraform Deployment

```bash

terraform init
terraform plan
terraform apply
```

Terraform provisions:
```bash
VPC, Subnets, IGW
ECS Cluster, Task Definition, Service
ECR Repository
RDS PostgreSQL
Security groups and IAM roles

```

✅ Testing Deployment

Make a code change (e.g., edit README.md)

Commit and push to main

Go to GitHub → Actions tab → check CI/CD workflow status

Go to AWS Console → ECS → Clusters

Check that a new task is deployed and running

---

🙋‍♂️ About Me
Author: Varun Chavda

GitHub: VarunChavda78

Email: varunchavda078@gmail.com

LinkedIn: https://www.linkedin.com/in/harshit-khatsuriya-13a607274/
