# ChocoEasyUpgrade
Use chocolately packages.config file for initial installation and continued updates.
## Chocaltey standard packages.config installation
This is the standard way to use chocolately and a packages.config file. This can be skipped because the command "upgrade" installs packages which are missing.
1. Open an elevated powershell instance
2. Install chocolately. Use their website for the most up to date instructions. As of this writing it is the below:
..Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
3. Install packages in this file. Run the following:
..choco upgrade [LOCAL_FILEPATH]\packages.config --yes
## Chocolately Easy packages.config Upgrade
1. Ensure this script is in the same directory as the desired packages.config
2. Open an elevated powershell instance
3. Install chocolately. Use their website for the most up to date instructions. As of this writing it is the below:
..Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
4. Install packages in the packages.config. Run this file in powershell:
..choco-upgrade-all-packages.ps1