# Create Lambda execution role
aws iam create-role \
  --role-name FitnessApp-Lambda-Role \
  --assume-role-policy-document '{
    "Version": "2012-10-17",
    "Statement": [{
      "Effect": "Allow",
      "Principal": {"Service": "lambda.amazonaws.com"},
      "Action": "sts:AssumeRole"
    }]
  }' 

# Attach policies
aws iam attach-role-policy \
  --role-name FitnessApp-Lambda-Role \
  --policy-arn arn:aws:iam::aws:policy/AmazonSSMFullAccess

aws iam attach-role-policy \
  --role-name FitnessApp-Lambda-Role \
  --policy-arn arn:aws:iam::aws:policy/AWSLambdaBasicExecutionRole

