# Docker Healthcheck Snippets (Lite)

## English

A free slice of the healthcheck pack: curl, wget, and bash TCP Dockerfiles, one Compose HTTP service, and a filled `shop-edge` web example. The full pack adds pg_isready, `HEALTHCHECK NONE`, the multi-service Compose file, the shop database and worker files, the local reader, tests, and the longer bilingual notes.

### Deliverables

- `deliverables/NOTES.md` — short English and Chinese notes for this slice
- `deliverables/snippets/http-curl.Dockerfile` — curl probe, `IMAGE_REF` is a variable
- `deliverables/snippets/http-wget.Dockerfile` — wget probe, `IMAGE_REF` is a variable
- `deliverables/snippets/tcp-bash.Dockerfile` — bash `/dev/tcp` probe, host and port are variables
- `deliverables/compose/web.compose.yaml` — one Compose service, `WEB_IMAGE` is a variable, test type `CMD-SHELL`
- `examples/shop-edge/README.md` — concrete values for the filled example
- `examples/shop-edge/edge.Dockerfile` — `registry.example.com/shop/edge:1.4.2` with curl
- `examples/shop-edge/compose.yaml` — the same image and URL in Compose
- `LICENSE` — MIT

## 中文

健康检查包的免费切片：curl、wget、bash TCP 三份 Dockerfile，一个 Compose HTTP 服务，以及填好的 `shop-edge` Web 示例。完整版另有 pg_isready、`HEALTHCHECK NONE`、多服务 Compose、商店的数据库和 worker 文件、本地读取脚本、测试，以及更长的双语笔记。

### 交付文件

- `deliverables/NOTES.md` — 本切片的简短中英笔记
- `deliverables/snippets/http-curl.Dockerfile` — curl 探针，`IMAGE_REF` 是变量
- `deliverables/snippets/http-wget.Dockerfile` — wget 探针，`IMAGE_REF` 是变量
- `deliverables/snippets/tcp-bash.Dockerfile` — bash `/dev/tcp` 探针，主机和端口是变量
- `deliverables/compose/web.compose.yaml` — 一个 Compose 服务，`WEB_IMAGE` 是变量，test 类型为 `CMD-SHELL`
- `examples/shop-edge/README.md` — 填好示例的具体取值
- `examples/shop-edge/edge.Dockerfile` — `registry.example.com/shop/edge:1.4.2`，使用 curl
- `examples/shop-edge/compose.yaml` — 同一镜像和 URL 的 Compose
- `LICENSE` — MIT

Full version: GUMROAD_URL
