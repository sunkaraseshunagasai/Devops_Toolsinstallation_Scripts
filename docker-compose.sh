
#!/usr/bin/env bash
set -e

# Choose version (latest stable as of now)
COMPOSE_VERSION="v2.27.0"
ARCH="$(uname -m)"
OS="$(uname -s)"

# Create plugin directory
sudo mkdir -p /usr/local/lib/docker/cli-plugins

# Download Compose binary
sudo curl -SL "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-${OS}-${ARCH}" \
  -o /usr/local/lib/docker/cli-plugins/docker-compose

# Make it executable
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

# Verify
docker compose version
