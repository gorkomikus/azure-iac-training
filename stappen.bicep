
// 1 Create parameter.
// param pAppServiceAppName string = 'toy-product-launch-1'

// Create variable
//var vAppServicePlanName = 'toy-product-launch-plan'

// step 2
// param location string = 'westus3'
// param storageAccountName string = 'toylaunch${uniqueString(resourceGroup().id)}'
// param appServiceAppName string = 'toylaunch${uniqueString(resourceGroup().id)}'

// var appServicePlanName = 'toy-product-launch-plan'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'toylaunchstoragemvg'
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

// Step 2
// resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
//   name: 'toy-product-launch-plan-starter' 
//   location: 'westeurope'
//   sku: {
//     name: 'F1'
//   }
// }

// resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
//   name: pAppServiceAppName // 1 create parameter was 'toy-product-launch-1'
//   location: 'westeurope'
//   properties: {
//     serverFarmId: appServicePlan.id
//     httpsOnly: true
//   }
// }
