variable "secrets_manifest" {
  type = string
  default = <<OET

apiVersion: v1
kind: Secret
metadata:
  name: redispw
  namespace: default
type: Opaque
data:
  password: cGFzc3dvcmQ=

  OET
}