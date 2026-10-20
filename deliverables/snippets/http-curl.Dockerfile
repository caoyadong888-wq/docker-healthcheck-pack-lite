# HTTP healthcheck, curl, shell form.
# Docker Engine 26.1.5+dfsg1 stores a non-JSON HEALTHCHECK CMD as test type CMD-SHELL.
# The Dockerfile keyword CMD-SHELL itself failed to parse on that engine:
#   Unknown type "CMD-SHELL" in HEALTHCHECK (try CMD)
# Check upstream docs before you copy an older snippet that uses that keyword.
#
# variable: IMAGE_REF
# variable: CURL_BIN
# variable: HEALTH_URL
# The base image may not ship curl. Flags -f/--fail, -s/--silent, -S/--show-error,
# and -m/--max-time were read from curl --help all on a local curl 8.10.1 client.
# Check upstream docs for the curl binary in the image you actually run.

ARG IMAGE_REF=registry.example.com/sample-web:1.0.0
FROM ${IMAGE_REF}

ENV CURL_BIN=curl \
    HEALTH_URL=http://127.0.0.1:8080/health

HEALTHCHECK --interval=30s --timeout=5s --start-period=15s --start-interval=5s --retries=3 \
  CMD ${CURL_BIN} -fsS --max-time 4 ${HEALTH_URL} || exit 1
