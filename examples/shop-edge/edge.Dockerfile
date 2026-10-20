# Filled shop-edge web image. The name is an example on example.com.
# It is not a registry you can pull. The image is assumed to contain curl.
# Check upstream docs for the image you actually build.
FROM registry.example.com/shop/edge:1.4.2

ENV HEALTH_URL=http://127.0.0.1:8080/health

HEALTHCHECK --interval=30s --timeout=5s --start-period=15s --start-interval=5s --retries=3 \
  CMD curl -fsS --max-time 4 ${HEALTH_URL} || exit 1
