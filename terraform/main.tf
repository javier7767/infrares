provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "mi_api" {
  metadata {
    name = "mi-api-terraform"
    labels = {
      app = "mi-api"
    }
  }

  spec {
    replicas = 3
    selector {
      match_labels = {
        app = "mi-api"
      }
    }
    template {
      metadata {
        labels = {
          app = "mi-api"
        }
      }
      spec {
        container {
          image = "javidocky/mi-api:latest"
          name  = "mi-api"
          port {
            container_port = 3000
          }
        }
      }
    }
  }
}
