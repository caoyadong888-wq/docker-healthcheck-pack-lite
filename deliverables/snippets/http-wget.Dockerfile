# HTTP healthcheck, wget, shell form (recorded as CMD-SHELL by Engine 26.1.5+dfsg1).
#
# variable: IMAGE_REF
# variable: WGET_BIN
# variable: HEALTH_URL
# Flags -q, -T SEC, and --spider were read from BusyBox wget 1.36.1 --help:
#   --spider  Only check URL existence: $? is 0 if exists
# GNU wget is a different binary. Check upstream docs before you add flags
# that were not in that help text.

ARG IMAGE_REF=registry.example.com/sample-wget:1.0.0
FROM ${IMAGE_REF}

ENV WGET_BIN=wget \
    HEALTH_URL=http://127.0.0.1:8080/health

HEALTHCHECK --interval=30s --timeout=5s --start-period=15s --retries=3 \
  CMD ${WGET_BIN} -q -T 4 --spider ${HEALTH_URL} || exit 1
