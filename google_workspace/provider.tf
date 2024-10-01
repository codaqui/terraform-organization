provider "googleworkspace" {
  credentials             = "ga_admin_sa.json"
  customer_id             = "C04jj6hib"
  impersonated_user_email = "enderson@codaqui.dev"
  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.domain",
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.userschema",
    # include scopes as needed
  ]
}

