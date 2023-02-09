# Deploy-AppRun-webapp-to-Azure-App-Service-using-Azure-Pipelines

Prerequisites :
- An Azure account with an active subscription. <a href="https://azure.microsoft.com/en-us/free/?WT.mc_id=A261C142F" target="_blank">Create an account for free.</a> 
- An Azure DevOps organization. <a href="https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/pipelines-sign-up?view=azure-devops" target="_blank">Create an account for free.</a> 

# Project Task and Steps:
1- Create a Azure Container Registry >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/acr" target="_blank">ACR Terraspace Codes</a> 

![Screenshot 2023-02-05 at 8 52 24 AM](https://user-images.githubusercontent.com/113396342/217688610-006dc446-8ecf-4a3d-b15f-f154b2cf40b5.png)

#

2- Create a Azure DevOps Project 

![Screenshot 2023-02-08 at 9 50 34 PM](https://user-images.githubusercontent.com/113396342/217705361-28e34b39-6b74-4bd2-9e87-33e85e2cddec.png)
#

3- Create new service connection to make a connection between ACR-AzureDevOps and Github-AzureDevOps
   
   - Project Settings > Service Connections > Create service connection 

![Screenshot 2023-02-05 at 8 57 48 AM](https://user-images.githubusercontent.com/113396342/217633694-1400bf3b-9124-4843-8fd6-9a289aa5bbe7.png)

![Screenshot 2023-02-05 at 8 58 37 AM](https://user-images.githubusercontent.com/113396342/217633906-991d0dc1-4bd3-4c3b-8d25-0ad1460d7c16.png)

#

4- Create a new Pipeline 

![Screenshot 2023-02-08 at 9 51 44 PM](https://user-images.githubusercontent.com/113396342/217705514-fa03c6cc-1150-488a-ae83-9d5b2d1b6e5f.png)
#

5-  Walk through the steps of the wizard by first selecting GitHub as the location of your source code. 

![image](https://user-images.githubusercontent.com/113396342/217705549-5fd7f317-ab84-477b-bb88-cd455fe9f488.png)
#
6- When the list of repositories appears, select your repository. 
#

7- When the Configure tab appears, select Docker build and push an image to ACR.

![image](https://user-images.githubusercontent.com/113396342/217705765-6f70232c-84f6-49ef-93d4-2a1e424cb20d.png)
#

8- Pipeline has been created

![Screenshot 2023-02-08 at 9 54 13 PM](https://user-images.githubusercontent.com/113396342/217705968-fbb18c1a-a7e6-4f36-899c-576360eda197.png)

    - Image has been deployed to ACR

![Screenshot 2023-02-07 at 9 46 37 AM](https://user-images.githubusercontent.com/113396342/217706090-ac915e00-e5b8-4459-9d20-6e6d6a75ef0d.png)
#

# RELEASE TO AZURE WEB APPS

- Create a Azure Linux Web App for Containers >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/apprun_linux_webapp" target="_blank">App Service Terraspace Codes</a> 

![Screenshot 2023-02-08 at 9 59 04 PM](https://user-images.githubusercontent.com/113396342/217706618-9422aa6a-b6c3-401c-9578-165ca96360d8.png)
#

1- Create a Release Pipeline from the Release tab of the Pipeline

![Screenshot 2023-02-08 at 9 58 17 PM](https://user-images.githubusercontent.com/113396342/217706509-32479bff-9225-4ce1-bca8-609f8b8f2dda.png)
#

2- Select Azure App Service deployment

![Screenshot 2023-02-05 at 9 24 59 AM](https://user-images.githubusercontent.com/113396342/217689291-709b0b52-0965-41c0-ac6c-86b159c9e55b.png)
#

3- Add the artifact 

![Screenshot 2023-02-08 at 10 00 01 PM](https://user-images.githubusercontent.com/113396342/217706865-30a05d40-b443-42b1-87ca-1db7dbae64ed.png)

    - Do not forget to enable continuous deployment trigger
    
![Screenshot 2023-02-08 at 10 00 58 PM](https://user-images.githubusercontent.com/113396342/217706971-58487459-6c86-44ad-ac4b-4ab73172ffe9.png)
#

4- Make the configurations of the stage 
   
    - Save and click on Create release
    
![Screenshot 2023-02-08 at 10 02 05 PM](https://user-images.githubusercontent.com/113396342/217707190-5bfe7ddf-056e-417a-9fc6-465cb52fe050.png)

![Screenshot 2023-02-08 at 10 03 11 PM](https://user-images.githubusercontent.com/113396342/217707248-7c5888fc-7e20-4367-b62d-baba7681d856.png)
#

- Release pipeline is succesfull

![Screenshot 2023-02-08 at 10 03 47 PM](https://user-images.githubusercontent.com/113396342/217707351-5ed0eaa7-fb4f-4adf-97e2-7ba342b81eb0.png)
#

- Logs of the stage can be viewed from logs tab

![Screenshot 2023-02-07 at 9 48 07 AM](https://user-images.githubusercontent.com/113396342/217707397-9b6353e6-8b4e-4d01-9769-1ddf982766d6.png)
#

- Here is the working website throug Azure Web App
![Screenshot 2023-02-07 at 9 45 47 AM](https://user-images.githubusercontent.com/113396342/217707424-a12c15aa-87e2-4e66-a6c6-fa594437665a.png)
