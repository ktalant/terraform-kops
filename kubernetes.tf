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

provider "aws" {
  region = "eu-west-1"
}

resource "aws_autoscaling_attachment" "bastions-talantzon-com" {
  elb                    = "${aws_elb.bastion-talantzon-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-talantzon-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-talantzon-com" {
  elb                    = "${aws_elb.api-talantzon-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-talantzon-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-talantzon-com" {
  elb                    = "${aws_elb.api-talantzon-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-talantzon-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-talantzon-com" {
  elb                    = "${aws_elb.api-talantzon-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-talantzon-com.id}"
}

resource "aws_autoscaling_group" "bastions-talantzon-com" {
  name                 = "bastions.talantzon.com"
  launch_configuration = "${aws_launch_configuration.bastions-talantzon-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-talantzon-com.id}", "${aws_subnet.utility-eu-west-1b-talantzon-com.id}", "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-talantzon-com" {
  name                 = "master-eu-west-1a.masters.talantzon.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-talantzon-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-talantzon-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-talantzon-com" {
  name                 = "master-eu-west-1b.masters.talantzon.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-talantzon-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-talantzon-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-talantzon-com" {
  name                 = "master-eu-west-1c.masters.talantzon.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-talantzon-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-talantzon-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-talantzon-com" {
  name                 = "nodes.talantzon.com"
  launch_configuration = "${aws_launch_configuration.nodes-talantzon-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-talantzon-com.id}", "${aws_subnet.eu-west-1b-talantzon-com.id}", "${aws_subnet.eu-west-1c-talantzon-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.talantzon.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-talantzon-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "a.etcd-events.talantzon.com"
    "k8s.io/etcd/events"                  = "a/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-talantzon-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "a.etcd-main.talantzon.com"
    "k8s.io/etcd/main"                    = "a/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-talantzon-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "b.etcd-events.talantzon.com"
    "k8s.io/etcd/events"                  = "b/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-talantzon-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "b.etcd-main.talantzon.com"
    "k8s.io/etcd/main"                    = "b/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-talantzon-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "c.etcd-events.talantzon.com"
    "k8s.io/etcd/events"                  = "c/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-talantzon-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "c.etcd-main.talantzon.com"
    "k8s.io/etcd/main"                    = "c/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1a-talantzon-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1a.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-talantzon-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1b.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-talantzon-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1c.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_elb" "api-talantzon-com" {
  name = "api-talantzon-com-b3ofpc"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-talantzon-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-talantzon-com.id}", "${aws_subnet.utility-eu-west-1b-talantzon-com.id}", "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "api.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_elb" "bastion-talantzon-com" {
  name = "bastion-talantzon-com-tt553q"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-talantzon-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-talantzon-com.id}", "${aws_subnet.utility-eu-west-1b-talantzon-com.id}", "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "bastion.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-talantzon-com" {
  name = "bastions.talantzon.com"
  role = "${aws_iam_role.bastions-talantzon-com.name}"
}

resource "aws_iam_instance_profile" "masters-talantzon-com" {
  name = "masters.talantzon.com"
  role = "${aws_iam_role.masters-talantzon-com.name}"
}

resource "aws_iam_instance_profile" "nodes-talantzon-com" {
  name = "nodes.talantzon.com"
  role = "${aws_iam_role.nodes-talantzon-com.name}"
}

resource "aws_iam_role" "bastions-talantzon-com" {
  name               = "bastions.talantzon.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.talantzon.com_policy")}"
}

resource "aws_iam_role" "masters-talantzon-com" {
  name               = "masters.talantzon.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.talantzon.com_policy")}"
}

resource "aws_iam_role" "nodes-talantzon-com" {
  name               = "nodes.talantzon.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.talantzon.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-talantzon-com" {
  name   = "bastions.talantzon.com"
  role   = "${aws_iam_role.bastions-talantzon-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.talantzon.com_policy")}"
}

resource "aws_iam_role_policy" "masters-talantzon-com" {
  name   = "masters.talantzon.com"
  role   = "${aws_iam_role.masters-talantzon-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.talantzon.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-talantzon-com" {
  name   = "nodes.talantzon.com"
  role   = "${aws_iam_role.nodes-talantzon-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.talantzon.com_policy")}"
}

resource "aws_internet_gateway" "talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-talantzon-com-8fa7701ff16af0b0035a5883a5e357ad" {
  key_name   = "kubernetes.talantzon.com-8f:a7:70:1f:f1:6a:f0:b0:03:5a:58:83:a5:e3:57:ad"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.talantzon.com-8fa7701ff16af0b0035a5883a5e357ad_public_key")}"
}

resource "aws_launch_configuration" "bastions-talantzon-com" {
  name_prefix                 = "bastions.talantzon.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-talantzon-com-8fa7701ff16af0b0035a5883a5e357ad.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-talantzon-com.id}"
  security_groups             = ["${aws_security_group.bastion-talantzon-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-talantzon-com" {
  name_prefix                 = "master-eu-west-1a.masters.talantzon.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-talantzon-com-8fa7701ff16af0b0035a5883a5e357ad.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-talantzon-com.id}"
  security_groups             = ["${aws_security_group.masters-talantzon-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.talantzon.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-talantzon-com" {
  name_prefix                 = "master-eu-west-1b.masters.talantzon.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-talantzon-com-8fa7701ff16af0b0035a5883a5e357ad.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-talantzon-com.id}"
  security_groups             = ["${aws_security_group.masters-talantzon-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.talantzon.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-talantzon-com" {
  name_prefix                 = "master-eu-west-1c.masters.talantzon.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-talantzon-com-8fa7701ff16af0b0035a5883a5e357ad.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-talantzon-com.id}"
  security_groups             = ["${aws_security_group.masters-talantzon-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.talantzon.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-talantzon-com" {
  name_prefix                 = "nodes.talantzon.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-talantzon-com-8fa7701ff16af0b0035a5883a5e357ad.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-talantzon-com.id}"
  security_groups             = ["${aws_security_group.nodes-talantzon-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.talantzon.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "eu-west-1a-talantzon-com" {
  allocation_id = "${aws_eip.eu-west-1a-talantzon-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1a.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-talantzon-com" {
  allocation_id = "${aws_eip.eu-west-1b-talantzon-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1b.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-talantzon-com" {
  allocation_id = "${aws_eip.eu-west-1c-talantzon-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1c.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.talantzon-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-talantzon-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-talantzon-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-talantzon-com.id}"
}

resource "aws_route53_record" "api-talantzon-com" {
  name = "api.talantzon.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-talantzon-com.dns_name}"
    zone_id                = "${aws_elb.api-talantzon-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZFM6PTLZKE7ET"
}

resource "aws_route53_record" "bastion-talantzon-com" {
  name = "bastion.talantzon.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-talantzon-com.dns_name}"
    zone_id                = "${aws_elb.bastion-talantzon-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZFM6PTLZKE7ET"
}

resource "aws_route_table" "private-eu-west-1a-talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "private-eu-west-1a.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "private-eu-west-1b.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "private-eu-west-1c.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1c"
  }
}

resource "aws_route_table" "talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "public"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-talantzon-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-talantzon-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-talantzon-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-talantzon-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-talantzon-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-talantzon-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-talantzon-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-talantzon-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-talantzon-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-talantzon-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-talantzon-com.id}"
  route_table_id = "${aws_route_table.talantzon-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-talantzon-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-talantzon-com.id}"
  route_table_id = "${aws_route_table.talantzon-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-talantzon-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"
  route_table_id = "${aws_route_table.talantzon-com.id}"
}

resource "aws_security_group" "api-elb-talantzon-com" {
  name        = "api-elb.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "api-elb.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-talantzon-com" {
  name        = "bastion-elb.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "bastion-elb.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "bastion-talantzon-com" {
  name        = "bastion.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "bastion.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "masters-talantzon-com" {
  name        = "masters.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "masters.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "nodes-talantzon-com" {
  name        = "nodes.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "nodes.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.masters-talantzon-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.masters-talantzon-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.bastion-talantzon-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.bastion-talantzon-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-talantzon-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-talantzon-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "eu-west-1a-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1a.talantzon.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1b-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1b.talantzon.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1c-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1c.talantzon.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "utility-eu-west-1a.talantzon.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "utility-eu-west-1b.talantzon.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "utility-eu-west-1c.talantzon.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_vpc" "talantzon-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "talantzon-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "talantzon-com" {
  vpc_id          = "${aws_vpc.talantzon-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.talantzon-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
