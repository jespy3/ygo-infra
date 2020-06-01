# Terraform Concepts

This file covered various Terraform concepts for how it works in the background.

## State

Terraform (TF) keeps track of your infrastructure and configuration that exists, this is it's "state". TF mainly uses state to map physical resources to your TF code, and keep track of your metadata.

TF state is stored in a local `terraform.tfstate` file. Storing this file remotely works better in a team environment.

Prior to any terraform command being run, TF does a _refresh_ to update the state with the resources that already exist.


## Backend

A terraform backend defines how state is loaded.
