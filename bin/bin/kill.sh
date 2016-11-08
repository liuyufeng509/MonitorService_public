#!/bin/bash
count=`ps -ef | grep MonitorService | grep -v "grep" | wc -l`

if [ 0 == $count ]; then
	echo "MonitorService 未运行"
else
	echo "MonitorService 正在运行，杀死进程"
	pkill MonitorService
fi

count=`ps -ef | grep HbMedia | grep -v "grep" | wc -l`
if [ 0 == $count ]; then
    echo "HbMedia 未运行"
else
    echo "HbMedia 正在运行，杀死进程"
	pid=`pidof HbMedia`
	echo "pidof HbMedia = $pid"
    kill -9 $pid
fi

echo "删除log.txt"
#rm -rf log.txt;
#rm -rf live.log
