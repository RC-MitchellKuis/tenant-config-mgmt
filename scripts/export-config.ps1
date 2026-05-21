Write-Host "Exporting Conditional Access policies..."

$policies = Get-MgIdentityConditionalAccessPolicy

$exportPath = "../configs/entra/conditional-access.json"

$policies | ConvertTo-Json -Depth 10 | Out-File $exportPath

Write-Host "Export completed: $exportPath"