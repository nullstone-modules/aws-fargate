# block-aws-network

Nullstone Block standing up an AWS Fargate cluster with service discovery and execution role ready for launching container services.

## Global

Configures execution role (per provider).
Standing up this block multiple times in a stack will not cause an additional role to be provisioned.

### Outputs

- `cluster_execution_role_arn: string`
  - AWS ARN for Execution Role preconfigured to run in Fargate cluster from AWS ECR (Image Registry) 

## Per Environment

Fargate Cluster and Service Discovery are configured

### Inputs

- `owner_id: string` - Stack Owner ID
- `stack_name: string` - Stack Name
- `block_name: string` - Block Name
- `parent_block_name: string` - Parent Block Name
- `env: string` - Environment Name
- `backend_conn_str: string` - Connection string for postgres backend

### Outputs

- `cluster_name: string`
  - Name of Fargate cluster

- `service_discovery_id`
  - AWS ID for Service Discovery namespace used for internal DNS service discovery registration 

- `network_block`
  - Block Name for Parent Network
