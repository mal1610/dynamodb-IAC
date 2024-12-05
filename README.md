# dynamodb-IAC
IAC code to create a DynamoDB table + Terraform backend

## Introduction ##

- cd into backend and run terraform init, terraform plan and terraform apply
- This initialises a S3 backend & a DynamoDB table to store our state files
- cd into the dynamo-db folder and run terraform init, terraform plan and terraform apply to create the DynamoDB table "malcolm_bookinventory", running the commands in this folder allows us the use the backend we created earlier in the first step
