set -e # exit immediately if a command exits with a non-zero status

usage() {
  echo "Usage: $0 <github-repo> <docker-image>"
  exit 1
}

cleanup() {
  rm -rf "$TEMP_DIR"
}

if [ "$#" -ne 2 ]; then
  usage
fi

GITHUB_REPO=$1
DOCKER_IMAGE=$2
TEMP_DIR=$(mktemp -d)

# registers the cleanup function to be called on script exit
trap cleanup exit

git clone "https://github.com/$GITHUB_REPO" "$TEMP_DIR"
cd $TEMP_DIR/express-app

docker build -t "$DOCKER_IMAGE" .
docker push "$DOCKER_IMAGE"

#sh c33solution.sh thomastoumasu/container-applications-main/ thomastoumasu/container-ex-express-app