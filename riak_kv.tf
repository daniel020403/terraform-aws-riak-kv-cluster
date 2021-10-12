resource "aws_instance" "riak_node" {
    for_each                = toset(var.riak_kv_node_names)
    
    ami                     = var.ami_id
    instance_type           = var.instance_type
    vpc_security_group_ids  = var.security_groups
    key_name                = var.aws_key_pair

    tags = merge(local.required_tags, {
        Name = "${local.node_name_prefix}-kv-${each.value}"
    })
}
