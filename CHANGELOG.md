## 0.6.6 (Apr 19, 2022)

* Added automated compliance checks and bridgecrew compliance badges.

## 0.6.5 (Jan 07, 2022)

* Updated `deployers` IAM group to be able to execute commands against the ECS services.

## 0.6.4 (Jan 07, 2022)

* Removed `tags` from IAM group since it was invalid.

## 0.6.3 (Jan 07, 2022)

* Replacing deployer IAM user with deployers IAM group. 
  This helps avoids limitations of attaching too many policies to a single IAM user. 
  Instead, a new IAM user is required for each service with its own custom policies.

## 0.6.2 (Jan 05, 2022)

* Removed the execution role from the cluster which is no longer in use. 

## 0.6.1 (Jul 19, 2021)

* Deployer user can now view Load Balancer Health.

## 0.6.0 (May 21, 2021)

* Upgrade module to new nullstone provider v0.5.

## 0.3.0 (Apr 13, 2021)

* Added `deployer` user with explicit permission to deploy to this fargate cluster.
* Added `cluster_arn` to outputs.
