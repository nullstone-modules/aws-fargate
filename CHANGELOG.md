# 0.7.11 (Feb 10, 2026)
* Added IAM policy for deployers that can be attached to IAM Roles.

# 0.7.10 (Sep 26, 2025)
* Added `var.log_retention_in_days` to dictate log retention on all apps in the cluster.

# 0.7.9 (Jul 10, 2025)
* Added `ecs:TagResource` to deployer policy.

# 0.7.8 (Jul 09, 2025)
* Added `ecs:ListTagsForResource` to deployer policy.

# 0.7.7 (Nov 08, 2023)
* Added `ecs:DescribeTasks` to deployer policy.

# 0.7.5 (Mar 03, 2023)
* Added terraform lock file.

# 0.7.3 (Jul 22, 2022)
* Added fargate capacity provider.

# 0.7.2 (Jul 06, 2022)
* Fixed deployer permissions to run tasks.

# 0.7.1 (Jun 11, 2022)
* Updated module contract to cluster block.
* Upgraded `random_string` deprecation.

## 0.7.0 (Apr 19, 2022)

* Added automated compliance checks and bridgecrew compliance badges.
* Enabled container insights on cluster.
* Removed deprecated `deployer` IAM user.

## 0.6.5 (Jan 07, 2022)

* Updated `deployers` IAM group to be able to execute commands against the ECS services.
* Marked `deployer` IAM user for deprecation.

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
