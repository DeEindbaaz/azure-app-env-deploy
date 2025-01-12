param location string = 'westeurope'

module virtualNetwork 'br/public:avm/res/network/virtual-network:0.5.2' = {
  name: 'virtualNetworkDeployment'
  params: {
    // Required parameters
    addressPrefixes: [
      '10.0.0.0/16'
    ]
    name: 'VNET01'
    // Non-required parameters
    location: location
  }
}

module networkSecurityGroup 'br/public:avm/res/network/network-security-group:0.5.0' = {
  name: 'networkSecurityGroupDeployment'
  params: {
    // Required parameters
    name: 'NSG01'
    // Non-required parameters
    location: location
  }
}

module vault 'br/public:avm/res/key-vault/vault:0.11.1' = {
  name: 'vaultDeployment'
  params: {
    // Required parameters
    name: uniqueString(resourceGroup().id)
    // Non-required parameters
    enablePurgeProtection: false
    location: location
  }
}

module storageAccount 'br/public:avm/res/storage/storage-account:0.15.0' = {
  name: 'storageAccountDeployment'
  params: {
    // Required parameters
    name: uniqueString(resourceGroup().id)
    // Non-required parameters
    kind: 'BlobStorage'
    location: location
    skuName: 'Standard_LRS'
  }
}

module staticSite 'br/public:avm/res/web/static-site:0.6.1' = {
  name: 'staticSiteDeployment'
  params: {
    // Required parameters
    name: 'wssmin001'
    // Non-required parameters
    location: location
  }
}
