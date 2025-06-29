#!/bin/sh

RESOURCE_GROUP_NAME="devops-journey-vv"
STORAGE_ACCOUNT_NAME="Azure-AKS-CICD-Deployment"

# Create Resource Group
az group create -l uksouth -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l uksouth --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME
