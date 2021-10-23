#!/bin/bash

# variables
APP_NAME=demo
ENV_NAME=demo-env
version=0.0.1
s3_bucket=demo-199999
s3_key=$APP_NAME-$version

function waitReady {
  while true
  do
    env_status=$(aws elasticbeanstalk describe-environment-health --environment-name $ENV_NAME --attribute-names Status)

    if [ $( echo "$env_status" | grep -c "\"Status\": \"Ready\",") -eq 1 ]
    then 
      break
    else
      echo "waiting"
      sleep 30
    fi
  done
}

mv ../demo/build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar

zip -r $APP_NAME-$version.zip .ebextensions demo.jar

# upload zip to s3
aws s3 cp $APP_NAME-$version.zip s3://$s3_bucket/$s3_key

# create version
aws elasticbeanstalk create-application-version --application-name $APP_NAME --version-label $APP_NAME-$version --source-bundle S3Bucket=$s3_bucket,S3Key=$s3_key

# update version in beanstalk
aws elasticbeanstalk update-environment --application-name $APP_NAME --environment-name $ENV_NAME --version-label $APP_NAME-$version

# poll for update successful
waitReady

# describe environment
aws elasticbeanstalk describe-environment-health --environment-name $ENV_NAME --attribute-names All --output table


