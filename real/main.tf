# terraform {
#   required_version = "1.10.5"
#   required_providers {
#     helm = {
#       source  = "hashicorp/helm"
#       version = "3.0.0-pre1"
#     }
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = "2.35.1"
#     }
#   }
# }

# provider "kubernetes" {
#   config_path    = "~/.kube/config"
#   config_context = "minikube"
# }

# provider "helm" {
#   kubernetes = {
#     config_path    = "~/.kube/config"
#     config_context = "minikube"
#   }
# }

# resource "helm_release" "argocd" {
#   name             = "argocd"
#   repository       = "https://argoproj.github.io/argo-helm"
#   chart            = "argo-cd"
#   namespace        = "argocd"
#   version          = "7.8.2"
#   create_namespace = true
# }

