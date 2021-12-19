# Azure CLI Examples

Install Azure CLI  
https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

Connect to Azure account  
```Powershell 
az login
```

Get Subscriptions  
```Powershell 
az account list
```

Change Subscription  
```Powershell 
az account set --subscription SUBSCRIPTION-ID
````

Create Resource Group  
```Powershell 
az group create --resource-group azure-fundamentals-vm-cli --location uksouth
```

Create VM
``` Powershell
az vm create `
--name vm2 `
--location uksouth `
--resource-group azure-fundamentals-vm-cli `
--image Win2019Datacenter `
--public-ip-sku Standard `
--admin-username sam `
--admin-password Password123!
```

Get IP Address  
```Powershell 
az vm list-ip-addresses --name vm2 --output table
```

Allow traffic on port 80
```Powershell
az vm open-port --port 80, 443 --resource-group azure-fundamentals-vm-cli --name vm2
```

Enable auto-shutdown
```Powershell
az vm auto-shutdown `
-g azure-fundamentals-vm-cli `
-n vm2 `
--time 2000
```

Remove Resource Group  
```Powershell 
az group delete --resource-group azure-fundamentals-vm-cli
```
