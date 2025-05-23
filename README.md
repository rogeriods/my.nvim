# my.nvim

My kickstart Neovim configs.

## Installation

Copy project to your ~/.config folder:

```bash
git clone https://github.com/rogeriods/my.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

Install dependencies:

```bash
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo mkdir -p /opt/nvim-linux-x86_64
sudo chmod a+rX /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/
```
