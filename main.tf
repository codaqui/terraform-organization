## Resources 

## Utils
resource "random_password" "password" {
  for_each = { for user in csvdecode(file(var.users_csv_file_path)) : user.personal_email => user }
  length   = 16
  special  = true
  override_special = "_%@"
}

## Domain

resource "googleworkspace_domain" "domains" {
  for_each = { for domain in csvdecode(file(var.domains_csv_file_path)) : domain.domain_name => domain if domain.is_alias == "false" }
  domain_name = each.value.domain_name
}

resource "googleworkspace_domain_alias" "domain_aliases" {
  for_each = { for domain in csvdecode(file(var.domains_csv_file_path)) : domain.domain_name => domain if domain.is_alias == "true" }
  parent_domain_name = each.value.parent
  domain_alias_name  = each.value.domain_name
}

## Users

# resource "googleworkspace_user" "users" {
#   for_each = { for user in csvdecode(file(var.users_csv_file_path)) : user.personal_email => user }

#   primary_email = each.value.personal_email
#   password = random_password.password[each.key].result
#   name {
#     given_name  = each.value.first_name
#     family_name = each.value.last_name
#   }
#   change_password_at_next_login = true
# }
