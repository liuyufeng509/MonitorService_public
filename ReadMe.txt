1.publish.sh:
从生成目录中，将执行文件和config.ini拷贝到./bin/bin下，并将其打包程Monitorervice.tar文件发布
bin目录下：
bin目录放的是执行文件及依赖库
install.sh 实现的操作是，将so中依赖库部署到相应的目录
so是qt等函数所需要的库。
testWatchdog目录，与watchdog相关，暂时不管该功能

2.安装介绍：
1）直接运行./install.sh
2）更该配置文件，到bin/bin/目录中，直接运行./MonitorService

3.wathdog相关：
repair脚本中，启动MonitorService时，必须先cd到./MonitorService中，
其中的路径都是绝对路径，所以，部署时，要手动更新绝对路径配置
