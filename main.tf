module "serv" {
  #source = "./modules/EC2"
  source = git@github.com:manishsethi/xebia-epsilon-terraform-training.git
  aws_region = "us-east-1"
}