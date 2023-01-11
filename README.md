# DevOps Challenge
## Welcome potential SRE candidates!

## Overview
This challenge is designed to test your skills with IaC as well as general AWS infrastructure deployment and management. We would love to get an idea how you organize your code to ensure it is maintainable. Since our team is also security focused, we would like to see how you demonstrate security mindfulness. We hope you have fun with this challenge!

You will be working in an AWS environment. Particularly EKS. Your end goal is to get the apps to communicate to each other. When you first clone the repo, there will be various issues to fix. We highly encourage you to leave comments throughout the code. This will help us have better discussions during the interview. This challenge is designed in a way that allows you to complete it quickly at a minimum. However feel free to take notes or leave documentation about any changes you would make given more time.

### Resources
The following resources will be deployed or provided during this challenge:
- 1 EKS Cluster [terraform]
- 2 EKS Managed Node groups (ng-server & ng-client) [terraform]
- 1 VPC (challenge-vpc) [terraform]
- 2 Subnets (private & public) [terraform]
- 2 Security Groups that you will care about [terraform]
- 1 Private ECR repo [Provided]
  - 1 docker image (sinatra-ruby:1.0.0) [Provided]
- 2 Pods (curl & sinatra-ruby) [kubectl]

The goal being to properly configure all these resources to get the curl pod in the client node group to communicate to the sinatra-ruby pod in the server node group.

## Duration
You should limit this challenge to roughly 1-2 hours. Unless you're having a lot of fun with it, then feel free to spend more time. It will be used to drive questions during the technical interview, so feel free to leave comments about anything you'd like to discuss more in depth during the interview.

## Prep
For this challenge you will need a Github account. You should have the following tools installed locally:
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

## Getting started
- You will start by forking the repo [DevOps Challenge](https://github.com/Breeze-Aviation/DevOpsChallenge)
- Install AWS CLI on local dev machine
- Setup AWS credentials
- Install terraform on local dev machine
- Run Terraform
- Install kubectl on local dev machine
- Setup kubeconfig (See Hint below)
- Deploy kubernetes resources
- Commit changes (Please supply terraform state file along with your code)
- When you are finished please send an email to devadmin@flybreeze.com with a link to your forked branch

## Hints
The terraform will try to use your default AWS Profile to authenticate to AWS. If needed set your AWS_PROFILE to the credentials we will provide you.

You will find various issues from misconfigured terraform resources to syntax issues. Remember the end goal is to have one service (curl) to communicate with the other service (ruby sinatra). If all is working properly you should get a response body stating "It works!"

If pods do not get healthy they may need more power.

You may find this command helpful to pull in the EKS config:
`aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)`

If you receive a response body "Denied" then you are probably missing the access key.

## Potential technical interview questions about DevOps Challenge
Given more time how would you further automate this process?

What security issues did you find and how did you or how would you resolve those issues?
