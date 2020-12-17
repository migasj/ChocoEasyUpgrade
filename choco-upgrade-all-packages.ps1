###############################
# NAME: choco-upgrade-all-packages.ps1
# DESCRIPTION: Easy machine setup with chocolately
# INSTRUCTIONS:
#	0. Ensure this script is in the same directory as the desired packages.config
#	1. Open an elevated powershell instance
# 	2. Install chocolately. Run the following:
#		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#	3. Install packages in the packages.config. Run this file in powershell:
#		choco-upgrade-all-packages.ps1
# LOG:
#	Created 2020/12/17 John Migas
###############################
$scriptPath = split-path -parent $MyInvocation.MyCommand.Path
$configFilePath = $scriptPath + "\packages.config"
[xml]$packagesXML = gc $configFilePath
$packagesXML.packages.package.id | ForEach-Object {
	if($_ -ne ''){
		choco upgrade $_ --yes
	}
}