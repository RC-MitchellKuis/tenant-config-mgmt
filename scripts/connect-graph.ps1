param(
    [string[]]$Scopes = @(
        "Policy.Read.All",
        "Policy.ReadWrite.ConditionalAccess",
        "DeviceManagementConfiguration.ReadWrite.All"
    )
)

Write-Host "Connecting to Microsoft Graph..."

Connect-MgGraph -Scopes $Scopes

Write-Host "Connected to tenant:" (Get-MgContext).TenantId