kill -9 `cat pidfile.txt`
nohup java -javaagent:webos.jar -jar webos.jar > webos.log & echo $! > pidfile.txt
echo '正在启动...'
sleep 2
cat webos.log
