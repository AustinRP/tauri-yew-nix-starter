FROM rust:1.64

WORKDIR /usr/src/myapp

RUN cargo install --locked tauri-cli trunk
RUN apt-get update && apt-get install -y \
        libwebkit2gtk-4.0-dev \
        build-essential \
        curl \
        wget \
        libssl-dev \
        libgtk-3-dev \
        libayatana-appindicator3-dev \
        librsvg2-dev \
        libthai-dev

cmd ["cargo", "tauri", "build"]
