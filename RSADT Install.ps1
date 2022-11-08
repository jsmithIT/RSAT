<#

.SYNOPSIS
A powershell script to activate the RSADT feature.

.DESCRIPTION
This powershell script will quietly activate the RSADT feature for AD.
Authors: JBSMITH
Version: 1.0.4

#>

##* ANCHOR: Global Variables

# WSUS registry key location.
$RegKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"

# Stores the WSUS registry key value
$UseWUServer = Get-ItemProperty -Path "$RegKey" -Name "UseWUServer" | Select-Object -ExpandProperty UseWUServer

##* ANCHOR: Bypass WSUS Function
function bypass() {

	# Bypasses the WSUS by editing the server registry value.
	Write-Host "Bypassing the WSUS."
	Set-ItemProperty -Path "$RegKey" -Name "UseWUServer" -Value 0
	Restart-Service "Windows Update"
}

# Calls the bypass function
bypass

##* ANCHOR: Activate Features Function
function activation() {

	# String to get the version and then create a string with only the necessary characters.
	Write-Host "Checking Windows Build."
	[string]$Version = [System.Environment]::OSVersion.Version
	$Build = $Version.SubString(5, 5)

	# If the PC is running on 20H2, run this function.
	If ($Build -eq "19042") {
		Write-Host "PC is running on 20H2."

		# Determines if features are present.
		# Extracts AD's presence from string.
		Write-Host "Detecting RSADT feature presences."
		[string]$Features = Get-WindowsCapability -Name RSAT* -Online | Select-Object -ExpandProperty State
		$ADStatus = $Features.SubString(11, 10)

		# Check if the feature is present.
		# If the feature is no present, activate it.
		# If it fails to activate because the WSUS bypass expired, bypass the WSUS again.
		# Else, log that the feature is already present.
		# Repeat for all features.
		Write-Host "Activating RSADT feature."
		If ($ADStatus -match "NotPresent") {
			Try {
				Write-Host "Activating Active Directory DS-LDS Tools."
				Add-WindowsCapability –online –Name "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Active Directory DS-LDS Tools."
				Add-WindowsCapability –online –Name "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}
	}
}

# Calls the activation function
activation

# Reininstates the WSUS by editing the server registry value.
Get-WindowsCapability -Name "RSAT*" -Online | Add-WindowsCapability –Online
Set-ItemProperty -Path "$RegKey" -Name "UseWUServer" -Value $UseWUServer
Restart-Service "Windows Update"