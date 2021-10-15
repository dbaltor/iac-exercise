variable "public_key_path" {
    description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "key_name" {
    description = "Desired name of AWS key pair"
}

variable "aws_region" {
    description = "AWS region to launch servers."
}

# Ubuntu Precise 20.04 LTS (x64)
variable "aws_amis" {
    default = {
        eu-west-2 = "ami-0c109f697ab7fc6f4"
        eu-west-1 = "ami-0644c2c26649aac62"
        us-east-1 = "ami-036490d46656c4818"
        us-east-2 = "ami-044696ab785e77725"
        us-west-1 = "ami-09bedd705318020ae"
        us-west-2 = "ami-0964546d3da97e3ab"
    }
}
