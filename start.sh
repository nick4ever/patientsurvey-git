BASE_LOCATION=/opt/joystick/patientsurvey-git

cd $BASE_LOCATION

git checkout trangvinh
git pull

sleep 1

/bin/sh ssh.sh & 

/opt/jdk1.7.0_75/bin/java -jar JoystickHandler.jar
