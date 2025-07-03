provider "aws" {
  region  = "us-west-2"  # Update to your preferred AWS region
  profile = "default"    # Optional: use a named profile from AWS CLI credentials
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "MyTerraformEC2"
  }
}

