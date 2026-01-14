
🚀 GitOps Kubernetes Deployment using Helm & Argo CD

This project demonstrates a production-style GitOps workflow for deploying applications to Kubernetes using Helm and Argo CD.

The goal of this project is to show how modern DevOps teams manage automated, scalable, and self-healing deployments using Git as the single source of truth.


🧠 Project Overview

In traditional deployments, engineers manually apply Kubernetes manifests.
In this project, all deployments are fully automated using GitOps:

Application configuration is stored in Git

Argo CD continuously monitors the Git repository

Any change in Git is automatically reflected in the Kubernetes cluster

Manual kubectl apply is completely eliminated


🏗️ Architecture

Developer → GitHub Repository → Argo CD → Kubernetes Cluster
                    |
                  Helm


🔧 Tech Stack

Kubernetes – Container orchestration

Helm – Kubernetes package manager & templating

Argo CD – GitOps continuous delivery tool

Docker – Containerization

GitHub – Source control & GitOps repository

Nginx – Sample application



📁 Project Structure

nginx-helm/
├── Chart.yaml
├── values.yaml
└── templates/
    ├── deployment.yaml
    ├── service.yaml
    └── _helpers.tpl




⚙️ Key Features

Helm-based reusable Kubernetes templates

GitOps deployment using Argo CD

Auto-sync enabled (no manual deployments)

Self-healing (drift detection & correction)

Easy scaling via Helm values

Clean and production-friendly structure



🚀 Deployment Workflow

1. Helm chart is created for the application

2. Helm chart is pushed to GitHub

3. Argo CD Application is configured to track the repo

4. Argo CD automatically deploys Helm charts to Kubernetes

5. Any Git change triggers automatic deployment




🔁 GitOps in Action (Auto Deployment)

Example: Scaling the application

Step 1: Update values.yaml

replicaCount: 4

Step 2: Push changes to Git

git add values.yaml
git commit -m "Scale application to 4 replicas"
git push

Step 3: Argo CD automatically:

Detects Git change
Updates Kubernetes deployment
Scales pods without manual intervention


📊 Verification

kubectl get pods
kubectl get svc

Argo CD Dashboard shows:
   ✅ Synced
   ✅ Healthy



🧪 What This Project Demonstrates

Real-world GitOps workflow
Helm + Argo CD integration
Kubernetes production deployment practices
Continuous Delivery without manual commands
Infrastructure managed via version control



🎯 Learning Outcome
Through this project, I gained hands-on experience with:

Helm chart creation and templating
GitOps principles and implementation
Argo CD application management
Kubernetes deployment automation
Production-grade DevOps practices



📌 Future Enhancements

Add environment-based values (dev, staging, prod)
Integrate monitoring (Prometheus & Grafana)
Add CI pipeline for Helm linting
Secure secrets using Kubernetes Secrets or Vault



👤 Author

Mahendra Boopathi R
III Year IT Student
Aspiring Cloud & DevOps Engineer

📎 GitHub: https://github.com/Boopathi022
📎 LinkedIn: https://www.linkedin.com/in/mahendra-boopathi-r-6473392a5?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app


⭐ Final Note

This project is part of my continuous journey to become a production-ready Cloud & DevOps Engineer by building real-world systems instead of just completing courses.


