# 3-Tier-Architecture-AWS-Terraform

#

1. VPC
6 subnets
3 private 
3 public 
Public subnets should have IGW attached to it. 
Private subnets should have NG attached to it. 
Configure route tables properly. Once private and public subnet created, please create ec2 instance (manually) on public subnet and ping google.com. If everything is successful, you should have a proper response. Delete the instance after verification.
Release the module on terraform registry. 

Step2  

On top of VPC from previous step, please create ASG with a launch template. ASG should use minimum 1 and maximum 99 instances. Your WordPress should consume credentials as n environment variable This ASG should create its own ALB that is accessible from the internet. Also, DNS of the ALB should be properly configured on hosted zone and should be available at 
Wordpress.yourdomain.com 

Step3 

Create RDS Cluster


create a Makefile and make your module avaiable for all regions. 


The end result is, hosting a wordpress that creates VPC/ASG/RDS. We should be able to run terraform apply, and all the components should be available right away



