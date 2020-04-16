# rtsp-to-s3
RTSP video camera image capture and upload to S3

This simple repository takes a frame capture from an RTSP video source and uploads it to S3.

It uploads to S3 in bucket/camera-name/year-month/camera-name-datetime.jpg format

# Prereqs

* Install AWS CLI tools
* You will need to run AWS configure, or otherwise set your S3 credentials. 
