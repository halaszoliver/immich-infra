
resource "kubernetes_namespace" "photo-server" {
  metadata {
    name   = "photo-server"
    labels = { app : "photo-server" }
  }
}

resource "kubernetes_secret" "photo-server-secrets" {
  metadata {
    name      = "secrets"
    namespace = kubernetes_namespace.photo-server
    labels    = { app : "photo-server" }
  }

  data = {
    postgres_username = var.postgres_user
    postgres_password = var.postgres_password
    redis_password    = var.redis_password

  }
}
