variable "secrets2_manifest" {
  type = string
  default = <<OET


apiVersion: v1
kind: Secret
metadata:
  name: authsecret
  namespace: default
data:
  users: dXNlcjokYXByMSQ2emM5Q0xvcSQ3bFp1RllHZVRzVWtTL2tvbEY2ZGkuCgo=

  OET
}