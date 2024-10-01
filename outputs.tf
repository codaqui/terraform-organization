output "created_user_accounts" {
  value = googleworkspace_user.users
}

output "email_groups" {
  value = googleworkspace_group.email_groups
}

output "shared_drives" {
  value = googleworkspace_drive.shared_drives
}
