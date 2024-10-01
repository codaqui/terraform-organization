output "created_user_emails_and_passwords" {
  value = [for user in googleworkspace_user.users : {
    primary_email = user.primary_email
    password      = user.password
  }]
  sensitive = true
}

