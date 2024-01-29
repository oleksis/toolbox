oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\microverse-power.omp.json" | Invoke-Expression
Import-Module -Name posh-git
Import-Module -Name Terminal-Icons
Invoke-Expression -Command $(gh completion -s powershell | Out-String)
Import-Module -Name Microsoft.PowerShell.Security
$JAVA_HOME=$env:JAVA_HOME
