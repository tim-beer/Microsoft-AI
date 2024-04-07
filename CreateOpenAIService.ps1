#Parameters
$OAIRGName = "OAIRG"
$OAIName = "OAIResource"
$OAILocation = "UKSouth"
$OAIType = "OpenAI"
$OAISkuName = "S0"
$OAISkuTier = "Standard"
$SubsriptionID = "xxxxxx-xxxx-xxxx-xxxxx"


#Create ResourceGroup
try {
    # Check if the resource group exists
    Get-AzResourceGroup -Name $OAIRGName -ErrorAction Stop
    Write-Host "Resource group exists. OpenAI will be placed in existing ResourceGroup" -ForegroundColor DarkGreen
}
catch {
    # Resource group does not exist; create it
    New-AzResourceGroup -Name $ResourceGroupName -Location $OAILocation
}


#Create OpenAI Resource
New-AzCognitiveServicesAccount -ResourceGroupName $OAIRGName -Name $OAIName -Location $OAILocation -Type $OAIType -SkuName $OAISkuName


################

#Get
#Get-AzCognitiveServicesAccount

#Remove
#Remove-AzCognitiveServicesAccount -ResourceGroupName $OAIRGName -Name $OAIName