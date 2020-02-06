// defining var for local scope (dev dir)
variable "region" {
  type        = string
  description = "The AWS region."
}

// defining var for local scope (base dir)
variable "ami" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}