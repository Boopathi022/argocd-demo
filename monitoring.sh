#ADD HELM REPO
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

#INSTALL KUBE-PROMETHEUS-STACK

helm install monitoring prometheus-community/kube-prometheus-stack

#VERIFY PODS

kubectl get pods

#GET ADMIN PASSWORD

kubectl get secret monitoring-grafana \
  -o jsonpath="{.data.admin-password}" | base64 --decode

#PORT FORWARDING LINK : http://localhost:3000

kubectl port-forward svc/monitoring-grafana 3000:80

#Adding Prometheus in Grafana

#Steps inside Grafana UI:
#Go to Configuration → Data Sources → Add data source
#Select Prometheus
#Enter the URL (http://prometheus-server.monitoring.svc.cluster.local:9090)
#Click Save & Test → it should say Data source is working
#Now Grafana can read all metrics from Prometheus.
