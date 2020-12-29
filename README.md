# block-aws-fargate

Nullstone Block standing up an AWS Fargate cluster with service discovery and execution role ready for launching container services.

## Inputs

## Outputs

- `cluster_name: string`
  - Name of Fargate cluster

- `service_discovery_id`
  - AWS ID for Service Discovery namespace used for internal DNS service discovery registration 

- `cluster_execution_role_arn: string`
  - AWS ARN for Execution Role preconfigured to run in Fargate cluster from AWS ECR (Image Registry)
