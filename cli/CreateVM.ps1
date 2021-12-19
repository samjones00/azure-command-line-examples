az group create --name azure-fundamentals-vm-cli-demo --location uksouth

az group list --output table

az vm create `
--name vm3 `
--location uksouth `
--resource-group azure-fundamentals-vm-cli-demo `
--image Win2019Datacenter `
--public-ip-sku Standard `
--admin-username sam `
--admin-password Password123!


az vm auto-shutdown `
-g azure-fundamentals-vm-cli `
-n vm2 `
--time 2000

az group delete --name azure-fundamentals-vm-cli-demo