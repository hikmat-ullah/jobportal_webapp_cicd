#!/bin/bash

echo "**********************"
echo "Testing Laravel Image "
echo "**********************"



WORKSPACE=/home/admin/jenkins-data/jenkins_home/workspace/webapp_cicd
docker run --rm  -v $WORKSPACE/jobportal:/app -v -w /app hikmatmarwat/job_portal:1.6 "$@"



#docker run --rm -v jobportal:/app hikmatmarwat/job_portal:1.6 "$@" vendor/bin/phpunit --configuration phpunit.xml

#docker run --rm -ti -v jobportal:/app hikmatmarwat/job_portal:1.6 "$@"


