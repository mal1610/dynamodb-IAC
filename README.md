# dynamodb-IAC
IAC code to create a DynamoDB table + Terraform backend

## Introduction ##

- cd into backend and run terraform init, terraform plan and terraform apply
- This initialises the s3 backend to store our state files
- cd into the dynamo-db folder and run terraform init, terraform plan and terraform apply to create the DynamoDB table "malcolm_bookinventory"
