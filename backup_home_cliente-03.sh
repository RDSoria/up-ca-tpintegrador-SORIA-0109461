#!/bin/sh

REMOTE_USER="dario"
REMOTE_ADDRESS="192.168.20.3"
REMOTE_FOLDER="/home/dario/"
LOCAL_FOLDER="/media/disco_backups/backup_home_cliente-03"
LOGS_DIR="/media/disco_backups/logs"
DATEPART=`date '+%Y-%m-%d_%H-%M-%S'`
LOG_FILENAME="$LOGS_DIR/backup_home_cliente-03.sh_$DATEPART.log"

mkdir -p $LOGS_DIR
mkdir -p $LOCAL_FOLDER

rsync -avrst -e ssh --log-file=$LOG_FILENAME $REMOTE_USER@$REMOTE_ADDRESS:$REMOTE_FOLDER $LOCAL_FOLDER
