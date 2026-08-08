FROM lscr.io/linuxserver/jellyfin:latest
   RUN apt-get update && apt-get install -y python3 python3-pip && pip install yt-dlp && apt-get clean
