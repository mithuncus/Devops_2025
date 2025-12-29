Terraform is a infrastructure as a code tool
is declarative  way of creating infra.
Declarative advantages, easy sysntax, no need to follow sequence.
Inventory Managment
cost Optimization (create infra when required, stop or delete when not required)
automatic dependency management: when we create resource, terraform will take care of dependency managment.
Modules: we can create terrform code as modules other projects can use it without writing from the scratch.
Terraform setup:
 1. Download terraform s/w as per the requirment Operating system, windows,mac,RedHat etc
 2. if windows setup environment variables its must, two types of environment variables, 1.user variables   2. system variables. if we update in system variable then anyone on the system can use terraform otherwise if we setup user variables, then only that specific use can access terraform software.
 3. Download aws cli  (for authentication )


Providers: nothing but API to connect with specicfic provider like (aws,Azure GCP and many mor) in terraform we have n number of provides, to connect with the tool.

Terraform Syntax:
HCL (Harshicorp configuration Language):

resource "what-resource" "name -your-resource-your-wish" {

}

main conecpts:
variables
conditions
loops 
datatypes
functions
---
terraform requires aws provider configuration to create AWS infra
--> terreform file extension: .tf  its same like for shellscript .sh for yaml it .yml

in AWS we do below
1. create IAM admin user (aws console under IAM we create Terraform user with Admin access)
2. create access and sceret keys 
3. run "aws configure" in the command prompt

security group (sg)is optional when creating the ec2 instace in the ec2.tf file.

Terrafrom commands
terraform init --> it will initiliazes the provider. it will go and install aws provier, it will connect to aws and download the provider.
it will create .terraform folder and provider download

terraform plan --> its just a plan but it wont create anything accutually

terraform apply --> now it eill create resources, it  will ask permission we need to give 'yes'

terraform destroy --> it will delete already created resources.

terraform apply -auto-approve --> command 