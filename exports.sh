export ARM_USE_AZUREAD=true
export ARM_SUBSCRIPTION_ID=$(az account show --query id -o tsv)
