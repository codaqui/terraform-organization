# Terraform Organization

## Google Workspace Admin Management

This repository contains Terraform code to manage Google Workspace Admin, create accounts from a CSV file, associate them with email groups, and manage shared drives.

### Prerequisites

- Terraform installed on your machine
- Google Cloud SDK installed and configured
- Google Workspace Admin API enabled
- Service account with necessary permissions

### Usage

1. Clone the repository:

   ```sh
   git clone https://github.com/codaqui/terraform-organization.git
   cd terraform-organization
   ```

2. Initialize Terraform:

   ```sh
   terraform init
   ```

3. Create a `terraform.tfvars` file and provide the necessary input variables:

   ```hcl
   csv_file_path = "path/to/your/csvfile.csv"
   email_groups  = ["group1@example.com", "group2@example.com"]
   shared_drives = ["Shared Drive 1", "Shared Drive 2"]
   ```

4. Apply the Terraform configuration:

   ```sh
   terraform apply
   ```

### Creating Accounts from a CSV File

The Terraform code reads and parses the CSV file specified in the `csv_file_path` variable. The CSV file should contain the following columns: `first_name`, `last_name`, and `personal_email`. The code will create user accounts in Google Workspace Admin based on the parsed CSV data.

### Associating Accounts with Email Groups

The Terraform code associates the created user accounts with the email groups specified in the `email_groups` variable. Ensure that the email groups already exist in your Google Workspace Admin.

### Managing Shared Drives

The Terraform code manages the shared drives specified in the `shared_drives` variable. It will create and configure the shared drives and associate the created user accounts with the shared drives.

### Ensuring User Passwords are Sent Only to Personal Email

The Terraform code ensures that user passwords are sent only to their personal email addresses specified in the CSV file. This is done by using the `personal_email` field from the CSV file to send the password to the user's personal email address.
