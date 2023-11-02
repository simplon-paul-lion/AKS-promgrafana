
variable "vote_manifest" {
      type = string
      default = <<EOT
apiVersion: apps/v1
kind: Deployment
metadata:
  name: vote
  namespace: default
  labels:
    app: vote
spec:
  replicas: 2
  selector:
    matchLabels:
      app: vote
  template:
    metadata:
      labels:
        app: vote
    spec:
      containers:
      - name: vote
        image: mcr.microsoft.com/azuredocs/azure-vote-front:v1
        resources:
          requests:
            cpu: 250m
            memory: 100Mi
          limits:
            cpu: 500m
            memory: 500Mi
        env:
          - name: STRESS_SECS
            value: "2"
          - name: REDIS
            value: "redis"
          - name: REDIS_PWD
            valueFrom:
              secretKeyRef:
                name: redispw
                key: password
        ports:
          - containerPort: 80

          EOT
}