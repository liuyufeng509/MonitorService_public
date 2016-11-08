#!/bin/bash
echo "拷贝配置文件及执行程序"
cp ~/build-MonitorService-Desktop_Qt_5_6_1_GCC_64bit-Debug/MonitorService ./bin/bin/
cp ~/build-MonitorService-Desktop_Qt_5_6_1_GCC_64bit-Debug/config.ini ./bin/bin/

echo "打包程序"
tar -cvf MonitorService.tar bin
