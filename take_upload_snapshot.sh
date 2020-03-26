#!/usr/bin/env bash

# take_upload_snapshot.sh
# prereqs
# sudo apt-get install ffmpeg
# sudo apt-get install awscli
# AWS credentials in ~./aws/credentials
# S3 bucket and policy setup - TODO, share github repo for terraform to do this

# Load the variables from the config.sh file, instead of hard coded here
cd "$(dirname "$0")";
source config.sh

# define vars
FileDate="`date '+%Y-%m-%d-%H%M%S'`"
FileName=$CamName-$FileDate.jpg
S3YearMonth="$(date +"%Y-%m")"

# take snapshot
echo "Take ffmpeg snapshot from $CamAddress and save to $FileName"
ffmpeg -y -i $CamAddress -vframes 1 $FileName

# upload to S3
aws --profile=pnp s3 cp $FileName s3://$S3Bucket/$S3YearMonth/

