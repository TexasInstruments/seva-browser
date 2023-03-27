# seva-browser

Firefox's docker image built on debian:stable-slim for use with X11 / Wayland passthrough. Primarily designed
for use with Seva services but there's nothing stopping you from using it
elsewhere.

## Usage

Here's a pretty exhaustive example of how to use this container. Adjust as needed.

```
docker run \
	--network host \
	-v /tmp/.X11-unix \
	-e XAUTHORITY \
	-e XDG_RUNTIME_DIR=/tmp \
	-e DISPLAY \
	-e WAYLAND_DISPLAY \
	-e https_proxy \
	-e http_proxy \
	-e no_proxy \
	-v $XDG_RUNTIME_DIR:/tmp \
	--user=0:0 \
	ghcr.io/cshilwant/seva-browser:latest \
	https://example.com/
```
