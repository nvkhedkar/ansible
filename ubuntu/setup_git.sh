#!/bin/bash

# ---- CONFIGURE THESE ----
GIT_USERNAME="Your Name"
GIT_EMAIL="your_email@example.com"
GITHUB_USERNAME="your_github_username"
GITHUB_PAT="your_github_personal_access_token"  # Use only if you understand the security risks

REPO_URL="https://github.com/$GITHUB_USERNAME/your-repo.git"  # Update this if needed

echo "Installing Git..."
sudo apt update
sudo apt install git -y

echo "Configuring Git user..."
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.helper store

# Optional: store credentials automatically (insecure)
echo "https://$GITHUB_USERNAME:$GITHUB_PAT@github.com" > ~/.git-credentials
chmod 600 ~/.git-credentials

# Optional: clone a repo
# git clone "$REPO_URL"

echo "Git setup complete. GitHub PAT stored for HTTPS access."
