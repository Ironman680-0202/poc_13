variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "poc-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version"
  default     = "1.35"
}

variable "instance_type" {
  description = "Worker node instance type"
  default     = "c7i-flex.large"
}