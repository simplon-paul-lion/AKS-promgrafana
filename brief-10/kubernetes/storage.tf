variable "storage_manifest" {
  type = string
  default = <<EOT

apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: redisstor
provisioner: kubernetes.io/azure-disk
parameters:
  skuName: Standard_LRS
allowVolumeExpansion: true

  EOT
}