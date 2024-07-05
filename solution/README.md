docker run infracloudio/csvserver
 chmod +x gencsv.sh
 ./gencsv.sh 2 8
 docker run infracloudio/csvserver
 docker cp ./inputFile a497b460fbe2:/csvserver/inputdata
 docker start a497b460fbe2
 docker exec -it 1c8d05e3bebb  sh
 netstat -ntlp
 docker stop 1c8d05e3bebb
 docker rm 1c8d05e3bebb
