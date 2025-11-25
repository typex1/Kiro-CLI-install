#!/bin/bash
set -e

INSTALL_DIR="$HOME/.kiro-install-tmp"
mkdir -p "$INSTALL_DIR"

export TMPDIR="$INSTALL_DIR"
curl -fsSL https://cli.kiro.dev/install | bash

rm -rf "$INSTALL_DIR"

export PATH="$HOME/.local/bin:$PATH"
#sh-5.2$ which kiro-cli
$HOME/.local/bin/kiro-cli login --use-device-flow
kiro-cli
#sh-5.2$ kiro-cli
#
#Welcome to Kiro CLI, let's get you signed in!
#
#Press enter to continue to the browser or esc to cancel
#
#▰▰▱▱▱▱▱ Opening browser... | Press (^) + C to cancelFailed to open browser for authentication.
#Please try again with: kiro-cli login --use-device-flow
#error: No such file or directory (os error 2)
