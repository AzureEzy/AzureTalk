Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionName "abc"
#Get-AzurermLocation
#create a new resource group
$rg="AzureTalkRG2"
New-AzureRmResourceGroup -Name $rg -Location southcentralus
#Create a new VNet
$vnet=New-AzureRmVirtualNetwork -ResourceGroupName $rg -Name AzureTalkVNet1 -AddressPrefix 192.168.1.0/24 `
-Location southcentralus
#Add a subnet to the new VNet
Add-AzureRmVirtualNetworkSubnetConfig -Name FrontEnd -VirtualNetwork $vnet -AddressPrefix 192.168.1.0/26
Add-AzureRmVirtualNetworkSubnetConfig -Name BackEnd -VirtualNetwork $vnet -AddressPrefix 192.168.1.64/26
Add-AzureRmVirtualNetworkSubnetConfig -Name GatewaySubnet -VirtualNetwork $vnet -AddressPrefix 192.168.1.128/28
#save the changes to Azure Virtual Network
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet
#Create a new VNet
$vnet=New-AzureRmVirtualNetwork -ResourceGroupName $rg -Name AzureTalkVNet2 -AddressPrefix 192.168.2.0/24 `
-Location southcentralus
#Add a subnet to the new VNet
Add-AzureRmVirtualNetworkSubnetConfig -Name FrontEnd -VirtualNetwork $vnet -AddressPrefix 192.168.2.0/26
Add-AzureRmVirtualNetworkSubnetConfig -Name BackEnd -VirtualNetwork $vnet -AddressPrefix 192.168.2.64/26
Add-AzureRmVirtualNetworkSubnetConfig -Name GatewaySubnet -VirtualNetwork $vnet -AddressPrefix 192.168.2.128/28
#save the changes to Azure Virtual Network
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet
$vnet=New-AzureRmVirtualNetwork -ResourceGroupName $rg -Name AzureTalkVNet3 -AddressPrefix 192.168.3.0/24 `
-Location southcentralus
#Add a subnet to the new VNet
Add-AzureRmVirtualNetworkSubnetConfig -Name FrontEnd -VirtualNetwork $vnet -AddressPrefix 192.168.3.0/26
Add-AzureRmVirtualNetworkSubnetConfig -Name BackEnd -VirtualNetwork $vnet -AddressPrefix 192.168.3.64/26
Add-AzureRmVirtualNetworkSubnetConfig -Name GatewaySubnet -VirtualNetwork $vnet -AddressPrefix 192.168.3.128/28
#save the changes to Azure Virtual Network
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet
#Create a new VNet
$vnet=New-AzureRmVirtualNetwork -ResourceGroupName $rg -Name AzureTalkVNet4 -AddressPrefix 192.168.4.0/24 `
-Location southcentralus
#Add a subnet to the new VNet
Add-AzureRmVirtualNetworkSubnetConfig -Name FrontEnd -VirtualNetwork $vnet -AddressPrefix 192.168.4.0/26
Add-AzureRmVirtualNetworkSubnetConfig -Name BackEnd -VirtualNetwork $vnet -AddressPrefix 192.168.4.64/26
Add-AzureRmVirtualNetworkSubnetConfig -Name GatewaySubnet -VirtualNetwork $vnet -AddressPrefix 192.168.4.128/28
#save the changes to Azure Virtual Network
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet