# use curl access ngx-istio proxy service
curl -w "@curl-format.txt" -i http://ngx-istio:8080/

# check pod proxy routes
istioctl pc route student-545cff6886-4t955.istio-dev -o yaml --name 8080 > proxy-route-status.yaml

