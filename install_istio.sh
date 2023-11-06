# download istio
curl -L https://istio.io/downloadIstio | sh -

# export to PATH
export PATH=$PWD/istio-1.19.3/bin:$PATH

# install istio
istioctl install --set profile=demo -y

# make injectable
kubectl label namespace default istio-injection=enabled
