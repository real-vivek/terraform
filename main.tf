provider "aws"{
 region="us-east-2"
 access_key=""
 secret_key=""
}

resource "aws_vpc" "first_vpc"{
 cidr_block="10.0.0.0/16"
 tags={
  name="first vpc"
 }
}

resource "aws_subnet" "first_subnet"{
 vpc_id=aws_vpc.first_vpc.id
 cidr_block="10.0.10.0/24"
 availability_zone="us-east-2a"
}
