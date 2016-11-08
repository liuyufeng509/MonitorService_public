#!/bin/bash
echo "开始安装监控服务....."
filelist=`ls ./so/lib64/`
echo "开始拷贝文件到/lib64中"

for file in ${filelist}
do
  filepath=/lib64/$file
  if [ ! -f $filepath  ]; then
     cp -a ./so/lib64/$file $filepath
     echo "cp -a ./so/lib64/${file} ${filepath}"
  else
     echo "文件 ${filepath} 已经存在 不需要拷贝"
  fi
done

echo "开始拷贝qt库到/usr/lib64目录中"
filelist=`ls ./so/qt/`
for file in ${filelist}
do
  filepath=/usr/lib64/$file
  if [ ! -f $filepath  ]; then
     cp -a ./so/qt/$file $filepath
     echo "cp -a ./so/qt/${file} ${filepath}"
  else
     echo "文件 ${filepath} 已经存在 不需要拷贝"
  fi
done

echo "开始拷贝lib64_usr的库文件到/usr/lib64中"
filelist=`ls ./so/lib64_usr/`
for file in ${filelist}
do
  filepath=/usr/lib64/$file
  if [ ! -f $filepath  ]; then
     cp -a ./so/lib64_usr/$file $filepath
     echo "cp -a  ./so/lib64_usr/${file} ${filepath}"
  else
     echo "文件 ${filepath} 已经存在 不需要拷贝"
  fi
done

echo "监控服务安装程序完毕，请在bin目录下，运行./MonitorService命令启动程序"

echo "开始安装流媒体服务程序"

echo "Make GLIB PATH"
cp ./bin/libstdc++.so.6.0.17 /usr/lib64
mv /usr/lib64/libstdc++.so.6 /usr/lib64/libstdc++.so.6-bak
ln /usr/lib64/libstdc++.so.6.0.17 /usr/lib64/libstdc++.so.6
echo "End!"

echo "流媒体服务安装结束"


