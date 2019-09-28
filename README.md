# Cojica Template

This project is starter template for firebase application.

- frontend 
  - Ionic
  - Firebase Hostings
- api
  - Golang/Gin
  - Cloud Run
  - Firebase Hostings

# Usage

## Boot up appliation in local envirionment

1.  boot up frontend application

    ```
    cd frontend && ionic serve
    ```

2.  boot up backend application

    ```
    cd api && go run api
    ```

## Deploy application on firebase

1. Create your firebase project

    https://firebase.google.com/docs/web/setup?hl=ja

2. For using Cloud Run, set up billing for your project and enable the API and install the SDK 
    
    https://firebase.google.com/docs/hosting/cloud-run#before_you_begin
    
    https://console.cloud.google.com/apis/library/cloudbuild.googleapis.com

2. Initialize your firebase 

    ```
    $ npm install -g firebase-tools
    $ firebase login
    ```
    
3. Overwrite projects.default with your project ID in .firebaserc

    ```
    {
      "projects": {
        "default": "your-project-id"
      }
    }
    ```
    
4. Overwrite projects.default your project ID in api/deploy.sh
    
    ```
    export PROJECT_ID=your-project-id
    ``` 
    
5. Deploy

    ```
    $ cd api && sh deploy.sh
    $ cd ../frontend && sh deploy.sh
    ```
