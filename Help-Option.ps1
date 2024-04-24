<#
.SYNOPSIS
my synopsys

.DESCRIPTION
This is the description for the script.
BLA2

.PARAMETER -stringargument
This is my param.

.PARAMETER -boolargument
This is my switch.

.EXAMPLE
./Help-Option.ps1 -stringargument jim -boolargument

.EXAMPLE
Get-Help ./Help-Option.ps1

.EXAMPLE
Get-Help -Full ./Help-Option.ps1
#>

# This will demo Comment Based Help in a powershell script

# Usage 
# Get-Help .\Help-Option.ps1
#
# Get-Help 

param (
    [string]$StringArgument,
    [switch]$BoolArgument
)

Write-Host "StringArgument is $StringArgument"

if ($BoolArgument)
{
    Write-Host "BoolArgument is true"
} else {
    Write-Host "BoolArgument is false"
}