# ⚡ WSL + VSCode Development Environment Setup Guide

A step‑by‑step onboarding guide to set up a modern development environment using **WSL (Ubuntu LTS)**, **Windows Terminal**, and **VSCode**.

## 1. Ensure Windows Terminal
Check if **Windows Terminal** is installed. If not, install via Microsoft Store:

```powershell
winget install --id Microsoft.WindowsTerminal -e
```

## 2. Install VS Code (if not present)
```powershell
winget install --id Microsoft.VisualStudioCode -e
```

## 3. Install WSL (Ubuntu LTS)
Run in **PowerShell (Admin)**:

```powershell
wsl --install -d Ubuntu
```

- Restart if prompted.  
- Verify Ubuntu profile appears in **Windows Terminal** settings.

## 4. Update & Upgrade Ubuntu + Core Tools
Inside Ubuntu (via Windows Terminal):

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential curl ca-certificates dnsutils iputils-ping
```

## 5. Install Remote Development Extension Pack (VSCode)
```powershell
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
```

## 6. Install Zsh + Oh My Zsh + Powerlevel10k
Inside Ubuntu:

```bash
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

Update `~/.zshrc`:

```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git z sudo docker kubectl node npm python history-substring-search)
```

Reload:

```bash
source ~/.zshrc
```

## 7. Install Essential Tools on Ubuntu

### Git + SSH
```bash
sudo apt install git -y
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```
(Add key to GitHub/GitLab.)

### jq + yq
```bash
sudo apt install jq -y
sudo snap install yq
```

### NVM + Node LTS
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc
nvm install 18
nvm install 20
nvm install 22
nvm install 24
```

### AWS CLI
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

Let's bind the Windows (host) system `.aws` directory to Ubuntu (WSL). This makes it easy to set up credentials at once and share them across the systems.
```bash
ln -s /mnt/c/Users/<host-user>/.aws ~/.aws
```
The above command creates a soft link `~/.aws` that points to `/mnt/c/Users/<host-user>/.aws`. - That way, your WSL AWS CLI uses the same config as Windows.

### kubectl
```bash
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
```

## 8. Set Nano as Default Editor
```bash
echo 'export EDITOR=nano' >> ~/.zshrc
git config --global core.editor "nano"
source ~/.zshrc
```

# 📘 WSL Cheatsheet

### 🐧 Install a distro
```powershell
wsl --list                  # List installed distros (alias: `wsl -l`)
wsl --list --online         # List available distros (alias: `wsl -l -o`)
wsl --install --distribution <Distro>  # Install a distro (alias: `wsl --install -d <distro>` )
```

### ▶️ Start / Stop WSL
```powershell
wsl                         # Start default WSL distro
wsl -d <Distro>             # Start specific distro
wsl --terminate <Distro>    # Stop specific distro
```

### ⏻ Shutdown All WSL Instances
```powershell
wsl --shutdown
```

### 📦 Export / Import WSL Instance
```powershell
# Export 'Ubuntu' instance to tar file
wsl --export Ubuntu ubuntu-backup.tar

# Import into new location as 'UbuntuNew'
wsl --import UbuntuNew D:\WSL\UbuntuNew ubuntu-backup.tar
```

### 📂 Change Storage Location
```powershell
wsl --export Ubuntu ubuntu.tar
wsl --unregister Ubuntu
wsl --import Ubuntu D:\WSL\Ubuntu ubuntu.tar
```

### 🗂️ List Installed Distros & Status
```powershell
wsl -l          # List installed distros
wsl -l -v       # List distros with version and running state
wsl --status    # Show overall WSL configuration and default version
```

### ⚙️ Manage Distros
```powershell
wsl --set-default Ubuntu        # Set default distro
wsl --set-version Ubuntu 2      # Switch distro to WSL2
```

### ⚙️ Config File (Optional)
Edit `%UserProfile%\.wslconfig` for global settings:

```ini
[wsl2]
memory=4GB
processors=2
```
