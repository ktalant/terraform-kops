output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-talantzon-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-talantzon-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-talantzon-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-talantzon-com.name}"
}

output "cluster_name" {
  value = "talantzon.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-talantzon-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-talantzon-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-talantzon-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-talantzon-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-talantzon-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-talantzon-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-talantzon-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-talantzon-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-talantzon-com.id}", "${aws_subnet.eu-west-1b-talantzon-com.id}", "${aws_subnet.eu-west-1c-talantzon-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-talantzon-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-talantzon-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-talantzon-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-talantzon-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-talantzon-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.talantzon-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-talantzon-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-talantzon-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-talantzon-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-talantzon-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-talantzon-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.talantzon-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.talantzon-com.id}"
}