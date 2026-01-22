
resource "kubernetes_namespace" "photo-server" {
  metadata {
    name = "photo-server"
  }
}
