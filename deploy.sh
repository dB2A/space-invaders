#!/bin/sh

DEPLOY_USER=db2a
DEPLOY_HOST=ssh.alwaysdata.com
DEPLOY_DIRECTORY=/home/db2a/www/space-invaders

rsync \
    --archive \
    --force \
    --progress \
    --compress \
    --checksum \
    --exclude-from=rsync_exclude.txt \
    -e ssh ./ $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_DIRECTORY/
