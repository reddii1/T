DELETE_DT=`date +%m/%d/%Y`
TEST_STEP_RESULT_MOS_FILE_COUNT=`find /var/lib/xms/media/en-US/testStepResultMosFiles -type f  -mtime +10 | wc -l`
TEST_CASE_RUN_RESULT_RECORDING_COUNT=`find /var/lib/xms/media/en-US/testCaseRunResultRecordings -type f  -mtime +10|wc -l`
DISK_SPACE_USED_BEFORE=`df -h |grep "/var" |  awk '{print $5}'`


find /var/lib/xms/media/en-US/testCaseRunResultRecordings  -type f   -mtime +10 -exec rm {} \;

find /var/lib/xms/media/en-US/testStepResultMosFiles -type f  -mtime +10 -exec rm {} \;

DISK_SPACE_USED_AFTER=`df -h |grep "/var" |  awk '{print $5}'`

echo "$DELETE_DT|$TEST_CASE_RUN_RESULT_RECORDING_COUNT|$TEST_STEP_RESULT_MOS_FILE_COUNT|$DISK_SPACE_USED_BEFORE|$DISK_SPACE_USED_AFTER|">> /var/script/log/mediaCleanUp.log

