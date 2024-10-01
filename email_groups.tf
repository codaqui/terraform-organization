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
