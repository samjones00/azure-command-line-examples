# Azure Powershell Module

Install Azure Powershell Module
```Powershell 
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
```

Connect to Azure account  
```Powershell 
Connect-AzAccount
```

Get Subscriptions  
```Powershell 
Get-AzSubscription
```

Change Subscription  
```Powershell 
Set-AzContext SUBSCRIPTION-ID
````

Create Resource Group  
```Powershell 
New-AzResourceGroup -Name myResourceGroup -Location EastUS
```

Create VM
``` Powershell
New-AzVm `
    -ResourceGroupName "myResourceGroup" `
    -Name "myVM" `
    -Location "East US" `
    -VirtualNetworkName "myVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName "myPublicIpAddress" `
    -OpenPorts 80,3389
```

Get IP Address  
```Powershell 
Get-AzPublicIpAddress -ResourceGroupName "rg-stateautomation" | Select "IpAddress"
```

Remove Resource Group  
```Powershell 
Remove-AzResourceGroup -Name myResourceGroup
```