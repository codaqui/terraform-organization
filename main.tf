provider "googleworkspace" {
  credentials = file("<path-to-service-account-key>.json")
  customer_id = "<customer-id>"
}

resource "googleworkspace_user" "users" {
  for_each = { for user in csvdecode(file(var.csv_file_path)) : user.personal_email => user }

  primary_email = each.value.personal_email
  name {
    given_name  = each.value.first_name
    family_name = each.value.last_name
  }
  password = random_password.password.result
}

resource "googleworkspace_group" "email_groups" {
  for_each = toset(var.email_groups)

  email = each.value
}

resource "googleworkspace_group_member" "group_members" {
  for_each = { for user in googleworkspace_user.users : user.primary_email => user }

  group_email = var.email_groups[0] // Example: associating with the first group
  email       = each.value.primary_email
  role        = "MEMBER"
}

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
