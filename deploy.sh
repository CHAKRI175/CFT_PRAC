#!/bin/bash
STACK_NAME="resume-cfn-stack"
REGION="us-east-1"
TEMPLATE="template.yaml"

echo "Deploying stack..."
aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://$TEMPLATE \
  --region $REGION

echo "Check status:"
echo "aws cloudformation describe-stacks --stack-name $STACK_NAME --region $REGION"
