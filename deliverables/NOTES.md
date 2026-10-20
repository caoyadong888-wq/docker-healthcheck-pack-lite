# Lite notes

## English

This slice is the curl Dockerfile, the wget Dockerfile, the bash TCP Dockerfile, and one Compose service. Image names are variables (`IMAGE_REF`, `WEB_IMAGE`). Probe binaries and URLs are variables too.

On Docker Engine 26.1.5+dfsg1 a non-JSON `HEALTHCHECK CMD` line was stored as test type CMD-SHELL. The Dockerfile keyword `CMD-SHELL` failed to parse on that engine. Compose v2.29.7 accepts `test: ["CMD-SHELL", "..."]`. Check upstream docs for your engine.

`$$HEALTH_URL` in the Compose file is for the container shell. `${WEB_IMAGE:?set WEB_IMAGE}` is required at config time.

## 中文

这一份只有 curl Dockerfile、wget Dockerfile、bash TCP Dockerfile，以及一个 Compose 服务。镜像名是变量（`IMAGE_REF`、`WEB_IMAGE`）。探针程序和 URL 也是变量。

在 Docker Engine 26.1.5+dfsg1 上，非 JSON 的 `HEALTHCHECK CMD` 被存成测试类型 CMD-SHELL。该引擎不接受 Dockerfile 关键字 `CMD-SHELL`。Compose v2.29.7 接受 `test: ["CMD-SHELL", "..."]`。请核对上游文档（check upstream docs）。

Compose 文件里的 `$$HEALTH_URL` 留给容器 shell。`${WEB_IMAGE:?set WEB_IMAGE}` 在 config 时必须有值。
