# Tenant Configuration Management

Repository for managing Microsoft Entra ID / Intune tenant configuration as code.

## Scope
- Conditional Access
- Intune policies
- Tenant baseline configuration

## Approach
- Configuration stored as JSON
- Managed via Microsoft Graph API
- Automated via pipelines

## Usage

1. Authenticate to Microsoft Graph
2. Export current configuration
3. Compare with baseline
4. Apply changes if required

## Requirements
- PowerShell 7
- Microsoft Graph PowerShell SDK
