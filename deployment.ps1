# Create resource group
$rg = @{
    Name = 'rg-training-quirijn'
    Location = 'West Europe'
}
New-AzResourceGroup @rg

# Deploy
New-AzResourceGroupDeployment -ResourceGroupName rg-training-name -TemplateFile main-use-module.bicep -WhatIf