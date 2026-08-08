FROM lscr.io/linuxserver/jellyfin:10.11.11

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip && \
    pip install --no-cache-dir yt-dlp
