
resource "kubernetes_namespace_v1" "photo-server" {
  metadata {
    name   = "photo-server"
    labels = { app : "photo-server" }
  }
}

resource "kubernetes_secret_v1" "photo-server-secrets" {
  metadata {
    name      = "photo-server-secrets"
    namespace = "photo-server"
    labels    = { app : "photo-server" }
  }

  data = {
    POSTGRES_USER     = var.postgres_user
    POSTGRES_PASSWORD = var.postgres_password
  }
}
