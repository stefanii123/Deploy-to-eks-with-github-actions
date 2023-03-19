#main.tf file


provider "kubernetes" {
  config_path = var.kubeconfig_path
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_manifest" "manifests" {
  for_each = toset(var.manifests)

  manifest = file(each.value)

  depends_on = [
    kubernetes_namespace.namespace,
  ]
}