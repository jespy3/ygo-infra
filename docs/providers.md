# Understanding the Providers Terraform
This document explains how terraform providers fit into this project.

## What is a terraform provider?
The way that your Terraform code will be able to interact with the API of another 3rd party's resources. This project predominantly uses AWS resources, so we require an AWS terraform providers to create them.

## The AWS provider

Setting up a provider specific to AWS will allow us to create AWS resources with our Terraform code. This requires to be set up with our AWS passwords to be able to be used, but in a secure way as to not commit sensitive information in to Github.

Our basic provider looks like this:
```
provider "aws" {
  version = "~> 2.0"
  region  = "ap-southeast-2"
}
```

Check out the rest of our provider code [here in the `providers.tf`](/infra/providers.tf).