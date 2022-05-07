#Note deploying to an RG. To deploy to a subscription and create RGs and multiple RGs use New-AzDeployment
#https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy

$GitBasePath = 'C:\Users\Darryl\OneDrive\Documents\GitHub\AzureMasterClass\Part11IaCandDevOps\ARMTemplates'


#Run same template again but override the type of the storage account
New-AzResourceGroupDeployment -ResourceGroupName RG-00742 `
    -TemplateFile "$GitBasePath\\StorageAccount.json" `
    -TemplateParameterFile "$GitBasePath\\StorageAccount.parameters.json" `
    -StorageAccountType 'Standard_GRS'