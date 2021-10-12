variable "prefix" {
    description = "The environment to deploy resources to. [PROD, STAGING, DEV]"
    type        = string
    default     = "DEV"
}

variable "aws_cli_profile" {
    description = "The AWS CLI profile to retrieve credentials from."
    type        = string
}

variable "aws_region" {
    description = "The AWS region to launch AWS resources."
    type        = string
    default     = "us-east-2"
}

variable "riak_kv_node_names" {
    description = "The list of names of the Riak nodes for the KV cluster."
    type        = list(string)
    default     = ["ria01", "riak02", "riak03"]
}

variable "ami_id" {
    description = "The image id to use for provisioning EC2 instances."
    type        = string
}

variable "instance_type" {
    description = "The EC2 instance type."
    type        = string
    default     = "t2.micro"
}

variable "security_groups" {
    description = "The list of security groups to associate with."
    type        = list(string)
}

variable "aws_key_pair" {
    description = "The name of the key pair to associate with the instances."
    type        = string
}
