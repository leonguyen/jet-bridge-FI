#!/usr/bin/env bash

set -e

APP_NAME="jet-bridge-app"

fly apps create $APP_NAME || true

echo "Set your secrets before deploying:"
echo "fly secrets set JET_TOKEN=your-token JWT_SECRET=your-secret"

fly deploy
