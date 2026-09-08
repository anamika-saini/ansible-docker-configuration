Haan yrr ❤️ **ab samajh gaya** — tum apni **existing README ko hi preserve** karna chahti ho, bas usko professional banana hai aur **Task 5 ka actual completed work add** karna hai.

Main tumhari same structure/content ko edit karke de raha hoon. **Task 1–4 ko unnecessary change nahi kiya**, sirf formatting, badges/logos, professional wording aur Task 5 ko properly add kiya hai.

**Is poore code block ko copy karke `README.md` replace kar do:**

````markdown
# 🚀 Ansible-Docker Configuration & CI/CD Automation

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="70" alt="Docker"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ansible/ansible-original.svg" width="70" alt="Ansible"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original.svg" width="70" alt="Terraform"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jenkins/jenkins-original.svg" width="70" alt="Jenkins"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" width="90" alt="AWS"/>
</p>

<p align="center">
  <strong>End-to-End DevOps Automation Project</strong>
</p>

<p align="center">
  Infrastructure as Code • Configuration Management • Containerization • CI/CD • AWS Deployment
</p>

<p align="center">

![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-Automation-EE0000?style=for-the-badge&logo=ansible&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?style=for-the-badge&logo=jenkins&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-181717?style=for-the-badge&logo=github&logoColor=white)

</p>

---

## 📌 Project Overview

This project demonstrates an end-to-end DevOps workflow covering **Infrastructure as Code, configuration management, containerization, multi-container deployment, CI/CD integration, and cloud application deployment**.

Cloud infrastructure is provisioned using **Terraform**, server configuration is automated using **Ansible**, applications are containerized using **Docker**, multiple services are managed using **Docker Compose**, and GitHub changes are integrated with **Jenkins through webhooks**.

The final application is deployed on an **AWS EC2 ARM64 instance** using an ARM64-compatible Docker image hosted on Docker Hub.

---

## 🎯 Project Objectives

- ☁️ Provision AWS infrastructure using Terraform
- ⚙️ Automate server configuration using Ansible
- 🐳 Containerize applications using Docker
- 📦 Manage Docker images using Docker Hub
- 🔄 Deploy multiple services using Docker Compose
- 🔗 Integrate GitHub Webhooks with Jenkins
- 🤖 Implement CI/CD automation
- 🔐 Configure SSH and AWS Security Groups
- 🏗️ Build ARM64-compatible Docker images
- 🚀 Deploy the application to AWS EC2
- 🌐 Expose the application through HTTP port `80`
- 🧪 Verify application availability using HTTP requests

---

# 🏗️ Main Workflow

```text
                         👩‍💻 Developer
                              │
                              │ Git Push
                              ▼
                       ┌──────────────┐
                       │    GitHub    │
                       │  Repository  │
                       └──────┬───────┘
                              │
                              │ Webhook
                              ▼
                       ┌──────────────┐
                       │   Smee.io    │
                       │    Proxy     │
                       └──────┬───────┘
                              │
                              ▼
                       ┌──────────────┐
                       │   Jenkins    │
                       │    CI/CD     │
                       └──────┬───────┘
                              │
                              ▼
                       ┌──────────────┐
                       │    Docker    │
                       │ Application  │
                       └──────┬───────┘
                              │
                              ▼
                       ┌──────────────┐
                       │   AWS EC2    │
                       │    ARM64     │
                       └──────┬───────┘
                              │
                              ▼
                         🌐 Web App
````

---

# 🛠️ Technologies Used

| Technology            | Purpose                      |
| --------------------- | ---------------------------- |
| ☁️ **AWS EC2**        | Cloud infrastructure         |
| 🏗️ **Terraform**     | Infrastructure as Code       |
| ⚙️ **Ansible**        | Configuration management     |
| 🐳 **Docker**         | Application containerization |
| 🔄 **Docker Compose** | Multi-container management   |
| 🌐 **Nginx**          | Web server                   |
| 🔄 **Watchtower**     | Container update monitoring  |
| 🌳 **Git**            | Version control              |
| 🐙 **GitHub**         | Source code management       |
| 🤖 **Jenkins**        | CI/CD automation             |
| 🔗 **Smee.io**        | Webhook forwarding           |
| 🐧 **Ubuntu Linux**   | Server environment           |
| 🏗️ **Docker Buildx** | ARM64 image build            |

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

The Ansible configuration performs the following tasks:

* 🔗 Connects to the target server
* 📦 Installs Docker
* ▶️ Starts and enables the Docker service
* 🐳 Pulls the required Docker image
* 🚀 Runs the application container
* ⚙️ Configures the application deployment

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

**Status: ✅ Completed**

---

# ☁️ Task 2 — Terraform AWS Infrastructure

Terraform is used to provision AWS infrastructure using the **Infrastructure as Code (IaC)** approach.

## Infrastructure Components

The Terraform configuration includes:

* ☁️ AWS provider configuration
* 🖥️ EC2 instance provisioning
* 🔐 Security Group configuration
* 🔑 SSH access through port `22`
* 🌐 HTTP access through port `80`
* 📄 Terraform state management

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

AWS infrastructure was successfully provisioned and managed using Terraform configuration files.

**Status: ✅ Completed**

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

#### 🌐 Nginx

Nginx serves the static web application.

```text
Host Port:      8080
Container Port: 80
```

#### 🔄 Watchtower

Watchtower monitors Docker containers and supports automated container image updates.

### Architecture

```text
              Docker Compose
                    │
          ┌─────────┴─────────┐
          │                   │
          ▼                   ▼
        Nginx             Watchtower
          │                   │
          ▼                   ▼
   Static Website      Container Monitoring
```

### Result

The Docker Compose configuration was validated and the required containers were successfully deployed.

**Status: ✅ Completed**

---

# 🔗 Task 4 — GitHub → Jenkins Webhook Integration

This task implements automated communication between GitHub and Jenkins using webhooks.

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

The repository `main` branch is used for the project workflow.

**Status: ✅ Completed**

---

# 🚀 Task 5 — Docker Deployment on AWS EC2

The Dockerized web application was successfully deployed to an **AWS EC2 ARM64 instance**.

## Deployment Environment

```text
Cloud Provider   : AWS
Service          : EC2
Operating System : Ubuntu
Architecture     : ARM64 / aarch64
Instance Type    : t4g.micro
Application      : Nginx
Host Port        : 80
Container Port   : 80
```

---

## 🏗️ ARM64 Architecture Issue

During deployment, the original Docker image was built for:

```text
linux/amd64
```

However, the AWS EC2 `t4g.micro` instance uses:

```text
linux/arm64
```

Because of this architecture mismatch, the container initially failed with:

```text
exec /docker-entrypoint.sh: exec format error
```

### 🔧 Resolution

An ARM64-compatible image was built using Docker Buildx:

```bash
docker buildx build \
  --platform linux/arm64 \
  -t sainianamika/ansible-docker-app:arm64 \
  --push \
  ./app
```

The image was successfully pushed to Docker Hub.

---

## 📦 Pull Docker Image on EC2

```bash
docker pull sainianamika/ansible-docker-app:arm64
```

---

## 🚀 Run Docker Container

```bash
docker run -d \
  --name ansible-docker-app \
  -p 80:80 \
  sainianamika/ansible-docker-app:arm64
```

---

## 🔍 Verify Container

```bash
docker ps
```

The container was successfully running with:

```text
0.0.0.0:80->80/tcp
```

---

## 🧪 Application Verification

The application was verified locally on the EC2 instance:

```bash
curl http://localhost
```

The application was also verified externally using the EC2 public IP:

```bash
curl http://<EC2-PUBLIC-IP>
```

The expected HTML response was successfully returned.

This confirmed:

* ✅ Docker container is running
* ✅ Port 80 is correctly mapped
* ✅ AWS Security Group allows HTTP traffic
* ✅ Nginx is serving the application
* ✅ Application is publicly accessible

**Status: ✅ Completed**

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
             Docker Hub
                   │
                   ▼
               AWS EC2
                   │
                   ▼
             Application
```

This workflow demonstrates how source-code changes can be connected to automated build and deployment processes.

---

# 🔐 AWS Security Configuration

The EC2 Security Group is configured to allow the required application and administration traffic.

| Port | Protocol | Purpose |
| ---: | -------- | ------- |
| `22` | TCP      | SSH     |
| `80` | TCP      | HTTP    |

> 🔒 For production deployments, SSH access should be restricted to trusted IP addresses rather than being publicly accessible.

---

# 🧪 Testing & Verification

The following components were tested during the project.

### ⚙️ Ansible

* Ansible playbook execution
* Docker installation
* Docker service configuration
* Container deployment

### ☁️ Terraform

* Terraform initialization
* Infrastructure planning
* AWS resource provisioning
* Terraform state management

### 🐳 Docker

* Docker image creation
* Docker container execution
* Nginx web server
* Application availability
* ARM64 image compatibility

### 🔄 Docker Compose

* Compose configuration validation
* Nginx service
* Watchtower service

### 🤖 Jenkins

* Jenkins server configuration
* GitHub webhook endpoint
* Webhook POST request
* Jenkins build execution

### 🚀 AWS EC2 Deployment

* SSH connectivity
* Docker service verification
* Docker Hub image pull
* Container deployment
* Port 80 accessibility
* Public IP application verification

---

# 📊 Project Status

| Task       | Description                          | Status     |
| ---------- | ------------------------------------ | ---------- |
| **Task 1** | Ansible Configuration Management     | ✅ Complete |
| **Task 2** | Terraform AWS Infrastructure         | ✅ Complete |
| **Task 3** | Docker Compose Deployment            | ✅ Complete |
| **Task 4** | GitHub → Jenkins Webhook Integration | ✅ Complete |
| **Task 5** | Docker Deployment on AWS EC2         | ✅ Complete |
| **Task 6** | Additional DevOps Automation         | ⏳ Pending  |

---

# 🎯 Learning Objectives

This project provides practical hands-on experience with:

* Infrastructure as Code
* AWS EC2
* Terraform
* Ansible
* Linux administration
* Docker
* Docker Compose
* Docker Buildx
* Docker Hub
* Nginx
* Git & GitHub
* GitHub Webhooks
* Jenkins
* CI/CD concepts
* Smee.io webhook forwarding
* ARM64 container deployment
* Cloud application deployment
* DevOps automation
* Troubleshooting and debugging

---

# 🧠 Key Troubleshooting Experience

One of the major deployment challenges was a **Docker architecture mismatch**.

### Problem

The EC2 instance used the ARM64 architecture, while the original Docker image was built for AMD64.

This resulted in:

```text
exec /docker-entrypoint.sh: exec format error
```

### Root Cause

```text
Docker Image  → linux/amd64
EC2 Instance  → linux/arm64
```

### Solution

A platform-specific Docker image was built using Docker Buildx:

```bash
docker buildx build \
  --platform linux/arm64 \
  -t sainianamika/ansible-docker-app:arm64 \
  --push \
  ./app
```

The ARM64 image was then successfully pulled and deployed on the EC2 instance.

---

# 🚀 Future Improvements

The project can be extended with:

* 🔄 Jenkins Pipeline using a `Jenkinsfile`
* 🧪 Automated application testing
* 🐳 Automated Docker image builds
* 📦 Automated Docker Hub publishing
* 🚀 Automated application deployment
* 🏗️ Terraform remote state management
* 🔐 Improved secret management
* 🔒 HTTPS / SSL configuration
* 📊 Application monitoring and centralized logging
* 🔔 CI/CD deployment notifications
* 🔵 Blue-green deployment
* ♻️ Rolling deployment

---

# 👩‍💻 Author

## Anamika Saini

**Aspiring DevOps / Cloud Engineer**

<p align="left">
  <a href="https://github.com/anamika-saini">
    <img src="https://img.shields.io/badge/GitHub-anamika--saini-181717?style=for-the-badge&logo=github" alt="GitHub"/>
  </a>
  <a href="https://www.linkedin.com/in/anamika2225">
    <img src="https://img.shields.io/badge/LinkedIn-Anamika%20Saini-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/>
  </a>
</p>

---

# ⭐ Project Goal

The overall goal of this project is to demonstrate how multiple DevOps technologies can be integrated into a practical end-to-end workflow.

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
           │
           ▼
      AWS EC2
           │
           ▼
    Docker Application
```

This project demonstrates practical knowledge of **cloud infrastructure, Infrastructure as Code, configuration management, containerization, version control, webhook integration, CI/CD automation, ARM64 deployment, and cloud application deployment**.

---

<p align="center">
  ⭐ <strong>If you find this project useful, consider giving it a star!</strong>
</p>

<p align="center">
  Built with ❤️ using DevOps technologies
</p>
```

