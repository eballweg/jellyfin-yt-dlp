FROM python:3.11-alpine AS builder
RUN pip install --no-cache-dir yt-dlp

FROM lscr.io/linuxserver/jellyfin:latest
COPY --FROM=builder /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp
RUN chmod +x /usr/local/bin/yt-dlp
