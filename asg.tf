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

