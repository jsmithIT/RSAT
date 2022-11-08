
		If ($featureList[1] -match "NotPresent") {
			Try {
				Write-Host "Activating BitLocker Recovery Tools."
				Add-WindowsCapability –online –Name "Rsat.BitLocker.Recovery.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating BitLocker Recovery Tools."
				Add-WindowsCapability –online –Name "Rsat.BitLocker.Recovery.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[2] -match "NotPresent") {
			Try {
				Write-Host "Activating Certificate Services Tools."
				Add-WindowsCapability –online –Name "Rsat.CertificateServices.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Certificate Services Tools."
				Add-WindowsCapability –online –Name "Rsat.CertificateServices.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[3] -match "NotPresent") {
			Try {
				Write-Host "Activating DHCP Tools."
				Add-WindowsCapability –online –Name "Rsat.DHCP.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating DHCP Tools."
				Add-WindowsCapability –online –Name "Rsat.DHCP.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[4] -match "NotPresent") {
			Try {
				Write-Host "Activating Dns Tools."
				Add-WindowsCapability –online –Name "Rsat.Dns.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Dns Tools."
				Add-WindowsCapability –online –Name "Rsat.Dns.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[5] -match "NotPresent") {
			Try {
				Write-Host "Activating Failover Cluster Management Tools."
				Add-WindowsCapability –online –Name "Rsat.FailoverCluster.Management.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Failover Cluster Management Tools."
				Add-WindowsCapability –online –Name "Rsat.FailoverCluster.Management.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[6] -match "NotPresent") {
			Try {
				Write-Host "Activating File Services Tools."
				Add-WindowsCapability –online –Name "Rsat.FileServices.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating File Services Tools."
				Add-WindowsCapability –online –Name "Rsat.FileServices.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[7] -match "NotPresent") {
			Try {
				Write-Host "Activating Group Policy Management Tools."
				Add-WindowsCapability –online –Name "Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Group Policy Management Tools."
				Add-WindowsCapability –online –Name "Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[8] -match "NotPresent") {
			Try {
				Write-Host "Activating IPAM Client Tools."
				Add-WindowsCapability –online –Name "Rsat.IPAM.Client.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating IPAM Client Tools."
				Add-WindowsCapability –online –Name "Rsat.IPAM.Client.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[9] -match "NotPresent") {
			Try {
				Write-Host "Activating LLDP Tools."
				Add-WindowsCapability –online –Name "Rsat.LLDP.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating LLDP Tools."
				Add-WindowsCapability –online –Name "Rsat.LLDP.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[10] -match "NotPresent") {
			Try {
				Write-Host "Activating Network Controller Tools."
				Add-WindowsCapability –online –Name "Rsat.NetworkController.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Network Controller Tools."
				Add-WindowsCapability –online –Name "Rsat.NetworkController.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[11] -match "NotPresent") {
			Try {
				Write-Host "Activating Network Load Balancing Tools."
				Add-WindowsCapability –online –Name "Rsat.NetworkLoadBalancing.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Network Load Balancing Tools."
				Add-WindowsCapability –online –Name "Rsat.NetworkLoadBalancing.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[12] -match "NotPresent") {
			Try {
				Write-Host "Activating Remote Access Management Tools."
				Add-WindowsCapability –online –Name "Rsat.RemoteAccess.Management.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Remote Access Management Tools."
				Add-WindowsCapability –online –Name "Rsat.RemoteAccess.Management.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[13] -match "NotPresent") {
			Try {
				Write-Host "Activating Remote Desktop Services Tools."
				Add-WindowsCapability –online –Name "Rsat.RemoteDesktop.Services.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Remote Desktop Services Tools."
				Add-WindowsCapability –online –Name "Rsat.RemoteDesktop.Services.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[14] -match "NotPresent") {
			Try {
				Write-Host "Activating Server Manager Tools."
				Add-WindowsCapability –online –Name "Rsat.ServerManager.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Server Manager Tools."
				Add-WindowsCapability –online –Name "Rsat.ServerManager.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[15] -match "NotPresent") {
			Try {
				Write-Host "Activating Shielded VM Tools."
				Add-WindowsCapability –online –Name "Rsat.Shielded.VM.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Shielded VM Tools."
				Add-WindowsCapability –online –Name "Rsat.Shielded.VM.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[16] -match "NotPresent") {
			Try {
				Write-Host "Activating Storage Migration Service Management Tools."
				Add-WindowsCapability –online –Name "Rsat.StorageMigrationService.Management.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Storage Migration Service Management Tools."
				Add-WindowsCapability –online –Name "Rsat.StorageMigrationService.Management.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[17] -match "NotPresent") {
			Try {
				Write-Host "Activating Storage Replica Tools."
				Add-WindowsCapability –online –Name "Rsat.StorageReplica.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Storage Replica Tools."
				Add-WindowsCapability –online –Name "Rsat.StorageReplica.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[18] -match "NotPresent") {
			Try {
				Write-Host "Activating System Insights Management Tools."
				Add-WindowsCapability –online –Name "Rsat.SystemInsights.Management.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating System Insights Management Tools."
				Add-WindowsCapability –online –Name "Rsat.SystemInsights.Management.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[19] -match "NotPresent") {
			Try {
				Write-Host "Activating Volume Activation Tools."
				Add-WindowsCapability –online –Name "Rsat.VolumeActivation.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating Volume Activation Tools."
				Add-WindowsCapability –online –Name "Rsat.VolumeActivation.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}

		If ($featureList[20] -match "NotPresent") {
			Try {
				Write-Host "Activating WSUS Tools."
				Add-WindowsCapability –online –Name "Rsat.WSUS.Tools~~~~0.0.1.0"
			}
			Catch [Microsoft.Dism.Commands.AddWindowsCapabilityCommand] {
				Write-Host "WSUS bypass expired. Reinitializing WSUS bypass and retrying."
				bypass
				Write-Host "Activating WSUS Tools."
				Add-WindowsCapability –online –Name "Rsat.WSUS.Tools~~~~0.0.1.0"
			}
			Catch [System.Exception] {
				Write-Host "Feature failed to activate."
			}
		}
		Else {
			Write-Host "Feature already present."
		}