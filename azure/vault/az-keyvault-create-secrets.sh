#!/bin/bash

############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "This script helps you to register new values in an Azure Keyvault."
   echo
   echo "Syntax: ./az-keyvault-create-secrets.sh [-s|c|p|t]"
   echo "options:"
   echo "k     The keyvault name"
   echo "s     The subscription id"
   echo "c     The client id"
   echo "p     The client secret"
   echo "t     The tenant id"
   echo "h     Print this help."
   echo
   echo "Use it like: ./az-keyvault-create-secrets.sh -k az-keyvault-name -s someString -c someString -p someString -t someString"
   echo
}


############################################################
# Program                                                  #
############################################################

AZ_VAULT_NAME="az-keyvault-cb"

echo "Registering new secrets into the Azure ${AZ_VAULT_NAME} Keyvault"
echo

while getopts ":k:s:c:p:t:h" option; do
   case $option in
      k) 
        armKeyvaultName=${OPTARG};;
      s) 
        armSubscriptionId=${OPTARG};;
      c) 
        armClientId=${OPTARG};;
      p) 
        armClientSecret=${OPTARG};;
      t) 
        armTenantId=${OPTARG};;
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

if [ ! -v armKeyvaultName ]
then
    echo "Variable armKeyvaultName is unset"
elif [ -z "$armKeyvaultName" ]
then
    echo "armKeyvaultName is set but the value is empty"
else
    echo "Register ARM_SUBSCRIPTION_ID"
    echo
    az keyvault secret set --vault-name "${AZ_VAULT_NAME}" --name "ARM-SUBSCRIPTION-ID" --value "${armSubscriptionId}"
fi

# Testing armSubscriptionId
if [ ! -v armSubscriptionId ]
then
    echo "Variable armSubscriptionId is unset"
elif [ -z "$armSubscriptionId" ]
then
    echo "armSubscriptionId is set but the value is empty"
else
    echo "Register ARM_SUBSCRIPTION_ID"
    echo
    az keyvault secret set --vault-name "${AZ_VAULT_NAME}" --name "ARM-SUBSCRIPTION-ID" --value "${armSubscriptionId}"
fi

# Testing armClientId
if [ ! -v armClientId ]
then
    echo "Variable armClientId is unset"
elif [ -z "$armClientId" ]
then
    echo "armClientId is set but the value is empty"
else
    echo "Register ARM-CLIENT-ID"
    echo
    az keyvault secret set --vault-name "${AZ_VAULT_NAME}" --name "ARM-CLIENT-ID" --value "${armClientId}"
fi

# Testing armClientSecret
if [ ! -v armClientSecret ]
then
    echo "Variable armClientSecret is unset"
elif [ -z "$armClientSecret" ]
then
    echo "armClientSecret is set but the value is empty"
else
    echo "Register ARM-CLIENT-SECRET"
    echo
    az keyvault secret set --vault-name "${AZ_VAULT_NAME}" --name "ARM-CLIENT-SECRET" --value "${armClientSecret}"
fi

# Testing armTenantId
if [ ! -v armTenantId ]
then
    echo "Variable armTenantId is unset"
elif [ -z "$armTenantId" ]
then
    echo "armTenantId is set but the value is empty"
else
    echo "Register ARM-TENANT-ID"
    echo
    az keyvault secret set --vault-name "${AZ_VAULT_NAME}" --name "ARM-TENANT-ID" --value "${armTenantId}"
fi
