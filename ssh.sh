BASE_LOCATION=/opt/joystick/patientsurvey-git

cd $BASE_LOCATION

ssh -N -o StrictHostKeyChecking=no -i remote_id_rsa remote@nick4ever.com -Rnick4ever.com:3334:127.0.0.1:22

