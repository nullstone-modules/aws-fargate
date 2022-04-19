# aws-fargate

Nullstone Block standing up an AWS Fargate cluster with service discovery and execution role ready for launching container services.

## Security & Compliance

Security scanning is graciously provided by Bridgecrew. Bridgecrew is the leading fully hosted, cloud-native solution providing continuous Terraform security and compliance.

[![Infrastructure Security](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=INFRASTRUCTURE+SECURITY)
[![CIS AWS V1.3](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=CIS+AWS+V1.3)
[![PCI-DSS V3.2](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=PCI-DSS+V3.2)
[![NIST-800-53](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=NIST-800-53)
[![ISO27001](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=ISO27001)
[![SOC2](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=SOC2)
[![HIPAA](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-fargate/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=nullstone-modules%2Faws-fargate&benchmark=HIPAA)

## Inputs

- `versioning: bool`
  - Use the versioning feature of S3 to keep multiple versions of each object stored in your bucket.
    With versioning you can list, retrieve, and restore multiple versions of your objects.
  - Default: `true`

- `server_side_encryption: bool`
  - Encrypts all data at the object level as it is being written to S3, automatically decrypts it as you access it.
    The way you access objects (presigned URLs, listing objects, and retrieving objects) all works the same way as if they were not encrypted.
  - Default: `true`

## Outputs

- `cluster_arn: string`
  - AWS ARN of Fargate cluster

- `cluster_name: string`
  - Name of Fargate cluster

- `deployer: { name: string, access_key: string, secret_key: string }`
  - Sensitive
  - An AWS User with explicit privilege to deploy ECS services.

- `deployers_name: string`
  - Name of the deployers IAM Group that is allowed to deploy to the Fargate cluster.
