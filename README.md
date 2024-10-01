# Terraform Organization

## Google Workspace Admin Management

This repository contains Terraform code to manage Google Workspace Admin, create accounts from a CSV file, associate them with email groups, and manage shared drives.

### Prerequisites

- Terraform installed on your machine
- Google Service Account Configured
   - Google Workspace Admin API
   - Necessary permissions

### Usage

#### Importing a Domain

```bash
terraform import 'googleworkspace_domain.domains["alunos.codaqui.dev"]' alunos.codaqui.dev
```
