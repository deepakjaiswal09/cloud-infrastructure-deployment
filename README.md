# 🌩️ Cloud Infrastructure Deployment on AWS using Terraform

This project showcases a complete AWS infrastructure deployment using Terraform as Infrastructure as Code (IaC). It leverages a modular architecture and deploys a production-grade environment with high availability, scalability, and fault tolerance.

---

## 📁 Project Structure

```
cloud-infrastructure-deployment/
├── modules/
│   ├── alb/
│   ├── asg/
│   ├── cloudfront/
│   ├── key/
│   ├── nat/
│   ├── rds/
│   ├── route53/
│   ├── security-group/
│   └── vpc/
├── backend.tf
├── main.tf
├── provider.tf
├── variables.tf
└── .terraform.lock.hcl
```

Each folder under `modules/` represents an independent, reusable Terraform module.

---

## 🚀 Features

- ✅ Modular Terraform Architecture
- 🌐 Custom VPC with Public/Private Subnets
- ⚖️ Application Load Balancer (ALB)
- 🔄 Auto Scaling Group (ASG)
- 🛢️ Amazon RDS (MySQL/PostgreSQL)
- 🌍 CloudFront Distribution
- 🔐 Key Pair & Security Group Configuration
- 🛰️ Route53 DNS Zone Management
- 🌐 NAT Gateway for secure outbound traffic
- 🔄 Remote Backend (e.g., S3) for State Management

---

## 🛠️ Prerequisites

Ensure the following are installed and configured:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.3+ recommended)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- AWS IAM User with appropriate access
- AWS credentials configured via `aws configure`

---

## ⚙️ Setup & Usage

### 1. Clone the Repository

```bash
git clone https://github.com/deepakjaiswal09/cloud-infrastructure-deployment.git
cd cloud-infrastructure-deployment
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate & Format Code

```bash
terraform fmt
terraform validate
```

### 4. Preview Infrastructure

```bash
terraform plan
```

### 5. Deploy Infrastructure

```bash
terraform apply
```

---

## 📦 Modules Overview

| Module          | Description                                      |
|------------------|--------------------------------------------------|
| `vpc`            | Creates a VPC, public/private subnets, and route tables |
| `alb`            | Configures Application Load Balancer with listeners |
| `asg`            | Auto Scaling Group for EC2 instances             |
| `cloudfront`     | Deploys CloudFront CDN for content distribution |
| `key`            | Manages EC2 SSH Key Pairs                        |
| `nat`            | NAT Gateway for internet access in private subnets |
| `rds`            | Provisions RDS DB Instance                       |
| `route53`        | Sets up DNS records for hosted zones            |
| `security-group` | Manages firewall rules (SGs) per component       |

---

## 🔐 Backend & State Management

Terraform remote state can be configured using **S3 backend** (in `backend.tf`). Update the S3 bucket and DynamoDB table as per your setup.

---

## 📄 Outputs

Upon successful deployment, Terraform will output:

- ✅ ALB DNS Name
- ✅ RDS Endpoint
- ✅ CloudFront URL
- ✅ VPC and Subnet IDs

---

## 🌐 Architecture Overview

**Components:**
- VPC spans across 2 Availability Zones
- Public subnets host ALB and NAT Gateway
- Private subnets host EC2 Auto Scaling Group and RDS
- CloudFront sits in front of ALB for global distribution
- Route53 manages the DNS routing
- Security groups strictly define access per layer

> 📌 *Diagram pending: You can visualize this using [draw.io](https://draw.io) or Mermaid.js if needed.*

---

## 🧰 AWS Services Used

- Amazon VPC
- Subnets (Public/Private)
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- EC2 (Auto Scaling Group)
- Application Load Balancer (ALB)
- Amazon RDS (MySQL/PostgreSQL)
- Amazon CloudFront
- Amazon Route 53
- AWS Key Pair
- AWS IAM (for credentials)
- Amazon S3 (for backend state)

---

## 🙏 Acknowledgements

This project is heavily inspired by the excellent YouTube tutorial:

**[Deploy A 2‑tier Application On AWS Using Terraform](https://youtu.be/s8q5B6DLH7s)**  
by *Tech Tutorials with Piyush*

> The tutorial provided a strong foundation for understanding modular Terraform design, AWS infrastructure layering, and backend configuration. The implementation in this repo includes additional structure, naming conventions, and modular enhancements.

---

## 📌 Best Practices Followed

- 🔄 Remote backend setup for state management
- 📁 Reusable Terraform modules
- ⚠️ Secure handling of access via security groups
- 🚀 Environment-agnostic design using variables
- 💡 Easily extendable for multi-environment (dev/staging/prod) setup

---

## 🤝 Contribution

Feel free to fork the repo, open issues, or submit pull requests. Contributions and improvements are always welcome!

---

## 👨‍💻 Author

**Deepak Jaiswal**  
🔗 [GitHub](https://github.com/deepakjaiswal09) | 💼 [LinkedIn](https://linkedin.com/in/deepakjaiswal09)

---

## 🧾 License

This project is open-sourced under the [MIT License](LICENSE).
