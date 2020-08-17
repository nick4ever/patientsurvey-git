#!/bin/sh 

BASE_LOCATION=/opt/joystick/patientsurvey-git
BRANCH=trangvinh

cd $BASE_LOCATION

sleep 30

while true;
do  
    sleep 1
    ping -c 1 8.8.8.8 > /dev/null
    if [ $? -eq 0 ]; then
        break
    fi
done



git reset --hard origin/$BRANCH
git checkout $BRANCH
git pull

/bin/sh $BASE_LOCATION/scripts/schedule.sh & 

/opt/jdk1.7.0_75/bin/java -jar JoystickHandler.jar
