$current = Get-MgIdentityConditionalAccessPolicy
$baseline = Get-Content "../configs/entra/conditional-access.json" | ConvertFrom-Json

foreach ($policy in $baseline) {
    $exists = $current | Where-Object { $_.DisplayName -eq $policy.displayName }

    if (-not $exists) {
        Write-Host "[MISSING] $($policy.displayName)" -ForegroundColor Yellow
    } else {
        Write-Host "[OK] $($policy.displayName)" -ForegroundColor Green
    }
}
