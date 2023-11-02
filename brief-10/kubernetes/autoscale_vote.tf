variable "autoscale_vote_manifest" {
  type = string
  default = <<OET

apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler
metadata:
  name: autoscalevote
  namespace : default
spec:
  maxReplicas: 8
  minReplicas: 1
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: voteapp
  targetCPUUtilizationPercentage: 70

  OET
}