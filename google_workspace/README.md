# Terraform Organization

## Google Workspace Admin Management

This repository contains Terraform code to manage Google Workspace Admin, create accounts from local variables, associate them with email groups, and manage shared drives.

### Prerequisites

- Terraform installed on your machine
- Google Service Account Configured
   - Google Workspace Admin API
   - Necessary permissions

### Usage

#### Terraform Basics

```bash
# Initialize the Terraform project
terraform init -upgrade

# Plan the changes
terraform plan

# Apply the changes
terraform apply
```

#### Importing a Domain

```bash
terraform import 'googleworkspace_domain.domains["alunos.codaqui.dev"]' alunos.codaqui.dev
```

#### Importing a User
   
```bash
terraform import 'googleworkspace_user.users["enderson@codaqui.dev"]' enderson@codaqui.dev
```