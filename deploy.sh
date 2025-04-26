#!/bin/bash

# Navigate to your project directory
cd /var/www/Starbook || exit

# Initialize Git repository if not already initialized
if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/aalexander47/Starbook.git
  git fetch origin main
  git checkout -t origin/main
fi

# Mark the directory as safe for Git
git config --global --add safe.directory /var/www/Starbook

# Pull latest code from GitHub
git fetch origin main
git reset --hard origin/main  # Ensure the local branch matches the remote
git clean -fd  # Remove untracked files and directories

# Activate virtual environment
source env/bin/activate

# Install dependencies
pip install -r requirements.txt

# Apply migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Restart Gunicorn
sudo systemctl restart gunicorn  # Ensure the service name is correct

# Restart Nginx (optional if changed)
sudo systemctl reload nginx

echo "✅ Deployment completed!"
