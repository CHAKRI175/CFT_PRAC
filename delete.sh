#!/bin/bash
STACK_NAME="resume-cfn-stack"
REGION="us-east-1"

echo "Deleting stack..."
aws cloudformation delete-stack \
  --stack-name $STACK_NAME \
  --region $REGION

echo "Monitor status:"
echo "aws cloudformation describe-stacks --stack-name $STACK_NAME --region $REGION"
