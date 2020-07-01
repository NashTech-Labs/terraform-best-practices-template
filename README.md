# Infrastructure Deployment

####About 

Terraform is the infrastructure as code offering from HashiCorp. It is a tool for building, changing, and managing 
infrastructure in a safe, repeatable way.

Some points we should keep in mind while writing infrastructure as code
1. Create separate file for resource creation module, variable, provider and output file.
2. Never pass secrets in code like aws access key, secret key or anyother password etc.
3. Never checked in private key in repo
4. Code should be moduler enough. So that we can easily change one module without affecting other module.

In this example, we are basically running nginx webapp application on ec2 instances and accessing via load-balancer. 
Here we are creating three modules autoscaling group, load-balancer and security group.


### Pre-requisite:
- You must have AWS account
- To install Terraform, follow this [page](https://learn.hashicorp.com/terraform/getting-started/install)


##### Steps to follow in order to provision infra on AWS
1. Export variables 
    ```bash
   export AWS_ACCESS_KEY_ID=""
   export AWS_SECRET_ACCESS_KEY=""
   export AWS_DEFAULT_REGION=us-east-1
   ```
1. Run the following commands
    ```bash
    terraform init
    terraform plan
    terraform apply
    ```
   