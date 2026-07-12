#!/bin/sh
# Install go2rtc single binary from GitHub releases (not in Portage).
# Pin version for reproducible builds; Frigate currently uses v1.9.14.
set -e

case "$(uname -m)" in
    x86_64)  ARCH=amd64 ;;
    aarch64) ARCH=arm64 ;;
    *)
        echo "Unsupported architecture: $(uname -m)" >&2
        exit 1
        ;;
esac

VERSION=1.9.14
URL="https://github.com/AlexxIT/go2rtc/releases/download/v${VERSION}/go2rtc_linux_${ARCH}"

echo "Downloading go2rtc v${VERSION} (${ARCH})..."
download "${URL}" > /usr/bin/go2rtc
chmod 755 /usr/bin/go2rtc
