docker run  --rm -it \
    -v data:/data/starcoin/ \
     -p 9850:9850  \
    starcoin/starcoin:sha-6ba7f68 \
    /starcoin/starcoin   -n mobius_dev:66   -d /data/starcoin  console
