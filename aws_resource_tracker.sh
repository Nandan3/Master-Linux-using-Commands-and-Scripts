#!/bin/bash

#################
#Author: Nandan
#Date: 19/10/2025
#
#version: v1
#
#This script reports the AWS resource usage
################

set -x

#Resources to track
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 buckets
echo "print list of s3 bucket"
aws s3 ls > resourceTracker

#list EC2 instances
echo "print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId[]'

#list lamda
echo "print list of Lambda functions"
aws lambda list-functions > resourceTracker

#list IAM users
echo "print list of IAM users"
aws iam list-users > resourceTracker
