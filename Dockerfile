FROM python:3.11-alpine AS builder
RUN pip install --no-cache-dir yt-dlp

FROM lscr.io/linuxserver/jellyfin:10.11.11
COPY --FROM=builder /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp
RUN chmod +x /usr/local/bin/yt-dlpFROM python:3.11-alpine as builder
RUN pip install --no-cache-dir yt-dlp

FROM lscr.io/linuxserver/jellyfin:10.11.11
COPY --from=builder /usr/local/bin/yt-dlp /usr/local/bin/yt-dlp
RUN chmod +x /usr/local/bin/yt-dlp
