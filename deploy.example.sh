#!/bin/sh
echo "Deploying via rsync..."
rsync -avz --delete -e ssh build/ USER@DOMAIN:/home/USER/webapps/SITE
echo "Done!"