# make docker image
docker build -t karsajobs-ui:v1 .

# show local docker images
docker images

# format to GitHub Packages image
docker tag karsajobs-ui:v1 ghcr.io/iotmaulana/karsajobs-ui:latest

# login to GitHub Packages
# CR_PAT is GitHub access token(classic)
# please run `export CR_PAT=YOUR_TOKEN`
echo $CR_PAT | docker login ghcr.io -u iotmaulana --password-stdin

# push image to GitHub Packages
docker push ghcr.io/iotmaulana/karsajobs-ui:latest
