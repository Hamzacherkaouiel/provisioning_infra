bucket_name = "dev-proj-1-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["us-west-1a", "us-west-1c"]

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINoxHI8ECl+J9LmxKRhkBee1eqqHdQ87X2KACgFH6xfv PC@DESKTOP-I73RQN9"
ec2_ami_id     = "ami-00271c85bf8a52b84"

ec2_user_data_install_apache = ""

domain_name = "jhooq.org"