# build docker image
docker build -t ghcr.io/iotmaulana/order_service:latest .

# login to GitHub Packages
# CR_PAT is GitHub access token(classic)
# please run `export CR_PAT=YOUR_TOKEN`
echo $CR_PAT | docker login ghcr.io -u iotmaulana --password-stdin

# push image to GitHub Packages
docker push ghcr.io/iotmaulana/order_service:latest
