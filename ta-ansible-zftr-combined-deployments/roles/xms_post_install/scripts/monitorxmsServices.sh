sudo xmstatus-python|awk '{print $2","$3}'|sed 's/[idstate="]//g'>/var/scripts/monitorServiceFile.csv
grep -v "fxrvc" /var/scripts/monitorServiceFile.csv  > /var/scripts/xmsService.csv
file="/var/scripts/xmsService.csv"
#file="/var/script/commaServiceTest.csv"
FAILED_SERVICES=""
FAILED_SERVICE_COUNT=0
while IFS=: read -r line
do
        # display fields using f1, f2,..,f7
       # printf 'ServiceName: %s, Shell: %s, Home Dir: %s\n' "$f1"
#SERVICE_STATUS=`awk -F"," '{print $2}'`
#echo $line
SERVICE_NAME=$(echo $line|cut -d "," -f1)
SERVICE_STATUS=$(echo $line|cut -d "," -f2)

#echo $SERVICE_NAME $SERVICE_STATUS
#echo `awk -F"," '{print $1}'`
if [ $SERVICE_STATUS == "FAILED" -o  $SERVICE_STATUS == "STOPPED" ]
then
FAILED_SERVICE_COUNT=`expr $FAILED_SERVICE_COUNT + 1`
FAILED_SERVICES=$FAILED_SERVICES","$SERVICE_NAME
fi
done <"$file"

echo $FAILED_SERVICES
echo $FAILED_SERVICE_COUNT

if [ $FAILED_SERVICE_COUNT -gt 0 ]
then
echo "alarm!!!!!!!"
SERVICES=$(cat /var/scripts/xmsService.csv)
echo -e "Hi All,\n\nNectar CXA XMS service(s) are not in RUNNING state($FAILED_SERVICES)\n\nService status below:\n$SERVICES\n\nRegards\nNectar CXA Support"|mailx -s "Nectar CXA XMS Service Failed!" -r support@nectarcorp.com "support@nectarcorp.com"
fi
