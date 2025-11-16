project       = "demo-project"
region        = "ap-south-1"

vpc_cidr      = "10.0.0.0/16"
subnet_cidr   = "10.0.1.0/24"
az            = "ap-south-1a"

ami           = "ami-02b8269d5e85954ef" # Ubuntu 22.04 (example)
instance_type = "t3.micro"
key_name      = "jenkins-keypair"

bucket_name   = "demo-project-bucket-reeta"
