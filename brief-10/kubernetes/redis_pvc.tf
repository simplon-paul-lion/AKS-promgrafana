variable "redis_pvc_manifest" {
  type = string
  default = <<EOT

apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: redisclaim
  namespace: default
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
  storageClassName: redisstor

  EOT
}