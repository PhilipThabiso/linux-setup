# chezmoi Cheatsheet

## Initial Setup
### Initialize Local Repo
chezmoi init

### Initialize from GitHub
chezmoi init https://github.com/user/dotfiles.git

## Managing Files
### Add New File
chezmoi add ~/.filename

### Add Directory
chezmoi add ~/.config/app

### Add Encrypted File
chezmoi add --encrypt ~/.ssh/id_rsa

### Edit Managed File
chezmoi edit ~/.filename

## Syncing & Status
### List Managed Files
chezmoi managed

### Check Differences
chezmoi diff

### Show Status
chezmoi status

### Apply Changes to Home
chezmoi apply -v

### Dry Run Apply
chezmoi apply --dry-run

## Repository Management
### Go to Source Directory
cd $(chezmoi source-path)

### Update from Remote
chezmoi update

## Maintenance
### List Unmanaged Files
chezmoi unmanaged

### Remove File from chezmoi
chezmoi forget ~/.filename

### Reset/Purge chezmoi
rm -rf $(chezmoi source-path)
