#manifest.mod.tf

module "kubernetes_manifests" {
  source = "./modules/kubernetes-manifests"

  kubeconfig_path = "~/.kube/config"
  namespace = "my-namespace"
  manifests = [
    "./manifests/deployment.yaml",
    "./manifests/service.yaml",
  ]
}