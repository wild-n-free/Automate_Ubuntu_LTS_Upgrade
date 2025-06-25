# Upgrade to Latest LTS - Automation Script

This script automates the process of upgrading a Debian-based Linux system (like Ubuntu) to the **latest Long-Term Support (LTS)** release.

## Features

- Updates package lists
- Upgrades installed packages
- Performs a distribution upgrade
- Ensures the system is configured to follow LTS releases
- Initiates the release upgrade process
- Displays system release information after upgrade

## Requirements

- A Debian-based system (e.g., Ubuntu)
- `sudo` privileges
- Recommended: Backup important files before running

## Usage

1. Clone this repository or download the script directly.

2. Make the script executable:
   ```bash
   chmod +x upgrade-to-lts.sh

3. ./upgrade-to-lts.sh

4. Follow any prompts during the release upgrade.

## Notes

The script modifies /etc/update-manager/release-upgrades to ensure Prompt=lts is set.

It uses do-release-upgrade, which may prompt for user interaction.

You may need to reboot the system after the upgrade completes.

## Example Output

```bash
Updating package lists...
Upgrading installed packages...
Performing distribution upgrade...
Installing update-manager-core if not already installed...
Ensuring release upgrades are set to LTS...
Starting release upgrade process...
Displaying new system release info:
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.4 LTS
Release:        22.04
Codename:       jammy
```


## License

This script is provided as-is, without warranty. Use at your own risk.
