# Deploy-python-flask-webapp-to-App-Service-using-Azure-Pipelines

Prerequisites :
- An Azure account with an active subscription. <a href="https://azure.microsoft.com/en-us/free/?WT.mc_id=A261C142F" target="_blank">Create an account for free.</a> 
- An Azure DevOps organization. <a href="https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/pipelines-sign-up?view=azure-devops" target="_blank">Create an account for free.</a> 

# Project Task and Steps:
1- Create a Azure Container Registry >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/acr" target="_blank">Terraspace Codes</a> 

![Screenshot 2023-02-05 at 8 52 24 AM](https://user-images.githubusercontent.com/113396342/217632235-32b9ae36-96db-4d2e-80d3-bd0faacb642a.png)
#

2- Create a Azure DevOps Project 

![Screenshot 2023-02-08 at 2 31 20 PM](https://user-images.githubusercontent.com/113396342/217632564-f86fd45d-71dd-4d84-be47-1daae752e659.png)
#

3- Create new service connection to make a connection between ACR-AzureDevOps and Github-AzureDevOps

![Screenshot 2023-02-05 at 8 57 12 AM](https://user-images.githubusercontent.com/113396342/217633014-62678a4b-86c4-440c-a497-0c29e4289f29.png)

![Screenshot 2023-02-05 at 8 57 48 AM](https://user-images.githubusercontent.com/113396342/217633694-1400bf3b-9124-4843-8fd6-9a289aa5bbe7.png)

![Screenshot 2023-02-05 at 8 58 37 AM](https://user-images.githubusercontent.com/113396342/217633906-991d0dc1-4bd3-4c3b-8d25-0ad1460d7c16.png)

#

4- Create a new Pipeline 

![Screenshot 2023-02-05 at 8 56 39 AM](https://user-images.githubusercontent.com/113396342/217632782-b58144bd-7164-4054-97f5-fe6e953e0756.png)
#

