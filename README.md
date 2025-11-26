# IT-Admin-Toolkit-Mac-Provisioning-Project-
A lightweight IT onboarding toolkit designed to automate MacOS device setup for new employees. This project simulates real IT administrator workflows such as installing required applications, enabling basic security settings, and preparing a Mac for first-time use.

Features
- Detects if Homebrew is installed and installs it if missing
- installs essential apps:
  - Google chrome
  - Slack
  - Zoom
  - Visual Studio Code
- Updates Homebrew packages
- Enables the MacOS firewall
- Fully automated setup -> perfect for IT onboarding simulation

Requirements
- MacOS device
- Internet connection
- Terminal access

Usage
1. Download mac_setup.sh
2. Make it executable
   chmod +x mac_setup.sh
   Run the script
     ./mac_setup.sh
