VAR_SPACE_USED=`df -h|grep "var" | awk '{print $5}'|sed 's/.$//'`
ROOT_SPACE_USED=`df -h|grep -w "/" | awk '{print $5}'|sed 's/.$//'`
BOOT_SPACE_USED=`df -h|grep  "boot" | awk '{print $5}'|sed 's/.$//'`
#ROOT_SPACE_USED=`df -h|grep -w "/" | awk '{print $5}'|sed 's/.$//'`
#ROOT_SPACE_USED=`df -h|grep -w "/" | awk '{print $5}'|sed 's/.$//'`

if [ $VAR_SPACE_USED -gt 80 -o $ROOT_SPACE_USED -gt 80 -o $BOOT_SPACE_USED -gt 80 ]
  then
sh /var/scripts/clearMediaFilesForThreshold.sh 
  else
	echo "Disk is healthy...";
fi




