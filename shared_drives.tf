resource "googleworkspace_drive" "shared_drives" {
  for_each = toset(var.shared_drives)

  name = each.value
}

resource "googleworkspace_drive_permission" "drive_permissions" {
  for_each = { for user in googleworkspace_user.users : user.primary_email => user }

  drive_id = googleworkspace_drive.shared_drives[0].id // Example: associating with the first shared drive
  email    = each.value.primary_email
  role     = "writer"
}
