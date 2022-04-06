#!/bin/bash

ARM_SUBSCRIPTION_ID="$(az keyvault secret show --name "ARM-SUBSCRIPTION-ID" --vault-name "az-keyvault-cb" --query "value" --output tsv)"
export ARM_SUBSCRIPTION_ID

ARM_CLIENT_ID="$(az keyvault secret show --name "ARM-CLIENT-ID" --vault-name "az-keyvault-cb" --query "value" --output tsv)"
export ARM_CLIENT_ID

ARM_CLIENT_SECRET="$(az keyvault secret show --name "ARM-CLIENT-SECRET" --vault-name "az-keyvault-cb" --query "value" --output tsv)"
export ARM_CLIENT_SECRET

ARM_TENANT_ID="$(az keyvault secret show --name "ARM-TENANT-ID" --vault-name "az-keyvault-cb" --query "value" --output tsv)"
export ARM_TENANT_ID