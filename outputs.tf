output "created_user_emails" {
  value = [for user in googleworkspace_user.users : user.primary_email]
}
