#!/bin/bash
# Verify Edisyl CLI is installed and authenticated

set -e

# Check if edisyl CLI is installed
if ! command -v edisyl &> /dev/null; then
    echo "Error: edisyl CLI is not installed"
    echo ""
    echo "Install it with:"
    echo "  curl -fsSL https://raw.githubusercontent.com/FlipsideCrypto/edisyl-tools/main/install.sh | sh"
    echo ""
    echo "Or visit: https://app.edisyl.com/"
    exit 1
fi

# Check if authenticated
if ! edisyl whoami &>/dev/null; then
    echo "Error: Not authenticated with Edisyl"
    echo ""
    echo "Run:"
    echo "  edisyl login"
    exit 1
fi

# Show current user
echo "Authenticated as:"
edisyl whoami
