#!/bin/bash
time=$(date)
dellog='/data/linkdood/logs/dellog' 
log='/data/linkdood/im/java/server-messagestorage/server-messagestorage.log'
del=`du -s $log | awk   '{print $1}'`
maxsize=$((1024*10))
if [ $del -gt $maxsize ] 
then
    echo '当前时间为：'$time >> $dellog
    echo '日志大小为：'$del >> $dellog
    echo > $log
    echo '日志清理成功' >> $dellog
else
    echo '当前时间为：'$time >> $dellog
    echo '日志正常：' >> $dellog
    echo '文件大小为：'$del >> $dellog
    
fi
