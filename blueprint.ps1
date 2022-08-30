#https://azure.microsoft.com/en-us/blog/creating-cloud-ready-environments-with-azure-landing-zones/
#https://docs.microsoft.com/en-us/assessments/?id=azure-architecture-review&mode=pre-assessment&session=local
#https://docs.microsoft.com/en-us/azure/architecture/framework/
#https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/landing-zone/terraform-landing-zone#customize-and-deploy-your-first-landing-zone

#Make sure you install the below on your windows machine.

# 1) Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# 2) Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
# 3) Install-Module -Name Az.Blueprint -Verbose

# Organize your subscriptions into groups called "management groups" to help you manage access, policy and compliance across your subscriptions. 
# Management groups give you enterprise-grade management at a large scale no matter what type of subscriptions you might have

#Process or workflow is 

#1) create a management group 
#2) assign a subscription to the management group 
#3) Run this script 
#4) Publish the blueprint - CAF_ISO27001_Shared_Services_Blueprint
#5) Assign the blueprint

$tenantID = Read-Host -Prompt 'Enter Tenant ID'
$subID = Read-Host -Prompt 'Enter Subsription ID'
Connect-AzAccount -TenantId $tenantID
Select-AzSubscription -SubscriptionId $subID
#Invoke-WebRequest 'https://github.com/LiquidGIT-bot/Blueprint/archive/refs/heads/main.zip'  -Outfile -Force .\blueprint.zip
#Expand-Archive -LiteralPath .\blueprint.zip -DestinationPath -Force C:\Reference
$mgmtID = Read-Host -Prompt 'Enter Management Group ID'
Import-AzBlueprintWithArtifact -Name 'CAF_ISO27001_Shared_Services_Blueprint' -ManagementGroupId $mgmtID -InputPath ' C:\reference\blueprint-main'