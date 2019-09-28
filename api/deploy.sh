#!/bin/sh

export PROJECT_ID=cojica-template

##############
# deploy api #
##############
gcloud builds submit --tag gcr.io/${PROJECT_ID}/api --project ${PROJECT_ID}
gcloud beta run deploy api --image gcr.io/${PROJECT_ID}/api --region us-central1 --allow-unauthenticated --platform managed --project ${PROJECT_ID}

###################
# deploy frontend #
###################
#cd ../frontend
#ionic build --prod
#firebase deploy
