werd=$1
var=""
while [ "${var}" == "" ]
do
var=$(tail -1 /Users/a1179069/project/gcp/kubelessons/log.log | grep "${werd}");
done
echo "${var}";
