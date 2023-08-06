param location string

resource vnet 'Microsoft.Network/virtualNetworks@2023-02-01' = {
  name: 'vnet-bicep'
  location: location
  properties: {
    addressSpace: {
       addressPrefixes: [
        '10.10.10.0/24'
       ]
    }
    subnets: [
       {
         name: 'subnet-1'
         properties: {
           addressPrefix: '10.10.10.0/24'
         }
       }
    ]
  }
}
