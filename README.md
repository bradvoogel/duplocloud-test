# Before you begin 

Install the following software ependencies:
- Terraform
- Tfenv
- awscli
- eksctl
- helm 
- kubctl
- k9s
- vscode or IDE of your choice
- access to an AWS account with administrative priveldges

Installation instructions for the aws-load-balancer controller docs can be found here: 
https://docs.aws.amazon.com/eks/latest/userguide/lbc-helm.html

# Deployment instructions for deploying Webapp1
This is a proof of concept that can be furter incorporated into a software delivery pipleine. 

There is a README file located in the /helm/webapp1 driectory with a step by step guide for helm deployment.

NOTE: A developer can be assigned an IAM role with priveldges to deploy this application without adminstrative access once the infrastructure installation is completed.

NOTE: When switching between dev and prod clusters, Kubectl context must be invoke to ensure that the deployment is pointed at the correct cluster.

