# docker run -d -it --name looper ubuntu sh -c 'while true; do date; sleep 1; done'
# docker logs -f looper
# # other terminal
# # docker pause looper
# # docker unpause looper
# # docker attach looper --no-stdin (to exit here, in the attached window, with Ctrl-C, without killing it)
# # docker attach looper (to exit here, in the attached window, Ctrl-P Ctrl-Q, without killing it)

# docker run -d --rm -it --name looper-it ubuntu sh -c 'while true; do date; sleep 1; done'
# # other terminal

sh clear.sh
docker run -d --rm --name uh devopsdockeruh/simple-web-service:ubuntu
docker exec -it uh sh -c 'tail -f text.log | grep 'Secret''
# or
# docker exec -it uh bash
#   tail -f text.log | grep 'Secret'

