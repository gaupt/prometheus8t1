#!/usr/bin/env bash
# Function to install gitleaks
install_gitleaks() {
    echo "Installing gitleaks..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        curl -sSfL https://raw.githubusercontent.com/zricethezav/gitleaks/master/scripts/install.sh | bash
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install gitleaks
    else
        echo "Unsupported operating system. Please install gitleaks manually."
        exit 1
    fi
}

# Check if gitleaks is installed
if ! command -v gitleaks &> /dev/null; then
    echo "Gitleaks is not installed."
    install_gitleaks
fi

# Run gitleaks to check for secrets
echo "Running gitleaks..."
gitleaks --path . --verbose

# If gitleaks finds any leaks, exit with error status
if [ $? -ne 0 ]; then
    echo "Error: gitleaks found secrets in the code. Please remove them before committing."
    exit 1
fi

# If no leaks found, exit with success status
exit 0