#!/bin/bash

# サーバーパス
MC_PATH='/var/mc-server'
# バックアップ収納パス
BK_PATH='/var/mc-backups'
# バックアップ時刻形式
BK_TIME=`date +%Y%m%d-%H%M%S`
# バックアップファイル名
BK_NAME="${BK_PATH}/mc_backup_${BK_TIME}.tar.gz"
# バックアップ保存世代数
BK_GEN="3"
TAIL_GEN="+4"

tar cfvz $BK_NAME $MC_PATH