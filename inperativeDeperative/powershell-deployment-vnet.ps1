# login matlab
Connect-AzAccount -Tenant 'b739c965-4545-429d-b1b2-1ff84c1b4b76'
Get-AzContext

# Create resource group
$rg = @{
    Name = 'rg-training-powershell'
    Location = 'West Europe'
}
New-AzResourceGroup @rg

# Create vnet
$vnet = @{
    Name = 'vnet-1'
    ResourceGroupName = 'rg-training-powershell'
    Location = 'West Europe'
    AddressPrefix = '10.10.10.0/24'
}
$virtualNetwork = New-AzVirtualNetwork @vnet

# create subnet
$subnet = @{
    Name = 'subnet-1'
    VirtualNetwork = $virtualNetwork
    AddressPrefix = '10.10.10.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate subnet to vnet
$virtualNetwork | Set-AzVirtualNetwork