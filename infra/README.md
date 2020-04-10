# Infrastructure

This file contains the Terraform for the underlying infrastructure.

## Contents

**General Terraform files**
- [`.terraform-version`](./.terraform-version) - Defines what Terraform version is being used.
- [`providers.tf`](./providers.tf) - Contains the infrastructure providers that we will use terraform to create the resources of.
- [`variables.tf`](./variables.tf) - Where our variable inputs will be.
- [`main.tf`](./main.tf) - TBC.
- Terraform Modules - TBC.

**Provider specific files**
- [`iam.tf`](./iam.tf) - Contains the AWS IAM Roles and Policies.
- [`codebuild.tf`](./codebuild.tf) - Contains the resources for AWS CodeBuild.
- [`s3.tf`](./s3.tf) - Contains the resources for AWS S3.