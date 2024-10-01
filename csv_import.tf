data "external" "csv_data" {
  program = ["python3", "${path.module}/scripts/read_csv.py", var.csv_file_path]
}

resource "googleworkspace_user" "users" {
  for_each = { for user in data.external.csv_data.result : user["personal_email"] => user }

  primary_email = each.value["personal_email"]
  name {
    given_name  = each.value["first_name"]
    family_name = each.value["last_name"]
  }
  password = random_password.password.result
}

resource "null_resource" "send_password_email" {
  for_each = { for user in googleworkspace_user.users : user.primary_email => user }

  provisioner "local-exec" {
    command = <<EOT
      echo "Your Google Workspace account has been created. Your password is: ${googleworkspace_user.users[each.key].password}" | mail -s "Google Workspace Account Created" ${each.value["personal_email"]}
    EOT
  }
}
