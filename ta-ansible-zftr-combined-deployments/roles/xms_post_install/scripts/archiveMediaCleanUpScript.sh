DELETE_DT=`date +%m/%d/%Y`
TEST_CASE_RUN_RESULT_RECORDING_COUNT=`find /archive/media/testCaseRunResultRecordings -type f -mtime +4|wc -l`
DISK_SPACE_USED_BEFORE=`df -h |grep "/dev/sda2" |  awk '{print $5}'`


find /archive/media/testCaseRunResultRecordings  -type f -mtime +4 -exec rm {} \;
echo "$TEST_CASE_RUN_RESULT_RECORDING_COUNT"

DISK_SPACE_USED_AFTER=`df -h |grep "/dev/sda2" |  awk '{print $5}'`

