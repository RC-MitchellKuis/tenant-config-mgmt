$uri = "https://graph.microsoft.com/beta/tenantRelationships/managedTenants/configurationSnapshotJobs"

$body = @{
    displayName = "Baseline Snapshot CA Policies"
    description = "Initial baseline snapshot for Conditional Access"
    resources = @(
        @{
            "@odata.type" = "#microsoft.graph.configurationResource"
            resourceType = "microsoft.entra.conditionalAccessPolicy"
        }
    )
} | ConvertTo-Json -Depth 10

$response = Invoke-MgGraphRequest -Method POST -Uri $uri -Body $body

Write-Host "Snapshot job created:"
$response.id
``