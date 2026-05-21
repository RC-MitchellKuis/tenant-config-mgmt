$path = "../configs/entra/conditional-access.json"

$policies = Get-Content $path | ConvertFrom-Json

foreach ($policy in $policies) {
    Write-Host "Processing policy:" $policy.displayName

    # voorbeeld: check of policy bestaat
    $existing = Get-MgIdentityConditionalAccessPolicy | Where-Object {
        $_.DisplayName -eq $policy.displayName
    }

    if (-not $existing) {
        Write-Host "Creating policy..."
        # NOTE: hier moet je mapping aanpassen
        New-MgIdentityConditionalAccessPolicy -BodyParameter $policy
    }
}