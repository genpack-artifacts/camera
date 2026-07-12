# camera

Artifact for camera / media edge boxes (V4L, RTMP, restream, etc.).

## go2rtc (RTSP restream)

Single-binary restreamer so one RTSP camera connection can feed recording and
preview clients (VLC, ffmpeg, …).

- Binary: installed at build time by `files/build.d/go2rtc.sh` (v1.9.14)
- Unit: `go2rtc.service` (not enabled by default)
- Config: `/etc/go2rtc.yaml`

```bash
# On the appliance after install/boot:
# 1. Edit streams in /etc/go2rtc.yaml
# 2. Start
systemctl enable --now go2rtc

# Preview (another machine):
#   rtsp://<host>:8554/cam1
# Web UI:
#   http://<host>:1984
```
