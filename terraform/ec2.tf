# ======================
# AMI Amazon Linux 2
# ======================
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# ======================
# Launch Template
# ======================
resource "aws_launch_template" "this" {
  name_prefix   = "${var.project_name}-lt-"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  iam_instance_profile {
    name = aws_iam_instance_profile.ec2_profile.name
  }

  vpc_security_group_ids = [aws_security_group.ec2.id]

  user_data = base64encode(file("${path.module}/../scripts/user_data.sh"))

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name    = "${var.project_name}-ec2"
      Project = var.project_name
    }
  }
}

########################################
# EC2 Instance – Right Sizing
########################################

resource "aws_instance" "app" {
  ami           = var.ami_id

  # FinOps: instance volontairement modeste
  instance_type = "t3.micro"

  tags = {
    Name    = "${var.project_name}-app"
    FinOps  = "right-sized"
  }
}