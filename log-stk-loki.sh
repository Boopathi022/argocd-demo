#DAY 65 — LOGGING STACK (LOKI + PROMTAIL)
#ADD HELM REPO
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

#######################################
#                                     #
#     INSTALL LOKI + PROMTAIL         #
#                                     #
#helm install loki grafana/loki-stack #
#helm uninstall loki before reinstall #                  
#url:http://loki:3100                 #
#######################################

helm install loki grafana/loki \
  --set deploymentMode=SingleBinary \
  --set promtail.enabled=true \
  --set loki.auth_enabled=false \
  --set loki.useTestSchema=true \
  --set loki.storage.backend=filesystem \
  --set loki.storage.bucketNames.chunks=chunks \
  --set loki.storage.bucketNames.index=index \
  --set loki.storage.bucketNames.ruler=ruler \
  --set loki.ruler.enabled=false


#Get and check pods
kubectl get pods
echo ""
echo ""
echo "Do this once you done"
echo ""
echo "CONFIGURE GRAFANA TO USE LOKI"
echo "Open Grafana → Data Sources → Add → Loki"
echo "URL: http://loki-gateway.default.svc.cluster.local/"
echo "Save & Test → should succeed"
echo ""
echo "VIEW LOGS"
echo "Dashboards → Explore → Loki"
echo "Query logs:   {namespace="default"} "
