# TCP healthcheck. Docker has no TCP test type. This snippet calls bash /dev/tcp.
#
# variable: IMAGE_REF
# variable: TCP_HOST
# variable: TCP_PORT
# /dev/tcp is a bash feature, not a file.
# Observed while preparing this pack:
#   ubuntu:24.04 bash: echo > /dev/tcp/127.0.0.1/1 exited 1 (connection refused) when nothing listened.
#   that image's /bin/sh, and busybox:1.36 sh, did not open a TCP connection with the same line.
#   debian:stable-slim had /bin/sh -> dash, bash at /usr/bin/bash, and no curl or wget.
# If the image has no bash, this probe fails. A netcat-style binary is a different
# command and its flags differ by package. This file does not ship an nc line.
# Check upstream docs for the shell in the image you run.

ARG IMAGE_REF=registry.example.com/sample-tcp:1.0.0
FROM ${IMAGE_REF}

ENV TCP_HOST=127.0.0.1 \
    TCP_PORT=5432

HEALTHCHECK --interval=10s --timeout=3s --start-period=10s --retries=3 \
  CMD bash -c 'echo > /dev/tcp/${TCP_HOST}/${TCP_PORT}' || exit 1
