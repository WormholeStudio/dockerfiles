FROM rust:1.53
RUN cargo install --git https://github.com/starcoinorg/starcoin move-cli --branch master
