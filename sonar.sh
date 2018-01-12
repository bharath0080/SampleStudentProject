curl -s -u admin:admin -X GET http://10.0.0.94:9000/api/qualitygates/project_status?projectKey=com.github.bharath008:StudentEnrollmentWithSpring -o gate.json
gate=`grep -oP '\"status\"\:[^,]+' gate.json | head -1`
#echo "Quality Gate " $gate
if [[ $gate = *OK* ]] 
then
echo "OK"
else
echo "ERROR"
fi
