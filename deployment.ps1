# Create resource group
$rg = @{
    Name = 'rg-training-name'
    Location = 'West Europe'
}
New-AzResourceGroup @rg

# Deploy
New-AzResourceGroupDeployment -ResourceGroupName rg-training-powershell -TemplateFile main.bicep #-WhatIf