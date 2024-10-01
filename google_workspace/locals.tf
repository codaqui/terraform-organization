locals {
  ## Domain
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
      is_alias    = false
      parent      = null
    }
  ]

  ## Users
  users = [
    // Service Accounts (codaqui.dev)
    {
      first_name     = "Codaqui"
      last_name      = "Mentoria"
      primary_email  = "mentoria@codaqui.dev"
      personal_email = "enderson@codaqui.dev"
      personal_phone = "+5544999983572"
      external_ids   = "CODAQUI-SA-001"
      is_admin       = false
    },
    {
      first_name     = "Não Responder"
      last_name      = "Codaqui"
      primary_email  = "noreply@codaqui.dev"
      personal_email = "enderson@codaqui.dev"
      personal_phone = "+5544999983572"
      external_ids   = "CODAQUI-SA-002"
      is_admin       = false
    },

    // Codaqui Users Accounts (codaqui.dev)
    {
      first_name     = "Enderson"
      last_name      = "Menezes"
      primary_email  = "enderson@codaqui.dev"
      personal_email = "endersonster@gmail.com"
      personal_phone = "+5544999983572"
      external_ids   = "CODAQUI-001"
      is_admin       = true
    },
    {
      first_name     = "Diana"
      last_name      = "Carvalho"
      primary_email  = "diana.carvalho@codaqui.dev"
      personal_email = "dianavcarvalho@gmail.com"
      personal_phone = "+5521982665474"
      external_ids   = "CODAQUI-002"
      is_admin       = false
    },
    {
      first_name     = "Adonias"
      last_name      = "Vitorio"
      primary_email  = "adonias@codaqui.dev"
      personal_email = "adonias.vitorio@gmail.com"
      personal_phone = "+5544998096611"
      external_ids   = "CODAQUI-003"
      is_admin       = false
    },
    {
      first_name     = "Ana"
      last_name      = "Carolayne"
      primary_email  = "ana@codaqui.dev"
      personal_email = "ana@codaqui.dev"
      personal_phone = null
      external_ids   = "CODAQUI-004"
      is_admin       = false
    },
    {
      first_name     = "Ana"
      last_name      = "Luisa Kubitz"
      primary_email  = "ana.luisa@codaqui.dev"
      personal_email = "ana.kubitz@hotmail.com"
      personal_phone = "+5544988506649"
      external_ids   = "CODAQUI-005"
      is_admin       = false
    },
    {
      first_name     = "Elina"
      last_name      = "Torres"
      primary_email  = "elina@codaqui.dev"
      personal_email = "elinatorresn@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-007"
      is_admin       = false
    },
    {
      first_name     = "Estevan"
      last_name      = "Bartmann"
      primary_email  = "estevan@codaqui.dev"
      personal_email = "estevanbartmann@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-008"
      is_admin       = false
    },
    {
      first_name     = "Geovane"
      last_name      = "Norbert"
      primary_email  = "geovane@codaqui.dev"
      personal_email = "geovane.norbert@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-009"
      is_admin       = false
    },
    {
      first_name     = "Guilherme"
      last_name      = "Siquinelli"
      primary_email  = "guilherme@codaqui.dev"
      personal_email = "email@guiseek.dev"
      personal_phone = null
      external_ids   = "CODAQUI-010"
      is_admin       = true
    },
    {
      first_name     = "Gustavo Vinicius"
      last_name      = "Hamerschimidt"
      primary_email  = "ghamerschimidt@codaqui.dev"
      personal_email = "g.hamerschimidt@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-011"
      is_admin       = false
    },
    {
      first_name     = "Hallison"
      last_name      = "Brancalhao"
      primary_email  = "hallison@codaqui.dev"
      personal_email = "hallison@brancalhao.com.br"
      personal_phone = null
      external_ids   = "CODAQUI-012"
      is_admin       = false
    },
    {
      first_name     = "Henrique"
      last_name      = "Laureano"
      primary_email  = "henrique@codaqui.dev"
      personal_email = "hlaureanods@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-013"
      is_admin       = false
    },
    {
      first_name     = "Ivo"
      last_name      = "Batistela"
      primary_email  = "ivo@codaqui.dev"
      personal_email = "irbatistela@gmail.com"
      personal_phone = "+5546999362033"
      external_ids   = "CODAQUI-014"
      is_admin       = true
    },
    {
      first_name     = "Joao"
      last_name      = "Bloch"
      primary_email  = "joao@codaqui.dev"
      personal_email = "joaobzauza@hotmail.com"
      personal_phone = "+5544920017449"
      external_ids   = "CODAQUI-015"
      is_admin       = false
    },
    {
      first_name     = "Matheus"
      last_name      = "Luis"
      primary_email  = "matheus@codaqui.dev"
      personal_email = "matheus.luis.developer@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-016"
      is_admin       = false
    },
    {
      first_name     = "Renan"
      last_name      = "Ceratto"
      primary_email  = "renan@codaqui.dev"
      personal_email = "renanceratto@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-017"
      is_admin       = false
    },
    {
      first_name     = "Thainara"
      last_name      = "Furforo"
      primary_email  = "thainara@codaqui.dev"
      personal_email = "thaifurforo@gmail.com"
      personal_phone = null
      external_ids   = "CODAQUI-018"
      is_admin       = false
    },
    // DevParaná Users Accounts (devpr.org)
    {
      first_name     = "Guilherme"
      last_name      = "Siquinelli"
      primary_email  = "guilherme@devpr.org"
      personal_email = "email@guiseek.dev"
      personal_phone = null
      external_ids   = "DEVPR-001"
      is_admin       = false
    }

    // Alunos Codaqui Accounts (alunos.codaqui.dev)
  ]
}
