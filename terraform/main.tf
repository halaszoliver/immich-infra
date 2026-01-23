
resource "kubernetes_namespace_v1" "photo-server" {
  metadata {
    name   = "photo-server"
    labels = { app : "photo-server" }
  }
}

resource "kubernetes_secret_v1" "photo-server-secrets" {
  metadata {
    name      = "secrets"
    namespace = "photo-server"
    labels    = { app : "photo-server" }
  }

  data = {
    postgres_username = var.postgres_user
    postgres_password = var.postgres_password
    redis_password    = var.redis_password

  }
}
