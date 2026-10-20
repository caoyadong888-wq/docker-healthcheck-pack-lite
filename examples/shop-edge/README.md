# shop-edge lite example

Filled values in this slice:

- Image `registry.example.com/shop/edge:1.4.2`
- Probe URL `http://127.0.0.1:8080/health`
- Command `curl -fsS --max-time 4` via Compose test type `CMD-SHELL`

`registry.example.com` is a documentation name. Check upstream docs for the image you run. The full pack adds wget, TCP, pg_isready, HEALTHCHECK NONE, and the local reader.
