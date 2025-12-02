#!/bin/bash

# dir移動
cd ./../mc
# screenでマイクラ鯖を実行
screen -UAmdS mcserver java -Dfile.encoding=UTF-8 -Xms1G -Xmx15G -jar paper-1.21.10-115.jar nogui
minecraft@minecraft:/srv/bash$ cat restart.sh
#!/bin/bash

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは10分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 300

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは5分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 180

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは2分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 60

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは1分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 30

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは30秒後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 30

#停止
systemctl stop mcserver

# サーバーパス
MC_PATH='/srv/mc'
# バックアップ収納パス
BK_PATH='/srv/backup'
# バックアップ時刻形式
BK_TIME=`date +%Y-%m-%d-%H:%M:%S`
# バックアップファイル名
BK_NAME="${BK_PATH}/mc_backup_${BK_TIME}.tar.gz"
# バックアップ保存世代数
BK_GEN="6"
TAIL_GEN="+7"

tar cfvz $BK_NAME $MC_PATH

sleep 3

# 過去世代の削除
## ディレクトリの存在チェック
if [ -d $BK_PATH ]; then
  # バックアップディレクトリが存在している場合、
  # 格納されているファイル一覧を表示
  ls -lrth $BK_PATH
else
  echo "The backup directory (${BK_PATH}) doesn't exist !"
  eval $IS_TIME
fi
# バックアップファイルをローカルのバックアップフォルダで世代管理
TGT_FILE="${BK_PATH}/mc_backup_????-??-??-??:??:??.tar.gz"
CHK_GEN=$(ls -1 ${TGT_FILE}|wc -l)
# 削除対象ファイルリスト
DEL_LIST=$(ls -1 -t ${TGT_FILE}|tail -n ${TAIL_GEN})
## ファイル削除要否判定
if [[ ${CHK_GEN} -gt $BK_GEN ]]; then
    # バックアップファイル数が保管世代数より多い場合、
    # 最新の保存数のみ残しそれ以外を削除する
    sudo rm -f ${BK_PATH}/${DEL_LIST}
    eval $IS_TIME
else
    echo "There is no old backup files to delete"
    eval $IS_TIME
fi

sleep 3

#キャッシュクリア
echo 3 > /proc/sys/vm/drop_caches

# 開始
systemctl start mcserver#!/bin/bash

# dir移動
cd ./../mc
# screenでマイクラ鯖を実行
screen -UAmdS mcserver java -Dfile.encoding=UTF-8 -Xms1G -Xmx15G -jar paper-1.21.10-115.jar nogui
minecraft@minecraft:/srv/bash$ cat restart.sh
#!/bin/bash

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは10分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 300

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは5分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 180

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは2分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 60

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは1分後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 30

screen -S mcserver -X stuff "say =======================================\015"
sleep 1
screen -S mcserver -X stuff "say サーバーは30秒後に再起動します\015"
sleep 1
screen -S mcserver -X stuff "say =======================================\015"

sleep 30

#停止
systemctl stop mcserver

# サーバーパス
MC_PATH='/srv/mc'
# バックアップ収納パス
BK_PATH='/srv/backup'
# バックアップ時刻形式
BK_TIME=`date +%Y-%m-%d-%H:%M:%S`
# バックアップファイル名
BK_NAME="${BK_PATH}/mc_backup_${BK_TIME}.tar.gz"
# バックアップ保存世代数
BK_GEN="6"
TAIL_GEN="+7"

tar cfvz $BK_NAME $MC_PATH

sleep 3

# 過去世代の削除
## ディレクトリの存在チェック
if [ -d $BK_PATH ]; then
  # バックアップディレクトリが存在している場合、
  # 格納されているファイル一覧を表示
  ls -lrth $BK_PATH
else
  echo "The backup directory (${BK_PATH}) doesn't exist !"
  eval $IS_TIME
fi
# バックアップファイルをローカルのバックアップフォルダで世代管理
TGT_FILE="${BK_PATH}/mc_backup_????-??-??-??:??:??.tar.gz"
CHK_GEN=$(ls -1 ${TGT_FILE}|wc -l)
# 削除対象ファイルリスト
DEL_LIST=$(ls -1 -t ${TGT_FILE}|tail -n ${TAIL_GEN})
## ファイル削除要否判定
if [[ ${CHK_GEN} -gt $BK_GEN ]]; then
    # バックアップファイル数が保管世代数より多い場合、
    # 最新の保存数のみ残しそれ以外を削除する
    sudo rm -f ${BK_PATH}/${DEL_LIST}
    eval $IS_TIME
else
    echo "There is no old backup files to delete"
    eval $IS_TIME
fi

sleep 3

#キャッシュクリア
echo 3 > /proc/sys/vm/drop_caches

# 開始
systemctl start mcserver