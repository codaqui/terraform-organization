variable "csv_file_path" {
  description = "Path to the CSV file containing user data"
  type        = string
}

variable "email_groups" {
  description = "List of email groups to associate with user accounts"
  type        = list(string)
}

variable "shared_drives" {
  description = "List of shared drives to manage"
  type        = list(string)
}

variable "personal_email" {
  description = "Personal email address to send user passwords"
  type        = string
}
