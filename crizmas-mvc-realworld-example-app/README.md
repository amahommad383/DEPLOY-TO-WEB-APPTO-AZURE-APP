# Deploy-Angular-webapp-to-Azure-App-Service-using-Azure-Pipelines

Prerequisites :
- An Azure account with an active subscription. <a href="https://azure.microsoft.com/en-us/free/?WT.mc_id=A261C142F" target="_blank">Create an account for free.</a> 
- An Azure DevOps organization. <a href="https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/pipelines-sign-up?view=azure-devops" target="_blank">Create an account for free.</a> 

# Project Task and Steps:
1- Create a Azure Container Registry >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/acr" target="_blank">ACR Terraspace Codes</a> 

![Screenshot 2023-02-05 at 8 52 24 AM](https://user-images.githubusercontent.com/113396342/217688610-006dc446-8ecf-4a3d-b15f-f154b2cf40b5.png)

#

2- Create a Azure DevOps Project 

![Screenshot 2023-02-08 at 9 32 37 PM](https://user-images.githubusercontent.com/113396342/217702712-fcc38fe6-2a7c-46f5-990d-02cd65e778a4.png)

#

3- Create new service connection to make a connection between ACR-AzureDevOps and Github-AzureDevOps
   
   - Project Settings > Service Connections > Create service connection 

![Screenshot 2023-02-05 at 8 57 48 AM](https://user-images.githubusercontent.com/113396342/217633694-1400bf3b-9124-4843-8fd6-9a289aa5bbe7.png)

![Screenshot 2023-02-05 at 8 58 37 AM](https://user-images.githubusercontent.com/113396342/217633906-991d0dc1-4bd3-4c3b-8d25-0ad1460d7c16.png)

#

4- Create a new Pipeline 

![Screenshot 2023-02-07 at 10 46 32 AM](https://user-images.githubusercontent.com/113396342/217702854-ce6ffdad-c92c-47cc-8cc7-1ee0e02b467a.png)

#

5-  Walk through the steps of the wizard by first selecting GitHub as the location of your source code. 

![Screenshot 2023-02-08 at 9 34 22 PM](https://user-images.githubusercontent.com/113396342/217702967-f0e49e82-1a1d-4dc4-a092-3669f84fe39a.png)

#
6- When the list of repositories appears, select your repository. 

#

7- When the Configure tab appears, select Docker build and push an image to ACR.

![Screenshot 2023-02-07 at 10 47 53 AM](https://user-images.githubusercontent.com/113396342/217703334-4ffc2f2f-2f8d-489f-9d48-de01f541ce83.png)
#

8- Build and Push job has been done.

![Screenshot 2023-02-08 at 9 37 21 PM](https://user-images.githubusercontent.com/113396342/217703432-9ca79a31-44b9-4de3-9afc-e076a6b2aeb2.png)

    - Image has been deployed to ACR
#

# RELEASE TO AZURE WEB APPS

- Create a Azure Linux Web App for Containers >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/apprun_linux_webapp" target="_blank">App Service Terraspace Codes</a> 

![Screenshot 2023-02-07 at 10 54 17 AM](https://user-images.githubusercontent.com/113396342/217703693-245f182b-12f3-4894-9f17-73173554bd6c.png)
#

1- Create a Release Pipeline from the Release tab of the Pipeline

![Screenshot 2023-02-07 at 10 54 40 AM](https://user-images.githubusercontent.com/113396342/217703732-0b8761cb-a1ba-4c05-8f8a-9b41af0a70db.png)
#

2- Select Azure App Service deployment

![Screenshot 2023-02-05 at 9 24 59 AM](https://user-images.githubusercontent.com/113396342/217689291-709b0b52-0965-41c0-ac6c-86b159c9e55b.png)
#

3- Add the artifact 

![Screenshot 2023-02-07 at 11 13 11 AM](https://user-images.githubusercontent.com/113396342/217703778-2d41bb58-5b53-426b-a280-87370dd1e7ec.png)

    - Do not forget to enable continuous deployment trigger
    
![Screenshot 2023-02-07 at 11 13 25 AM](https://user-images.githubusercontent.com/113396342/217703878-c0f1e3a7-a765-40d9-9bbf-c7e332d763d4.png) 
#

4- Make the configurations of the stage 
   
    - Save and click on Create release
    
![Screenshot 2023-02-07 at 11 14 22 AM](https://user-images.githubusercontent.com/113396342/217704011-8b980239-08b5-486b-b806-7db69421f896.png)

#

- Release pipeline is succesfull

![Screenshot 2023-02-08 at 9 43 35 PM](https://user-images.githubusercontent.com/113396342/217704230-1762e4bf-a684-4848-9037-1a6b65c0618d.png)
#

- Logs of the stage can be viewed from logs tab

![Screenshot 2023-02-07 at 11 46 42 AM](https://user-images.githubusercontent.com/113396342/217704256-b218b895-40c3-4560-bab5-1969d4b4649a.png)
#

- Here is the working website throug Azure Web App

![Screenshot 2023-02-07 at 11 46 22 AM](https://user-images.githubusercontent.com/113396342/217704292-a16844ed-933f-4030-a46e-b7a59cd0b51a.png)
#

# TESTING OUR AUTO RELEASE PIPELINE

- I changed the title and sentence under title on home page

![Screenshot 2023-02-07 at 11 48 53 AM](https://user-images.githubusercontent.com/113396342/217704581-989861da-02e4-4133-a566-cc7e8178c259.png)
#

- Pipeline has been trigged as changed code just pushed to the Github repository

![Screenshot 2023-02-07 at 11 50 11 AM](https://user-images.githubusercontent.com/113396342/217704628-c2f69172-447e-4be9-a75e-59831000d367.png)
#

- After pipeline is done , release pipeline has been automaticly triggered.

![Screenshot 2023-02-07 at 11 52 08 AM](https://user-images.githubusercontent.com/113396342/217704669-f36580e3-80e5-4d88-9dd2-fff6c78f652b.png)
#

- Release pipeline succesfully deployed

![Screenshot 2023-02-08 at 9 46 54 PM](https://user-images.githubusercontent.com/113396342/217704777-fb81c010-f383-43a6-a5e4-091a01688670.png)
#

# RESULT

![Screenshot 2023-02-07 at 11 54 27 AM](https://user-images.githubusercontent.com/113396342/217704809-2cafafbd-7010-4378-b8b8-35ff50f6295d.png)

