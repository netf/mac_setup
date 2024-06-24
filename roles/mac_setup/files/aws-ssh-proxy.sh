#!/bin/bash

# Get the AWS region from environment variables or use default
AWS_REGION=${AWS_DEFAULT_REGION:-${AWS_REGION:-eu-west-2}}

INSTANCE_ID="$1"
USER="$2"
PORT="$3"

# Send SSH public key
aws ec2-instance-connect send-ssh-public-key \
    --region "$AWS_REGION" \
    --instance-id "$INSTANCE_ID" \
    --instance-os-user "$USER" \
    --ssh-public-key file://~/.ssh/id_rsa.pub > /dev/null

# Start SSM session
exec aws ssm start-session \
    --region "$AWS_REGION" \
    --target "$INSTANCE_ID" \
    --document-name AWS-StartSSHSession \
    --parameters "portNumber=$PORT"