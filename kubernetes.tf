locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-talantzon-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-talantzon-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-talantzon-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-talantzon-com.name}"
  cluster_name                      = "talantzon.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-talantzon-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-talantzon-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-talantzon-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-talantzon-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-talantzon-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-talantzon-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-talantzon-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-talantzon-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-talantzon-com.id}", "${aws_subnet.eu-west-1b-talantzon-com.id}", "${aws_subnet.eu-west-1c-talantzon-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-talantzon-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-talantzon-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-talantzon-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-talantzon-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-talantzon-com.id}"
  route_table_public_id             = "${aws_route_table.talantzon-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-talantzon-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-talantzon-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-talantzon-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-talantzon-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-talantzon-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"
  vpc_cidr_block                    = "${aws_vpc.talantzon-com.cidr_block}"
  vpc_id                            = "${aws_vpc.talantzon-com.id}"
}



