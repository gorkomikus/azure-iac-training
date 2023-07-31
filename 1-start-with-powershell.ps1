# Connect
Connect-AzAccount

# get the subscription
Get-AzSubscription

# select subscription
$context = Get-AzSubscription -SubscriptionId {Your subscription ID}
Set-AzContext $context

# set-default resource group
Set-AzDefault -ResourceGroupName [sandbox resource group name]