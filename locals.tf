locals {
  domains = [
    {
      domain_name = "codaqui.dev"
      is_alias    = false
      parent      = null
    },
    {
      domain_name = "alunos.codaqui.dev"
      is_alias    = false
      parent      = null
    },
    {
      domain_name = "devpr.org"
      is_alias    = true
      parent      = "codaqui.dev"
    }
  ]

  users = [
    {
      first_name     = "usuario"
      last_name      = "teste"
      primary_email  = "teste@codaqui.dev"
      personal_email = "mail@enderson.dev"
      external_ids   = "CODAQUI-001"
    }
  ]
}
