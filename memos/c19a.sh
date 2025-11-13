docker build -f Dockerfile19a -t yt-dlp .
docker run -v ./videos/:/mydir/ yt-dlp https://www.youtube.com/watch?v=saEpkcVi1d4
# "$(pwd):/mydir"