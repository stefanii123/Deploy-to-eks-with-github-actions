#var.tf file

variable "kubeconfig_path" {
  description = "Path to Kubernetes config file"
}

variable "namespace" {
  description = "Namespace where the resources will be created"
}

variable "manifests" {
  description = "List of Kubernetes manifests to apply"
  type = list(string)
}