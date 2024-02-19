#!/bin/bash

SCREEN_NAME="minecraftServer"

case $1 in
    save-all)
        screen -x -S "$SCREEN_NAME" -p 0 -X stuff "save-all\n"
        sleep 30;;
    start)
        /usr/bin/screen -DmS "$SCREEN_NAME" /usr/bin/java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.19.2-43.3.0/unix_args.txt "$@";;
    stop)
        screen -x -S "$SCREEN_NAME" -p 0 -X stuff "say お知らせ: 30秒後にサーバーを再起動します\n"
        screen -x -S "$SCREEN_NAME" -p 0 -X stuff "save-all\n"
        sleep 30
        screen -x -S "$SCREEN_NAME" -p 0 -X stuff "stop\n"
        sleep 120;;
    *)
        echo "start | stop | save-all"
esac
