sh clear.sh
docker run -it -d --rm --name misdep ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
docker exec -it misdep bash
  apt-get update
  apt-get -y install curl
  exit
docker attach misdep
  helsinki.fi

# docker rm -f misdep

