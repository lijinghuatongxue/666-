#!/bin/bash
#anthor adou
#date 2018.08.30
#配合python分析访客ip地区 效果图及Python代码地址：https://github.com/lijinghuatongxue/Python_Pyecharts

clear

read -p "输入你的web日志所在目录，但是最后不要添加“/”: "  log_dir
echo " 你的目录在 $log_dir. shell will start ... 分析情况将会输出到./results.txt"
sleep 3 
echo  please wait...
#先使用命令将ip导出
awk '{print $1}'  $log_dir/./* |sort | uniq -c  > ./所有ip.txt
echo "ip已经导出到./所有ip.txt"
sleep 3
sudo rm -f ./results.txt
for i in `cat ./所有ip.txt` ; do
    curl https://ip.cn/index.php?ip=$i >> ./results.txt
    sleep 2
    #睡一会，不然会被封ip
done

