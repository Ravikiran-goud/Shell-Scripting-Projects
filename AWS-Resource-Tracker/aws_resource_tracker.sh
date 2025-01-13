#!/bin/bash

#######################
# Author: Ravi Kiran
# Date: 13th Jan
# Version: V1
# This script will report AWS resource usage and save it to ResourceTracker
#######################

# Enable debugging
set -x

# Output file
OUTPUT_FILE="ResourceTracker"

# Overwrite the file for new execution
echo "AWS Resource Tracker - $(date)" > $OUTPUT_FILE

# List S3 buckets
echo "==============================" >> $OUTPUT_FILE
echo "List of S3 buckets:" >> $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE

# List EC2 Instances
echo "==============================" >> $OUTPUT_FILE
echo "List of EC2 instances:" >> $OUTPUT_FILE
aws ec2 describe-instances >> $OUTPUT_FILE

# List Lambda functions
echo "==============================" >> $OUTPUT_FILE
echo "List of Lambda functions:" >> $OUTPUT_FILE
aws lambda list-functions >> $OUTPUT_FILE

# List IAM Users
echo "==============================" >> $OUTPUT_FILE
echo "List of IAM Users:" >> $OUTPUT_FILE
aws iam list-users >> $OUTPUT_FILE

# Notify completion
echo "Resource tracking complete. Results saved in $OUTPUT_FILE"








