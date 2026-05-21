$scopes = @(
    "ConfigurationMonitoring.ReadWrite.All",
    "Policy.Read.All",
    "Directory.Read.All"
)

Connect-MgGraph -Scopes $scopes

Write-Host "Connected to tenant:" (Get-MgContext).TenantId