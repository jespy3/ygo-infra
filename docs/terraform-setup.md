# The Terraform Setup
This document will help you set up your Terraform workstation to work on this project.

_Note:_ This setup process is specific to MacOS at the moment.

## Getting Started

### Required Installations
- [Terraform](https://learn.hashicorp.com/terraform/getting-started/install) - The primary tool to write infrastructure as code.
    - Make sure you have downloaded at least the version in [this file](/infra/.terraform-version).
- [tfenv](https://github.com/tfutils/tfenv) - To toggle your local machine's Terraform versions.

### Minimum Terraform Resources
Started this project out by having the minimum:
- `.terraform-version` - To specify the `tf` version used for this project.
- `providers.tf` - To declare what Terraform providers are needed. Helps with `terraform init`.
- `variables.tf` - To house our variable inputs for use throughout the project.
- `main.tf` - To have our first defined resources. Eventually, resources will be categorised in separate files/modules by resource type.