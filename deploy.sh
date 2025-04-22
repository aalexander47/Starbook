#!/bin/bash

# Navigate to your project directory
cd /var/www/Starbook || exit

# Activate virtual environment
source env/bin/activate

# Pull latest code from GitHub
git pull origin main

# Install dependencies
pip install -r requirements.txt

# Apply migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Restart Gunicorn
sudo systemctl restart Starbook

# Restart Nginx (optional if changed)
sudo systemctl restart nginx

echo "✅ Deployment completed!"
