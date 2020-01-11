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


