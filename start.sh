BASE_LOCATION=/opt/joystick/patientsurvey-git

cd $BASE_LOCATION

git checkout trangvinh
git pull

/opt/jdk1.7.0_75/bin/java -jar JoystickHandler.jar
