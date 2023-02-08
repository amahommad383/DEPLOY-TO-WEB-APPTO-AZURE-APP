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
   
   - Project Settings > Service Connections > Create service connection 

![Screenshot 2023-02-05 at 8 57 12 AM](https://user-images.githubusercontent.com/113396342/217633014-62678a4b-86c4-440c-a497-0c29e4289f29.png)

![Screenshot 2023-02-05 at 8 57 48 AM](https://user-images.githubusercontent.com/113396342/217633694-1400bf3b-9124-4843-8fd6-9a289aa5bbe7.png)

![Screenshot 2023-02-05 at 8 58 37 AM](https://user-images.githubusercontent.com/113396342/217633906-991d0dc1-4bd3-4c3b-8d25-0ad1460d7c16.png)

#

4- Create a new Pipeline 

![Screenshot 2023-02-05 at 8 56 39 AM](https://user-images.githubusercontent.com/113396342/217632782-b58144bd-7164-4054-97f5-fe6e953e0756.png)
#

5-  Walk through the steps of the wizard by first selecting GitHub as the location of your source code. 

![Screenshot 2023-02-05 at 9 10 47 AM](https://user-images.githubusercontent.com/113396342/217638839-0d15cdc5-4775-4c7e-bab2-59274c42692f.png)
#
6- When the list of repositories appears, select your repository. 

![Screenshot 2023-02-05 at 9 10 57 AM](https://user-images.githubusercontent.com/113396342/217639058-7971399c-4d8d-4b30-9c21-d935837f5dc8.png)
#

7- When the Configure tab appears, select Docker build and push an image to ACR.

![Screenshot 2023-02-05 at 9 11 04 AM](https://user-images.githubusercontent.com/113396342/217639369-3de7ef44-3c35-4ebb-a93b-be832263e750.png)
#

8- Build and Push job has been done.

![Screenshot 2023-02-05 at 9 22 56 AM](https://user-images.githubusercontent.com/113396342/217639635-1b75cd55-36c8-4b94-910c-6d6fa7c21ac2.png)

    - Image has been deployed to ACR

![Screenshot 2023-02-05 at 9 23 38 AM](https://user-images.githubusercontent.com/113396342/217639788-e040ab94-5a69-409d-804d-fb87388d33ba.png)
#

# RELEASE TO AZURE WEB APPS
