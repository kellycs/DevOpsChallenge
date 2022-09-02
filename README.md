# DevOps Challenge
## Welcome potential SRE candidates!

## Overview
This challenge is designed to test your skills with IaC as well as general AWS infrastructure deployment and management. We would love to get an idea how you organize your code to ensure it is maintainable. Since our team is also security focused, we would like to see how you demonstrate security mindfulness. We hope you have fun with this challenge!

You will be working in an AWS environment. Particularly EKS. Your end goal is to get the apps to communicate to each other. When you first clone the repo, there will be various issues to fix. We highly encourage you to leave comments throughout the code. This will help us have better discussions during the interview. This challenge is designed in a way that allows you to complete it quickly at a minimum. However feel free to take notes or leave documentation about any changes you would make given more time.

## Duration
You should limit this challenge to roughly 1-2 hours. Unless you're having a lot of fun with it, then feel free to spend more time. It will be used to drive questions during the technical interview, so feel free to leave comments about anything you'd like to discuss more in depth during the interview.

## Prep
For this challenge you will need a Github account. You should have the following tools installed locally:
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

## Getting started
- You will start by forking the repo [DevOps Challenge](https://github.com/Breeze-Aviation/DevOpsChallenge)
- Setup AWS credentials
- Fix IaC
- Run Terraform
- Setup kubeconfig
- Deploy kubernetes resources
- When you are finished please send an email to devadmin@flybreeze.com with a link to your forked branch

## Hints
You will find various issues from missing terraform resources to syntax issues. Remember the end goal is to have one service (curl) to communicate with the other service (ruby sinatra). If all is working properly you should get a response body stating "It works!"

You may find this command helpful to pull in the EKS config:
`aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)`

If you receive a response body "Denied" then you are probably missing the access key.
