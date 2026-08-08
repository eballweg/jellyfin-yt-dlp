FROM lscr.io/linuxserver/jellyfin:10.11.11

RUN mkdir -p /usr/local/bin && \
    wget -q -O /usr/local/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp && \
    chmod +x /usr/local/bin/yt-dlp && \
    yt-dlp --version
