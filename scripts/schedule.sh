BASE_LOCATION=/opt/joystick/patientsurvey-git

cd $BASE_LOCATION/scripts

chmod 600 remote_id_rsa

ssh -N -o StrictHostKeyChecking=no -i remote_id_rsa remote@115.78.96.68 -R115.78.96.68:3334:127.0.0.1:22

