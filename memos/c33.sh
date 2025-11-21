set -e # exit if one command fails
FIRST_ARGUMENT=$1
SECOND_ARGUMENT=$2
GIT_REPO=${FIRST_ARGUMENT:=thomastoumasu/container-applications-main/}
DOCKERHUB_REPO=${SECOND_ARGUMENT:=thomastoumasu/container-ex-express-app}
docker login
mkdir tempFiles
cd $_
# git clone https://github.com/thomastoumasu/container-applications-main/
git clone https://github.com/$GIT_REPO
cd container-applications-main/express-app
docker build -t app . 
# docker tag app thomastoumasu/container-ex-express-app
docker tag app $DOCKERHUB_REPO
docker push $DOCKERHUB_REPO
cd ../../..
rm -rf tempFiles