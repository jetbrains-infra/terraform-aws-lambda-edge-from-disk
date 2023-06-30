## About
Terraform module to deploy Lambda function that you can attach to CloudFront distribution. This module expects function distributive in form of local file. 

Features: 
* IAM Role with right to write into CloudWatch Logs
* Correct target `us-east-1` region

## Usage

```hcl
module "function" {
  source                        = "github.com/jetbrains-infra/terraform-aws-lambda-edge-from-disk?ref=vX.X.X" // see https://github.com/jetbrains-infra/terraform-aws-lambda-edge-from-disk/releases
  name                          = "redirector"
  handler_name                  = "redirector.handle"
  archive_path                  = data.archive_file.redirector.output_path
  archive_path_source_code_hash = data.archive_file.redirector.output_base64sha256
}
```

All params:
```hcl
module "function" {
  source                        = "github.com/jetbrains-infra/terraform-aws-lambda-edge-from-disk?ref=vX.X.X" // see https://github.com/jetbrains-infra/terraform-aws-lambda-edge-from-disk/releases
  name                          = "redirector"
  handler_name                  = "redirector.handle"
  archive_path                  = data.archive_file.redirector.output_path
  archive_path_source_code_hash = data.archive_file.redirector.output_base64sha256
  memory_limit                  = "128"
  timeout                       = "10"
}
```

**NB!** Use **qualified ARN** from output as value for corresponding CloudFront distribution setting   

## Outputs

* `arn` - Lambda function ARN
* `qualified_arn` - Lambda function qualified ARN
