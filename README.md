# Patrick Lehmann

# zsh

```bash

    # Input: https://linuxhint.com/install_zsh_shell_ubuntu_1804/
    #
    sudo apt-get install zsh
    sudo usermod -s /usr/bin/zsh $(whoami)
    
    sudo apt-get install powerline fonts-powerline
    sudo apt-get install zsh-theme-powerlevel9k
    echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
    
    sudo apt-get install zsh-syntax-highlighting
    echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

```

# ohmyzsh

```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

```


# Installation auf Mac

```bash

Theme #11: Agnoster
To use the agnoster theme you have to install some fonts. Otherwise you will see some question marks where symbols are supposed to go. Here are the steps to install:

git clone https://github.com/powerline/fonts
cd fonts
./install.sh from terminal / command line
Open iTerm2->Preferences->Profiles->Change Font-> 12pt Meslo LG S DZ Regular for Powerline
```