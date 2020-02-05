
variable "region" {
  type        = string
  description = "The AWS region."
}

variable "ami" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}

// AWS Provider Config
provider "aws" {

  region = var.region
}

//       provider_type  nameOfConstructInTerraform
resource "aws_instance" "FirstAutomatedServer" {
  ami = var.ami
  instance_type = "t2.micro"
  //  key_name = "AWS EC2 - 02/2020"

//  can add tags to the instance
  tags = {
    Name = "FirstAutomatedServer"
    Project = "TerraformServer"
  }

}

////   provider_type nameOfConstructInTerraform
//resource "aws_eip" "ip" {
//  instance = aws_instance.FirstAutomatedServer.id
//}