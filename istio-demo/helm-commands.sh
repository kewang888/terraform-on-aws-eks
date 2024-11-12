helm template istio-ingressgateway istio/gateway -n istio-ingress

helm show values istio/gateway


kubectl create namespace istio-system

helm install istio-base istio/base -n istio-system --set defaultRevision=default
helm ls -n istio-system

helm install istiod istio/istiod -n istio-system --wait
helm ls -n istio-system

helm status istiod -n istio-system

kubectl get deployments -n istio-system --output wide

kubectl create namespace istio-ingress
helm install istio-ingressgateway istio/gateway --values istio-nlb-values.yaml -n istio-ingress

helm delete istio-ingressgateway -n istio-ingress
kubectl delete namespace istio-ingress
