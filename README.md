# rtsp-to-s3
RTSP video camera image capture and upload to S3

This simple repository takes a frame capture from an RTSP video source and uploads it to S3.

It uploads to S3 in bucket/camera-name/year-month/camera-name-datetime.jpg format

# Prereqs

* Run `sudo apt-get install awscli ffmpeg` which will 
  * Install AWS CLI tools
  * Install ffmpeg 
* You will need to run AWS configure, or otherwise set your S3 credentials

# Usage

* Clone this repo
* Set executable `chmod +x take_upload_snapshot.sh`
* Run `./take_upload_snapshot.sh`

* To schedule
  * `crontab -e`
  * Run every minute `* * * * * /home/pi/rtsp-to-s3/take_upload_snapshot.sh`
