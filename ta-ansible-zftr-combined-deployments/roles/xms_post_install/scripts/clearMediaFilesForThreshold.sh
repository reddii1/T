DELETE_DT=`date +%m/%d/%Y`
TEST_CASE_RUN_RESULT_RECORDING_COUNT=`find /archive/media/testCaseRunResultRecordings -type f -mtime +2|wc -l`
DISK_SPACE_USED_BEFORE=`df -h |grep "/dev/sda2" |  awk '{print $5}'`

VAR_SPACE_USED=`df -h|grep "var" | awk '{print $5}'|sed 's/.$//'`
ROOT_SPACE_USED=`df -h|grep -w "/" | awk '{print $5}'|sed 's/.$//'`
BOOT_SPACE_USED=`df -h|grep  "boot" | awk '{print $5}'|sed 's/.$//'`
#ROOT_SPACE_USED=`df -h|grep -w "/" | awk '{print $5}'|sed 's/.$//'`
#ROOT_SPACE_USED=`df -h|grep -w "/" | awk '{print $5}'|sed 's/.$//'`

find /archive/media/testCaseRunResultRecordings  -type f -mtime +2 -exec rm {} \;
find /archive/media/testStepResultMosFiles  -type f -mtime +2 -exec rm {} \;

find /var/lib/xms/media/en-US/testCaseRunResultRecordings  -type f  -mtime +2 -exec rm {} \;
find /var/lib/xms/media/en-US/testStepResultMosFiles -type f  -mtime +2 -exec rm {} \;

echo "Run Thershold limit" > /var/userReport.csv
