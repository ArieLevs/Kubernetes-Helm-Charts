
vault {
  renew_token = false
  vault_agent_token_file = "/home/vault/.vault-token"
  retry {
    backoff = "1s"
  }
}

template {
  destination = "/etc/secrets/secrets"
  contents =
<<EOH
    {{- with secret "secret/nalkinscloud/backend/database" }}
db_user={{ .Data.username }}
db_pass={{ .Data.password }}
    {{ end }}
    {{- with secret "secret/nalkinscloud/backend/django" }}
django_secret={{ .Data.django_secret }}
    {{ end }}
EOH
//  command     = "/bin/sh -c \"kill -HUP $(pidof nalkinscloud-api) || true\""
}
