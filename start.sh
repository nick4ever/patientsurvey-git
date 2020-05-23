BASE_LOCATION=/opt/joystick/patientsurvey-git

cd $BASE_LOCATION

git checkout trangvinh
git pull

ssh -N -o StrictHostKeyChecking=no -i remote_id_rsa remote@nick4ever.com -Rnick4ever.com:3334:127.0.0.1:22 & 

/opt/jdk1.7.0_75/bin/java -jar JoystickHandler.jar
