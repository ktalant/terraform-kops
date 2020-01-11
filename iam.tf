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



