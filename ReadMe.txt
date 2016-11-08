1.publish.sh:
从生成目录中，将执行文件和config.ini拷贝到./bin/bin下，并将其打包程Monitorervice.tar文件发布
bin目录下：
bin目录放的是执行文件及依赖库
install.sh 实现的操作是，将so中依赖库部署到相应的目录
so是qt等函数所需要的库。

2.安装介绍：
1）直接运行./install.sh
2）更该配置文件，到bin/bin/目录中，直接运行./MonitorService
