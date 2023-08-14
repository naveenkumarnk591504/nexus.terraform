module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "jenkins-instance"
  ami  = "ami-0da59f1af71ea4ad2"
  instance_type          = "t2.medium"
  key_name               = "naveen"
  monitoring             = true
  vpc_security_group_ids = ["sg-05c859b8a7b7625fe"]
  subnet_id              = "subnet-018e7103a3134f584"
  user_data = file("jenkins.sh")
}