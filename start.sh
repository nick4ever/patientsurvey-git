#!/bin/sh 

BASE_LOCATION=/opt/joystick/patientsurvey-git
BRANCH=trangvinh

cd $BASE_LOCATION

git reset --hard origin/$BRANCH
git checkout $BRANCH
git pull

sleep 1

/bin/sh $BASE_LOCATION/scripts/schedule.sh & 

/opt/jdk1.7.0_75/bin/java -jar JoystickHandler.jar
