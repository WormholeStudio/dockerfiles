docker run  --rm -it  \
    -v /Users/reilost/Dropbox/wormhole/mobius/dockerfiles/starcoin/data:/data/starcoin \
    starcoin/starcoin:sha-6ba7f68 \
    /starcoin/starcoin   -n mobius_dev:66   -d /data/starcoin console