resource "aws_instance" "riak_node" {
    count                   = var.riak_node_count
    ami                     = var.ami_id
    instance_type           = var.instance_type
    vpc_security_group_ids  = var.security_groups
    key_name                = var.aws_key_pair

    tags = merge(local.required_tags, {
        Name = "${local.node_name_prefix}-kv-${count.index}"
    })
}
