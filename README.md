# Ansible-Docker Configuration & CI/CD Automation

A hands-on DevOps project demonstrating **Infrastructure as Code, configuration management, containerization, multi-container deployment, and CI/CD webhook automation** using AWS, Terraform, Ansible, Docker, GitHub, Jenkins, and Smee.io.

---

## 📌 Project Overview

This project demonstrates an end-to-end DevOps workflow where cloud infrastructure is provisioned using **Terraform**, server configuration is automated using **Ansible**, applications are containerized using **Docker**, multiple services are managed using **Docker Compose**, and GitHub changes are integrated with **Jenkins through webhooks**.

### Main Workflow

```text
Developer
    │
    ▼
 GitHub
    │
    │ Webhook
    ▼
 Smee.io
    │
    ▼
 Jenkins
    │
    ▼
 Build / Automation
    │
    ▼
 Docker Application
    │
    ▼
 AWS EC2
```

---

# 🛠️ Technologies Used

| Technology         | Purpose                      |
| ------------------ | ---------------------------- |
| **AWS EC2**        | Cloud infrastructure         |
| **Terraform**      | Infrastructure as Code       |
| **Ansible**        | Configuration management     |
| **Docker**         | Application containerization |
| **Docker Compose** | Multi-container management   |
| **Nginx**          | Web server                   |
| **Watchtower**     | Container update monitoring  |
| **Git**            | Version control              |
| **GitHub**         | Source code management       |
| **Jenkins**        | CI/CD automation             |
| **Smee.io**        | Webhook forwarding           |
| **Ubuntu Linux**   | Server environment           |

---

# 📂 Project Structure

```text
ansible-docker/
│
├── app/
│   ├── Dockerfile
│   └── index.html
│
├── terraform/
│   ├── ec2.tf
│   ├── provider.tf
│   ├── security_group.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── .terraform.lock.hcl
│   └── .gitignore
│
├── docker-compose.yml
├── docker.yml
├── index.html
├── inventory
├── .gitignore
└── README.md
```

---

# ✅ Task 1 — Ansible Configuration Management

Ansible is used to automate the configuration of the target Ubuntu server and deploy Docker-based applications.

## Implementation

The Ansible configuration performs tasks such as:

* Connecting to the target server.
* Installing Docker.
* Starting and enabling the Docker service.
* Pulling the required Docker image.
* Running the application container.
* Configuring the application deployment.

### Ansible File

```text
docker.yml
```

### Ansible Workflow

```text
Ansible Controller
        │
        ▼
   Target Server
        │
        ├── Install Docker
        │
        ├── Start Docker
        │
        ├── Pull Image
        │
        └── Run Container
```

### Result

The server configuration and Docker deployment were automated using Ansible instead of performing the configuration manually.

---

# ☁️ Task 2 — Terraform AWS Infrastructure

Terraform is used to provision AWS infrastructure using the **Infrastructure as Code (IaC)** approach.

## Infrastructure Components

The Terraform configuration includes:

* AWS provider configuration.
* EC2 instance provisioning.
* Security group configuration.
* SSH access through port `22`.
* HTTP access through port `80`.
* Terraform state management.

## Terraform Files

```text
terraform/
├── provider.tf
├── ec2.tf
├── security_group.tf
└── .terraform.lock.hcl
```

## Terraform Workflow

```text
Terraform Configuration
          │
          ▼
   terraform init
          │
          ▼
   terraform plan
          │
          ▼
  terraform apply
          │
          ▼
       AWS EC2
```

### Result

AWS infrastructure was provisioned and managed through Terraform configuration files.

---

# 🐳 Task 3 — Docker & Docker Compose

Docker is used to containerize the web application, while Docker Compose is used to manage multiple services.

## Docker Application

The application is built using an Nginx-based Docker image.

### Dockerfile

```dockerfile
FROM nginx:1.29-alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```

The Docker image provides a lightweight Nginx web server for hosting the static application.

---

## Docker Compose

The `docker-compose.yml` file manages the application services.

### Services

#### Nginx

Nginx serves the static web application.

```text
Host Port:      8080
Container Port: 80
```

#### Watchtower

Watchtower monitors Docker containers and supports automated container image updates.

### Architecture

```text
             Docker Compose
                   │
          ┌────────┴────────┐
          │                 │
          ▼                 ▼
        Nginx          Watchtower
          │                 │
          ▼                 ▼
   Static Website     Container Monitoring
```

### Result

The Docker Compose configuration was validated and the required containers were successfully deployed.

---

# 🔗 Task 4 — GitHub → Jenkins Webhook Integration

This task implements automated communication between GitHub and Jenkins using a webhook.

The objective is to trigger Jenkins automation when changes are pushed to the GitHub repository.

## Webhook Architecture

```text
Developer
    │
    │ git push
    ▼
 GitHub Repository
    │
    │ Webhook Event
    ▼
  Smee.io
    │
    │ Forward Event
    ▼
  Jenkins
    │
    ▼
 Jenkins Build
```

---

## Jenkins Configuration

Jenkins was configured to run on:

```text
http://localhost:8081
```

The GitHub webhook endpoint is:

```text
http://localhost:8081/github-webhook/
```

---

## Smee.io Configuration

Smee.io is used to forward GitHub webhook events to the local Jenkins server.

Example:

```bash
smee --url <SMEE_CHANNEL_URL> \
     --target http://localhost:8081/github-webhook/
```

---

## Webhook Testing

The webhook integration was tested using GitHub-style POST requests.

A successful webhook request returned:

```text
HTTP/1.1 200 OK
```

The integration was further verified through Jenkins build execution.

The repository's `main` branch is used for the project workflow.

---

# 🔄 CI/CD Workflow

The project demonstrates the following CI/CD workflow:

```text
             Git Push
                │
                ▼
          GitHub Repository
                │
             Webhook
                │
                ▼
            Smee.io
                │
        Forward Webhook
                │
                ▼
             Jenkins
                │
              Build
                │
                ▼
          Docker Workflow
                │
                ▼
          Application
```

This approach demonstrates how source-code changes can be connected to automated build and deployment workflows.

---

# 🔐 AWS Security Configuration

The EC2 security group is configured to allow required application and administration traffic.

| Port | Protocol | Purpose |
| ---: | -------- | ------- |
| `22` | TCP      | SSH     |
| `80` | TCP      | HTTP    |

For production deployments, SSH access should be restricted to trusted IP addresses rather than being publicly accessible.

---

# 🧪 Testing & Verification

The following components were tested during the project:

### Ansible

* Ansible playbook execution.
* Docker installation.
* Docker service configuration.
* Container deployment.

### Terraform

* Terraform initialization.
* Infrastructure planning.
* AWS resource provisioning.
* Terraform state management.

### Docker

* Docker image creation.
* Nginx container execution.
* Web application availability.

### Docker Compose

* Compose configuration validation.
* Nginx service.
* Watchtower service.

### Jenkins

* Jenkins server configuration.
* GitHub webhook endpoint.
* Webhook POST request.
* Jenkins build execution.

---

# 📊 Project Status

| Task       | Description                      | Status     |
| ---------- | -------------------------------- | ---------- |
| **Task 1** | Ansible Configuration Management | ✅ Complete |
| **Task 2** | Terraform AWS Infrastructure     | ✅ Complete |
| **Task 3** | Docker Compose Deployment        | ✅ Complete |
| **Task 4** | GitHub → Jenkins Webhook         | ✅ Complete |
| **Task 5** | Additional DevOps Automation     | ⏳ Pending  |
| **Task 6** | Additional DevOps Automation     | ⏳ Pending  |

---

# 🎯 Learning Objectives

This project provides practical experience with:

* Infrastructure as Code
* AWS EC2
* Terraform
* Ansible
* Linux administration
* Docker
* Docker Compose
* Nginx
* Git & GitHub
* GitHub Webhooks
* Jenkins
* CI/CD concepts
* Webhook forwarding
* DevOps automation

---

# 🚀 Future Improvements

The project can be extended with:

* Jenkins Pipeline using a `Jenkinsfile`
* Automated Docker image build
* Docker Hub integration
* Automated application deployment
* Terraform remote state
* CI/CD testing stages
* Application monitoring
* Improved secret management
* Additional infrastructure automation

---

# 👩‍💻 Author

**Anamika Saini**

DevOps / Cloud & Automation Project

---

## ⭐ Project Goal

The overall goal of this project is to demonstrate how different DevOps technologies can be integrated into a single workflow:

```text
       Terraform
           │
           ▼
         AWS
           │
           ▼
        Ansible
           │
           ▼
         Docker
           │
           ▼
   Docker Compose
           │
           ▼
        GitHub
           │
           ▼
       Smee.io
           │
           ▼
        Jenkins
           │
           ▼
     CI/CD Automation
```

This project demonstrates practical knowledge of **cloud infrastructure, configuration management, containerization, version control, webhook integration, and CI/CD automation**.
