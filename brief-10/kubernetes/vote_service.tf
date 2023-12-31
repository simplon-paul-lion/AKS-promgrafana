variable "vote_service_manifest" {
  type = string
  default = <<OET

apiVersion: v1
kind: Service
metadata:
  name: clustvoteapp
  namespace : default
spec:
  type: ClusterIP
  ports:
  - port: 80
  selector:
    app: voteapplb

  OET
}