# How to pass in arguments

# To run
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted
# .\Arguments.ps1 -MyString jim -MySwitch -MyList one,two,three

# Output should be :-
# PS C:\dev\Powershell-examples> .\Arguments.ps1 -MyString jim -MySwitch -MyList one,two,three
# MyString is jim
# MySwitch is True
# one two three is one two three
# MySwitch is true
# one,
# two,
# three,
# ------------------------


param (
    [string]$MyString,
    [switch]$MySwitch,
    [string[]]$MyList
)

Write-Host "MyString is $MyString"
WRite-Host "MySwitch is $MySwitch"
Write-Host "$MyList is $MyList"

if ($MySwitch)
{
    Write-Host "MySwitch is true"
} else {
    Write-Host "MySwitch is false"
}

foreach ($Item in $MyList)
{
    Write-Host ("$Item,")
}

Write-Host("------------------------")