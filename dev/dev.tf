// AWS Provider Config
provider "aws" {
  region = var.region
}

module "var" {
  source = "../ec2Provision/"

  ami = var.ami
  region =var.region
}