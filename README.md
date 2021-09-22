# Dotfiles

These are my dotfiles.

Here's what needs to be done to install this on a new system. For more complete instructions on setting up a new machine, head over to the [installation guide](#installation):

1. Create `dotfiles` alias:

```sh
$ echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/projects/dotfiles/ \
  --work-tree=$HOME'" >> $HOME/.bash_aliases
```

2. Add dotfiles project path to .gitignore on `$HOME`

```sh
$ echo "./projects/dotfiles" >> .gitignore
```

3. Clone repository into bare repository

```sh
$ git clone --bare https://github.com/PascalPrecht/dotfiles $HOME/projects/dotfiles
```

4. Checkout contents

```sh
$ dotfiles checkout
```

From here on, use the `dotfiles` command to add, commit push etc. to the dotfiles repository.
**Make sure you setup your git signing key**.

---

- [Installation](#installation)
  - [Terminal](#configure-terminal)
  - [Git](#install-git)
    - [Setup signing key](#setup-signing-key)
  - [Tmux](#install-tmux)
  - [NeoVim](#install-neovim)
    - [minpac](#install-minpac-plugin-manager)
  - [Rust](#install-rust)
  - [Brave](#install-brave)
    - [Brave Extensions](#install-brave-extensions)


## Installation

### Configure terminal

I use the following preferences on linux (Ubuntu) in the terminal:

1. Initial terminal size: 130 columns, 40 rows
2. Custom terminal background color: #141617
3. Palette built-in scheme: solarized
4. Turn on "Show bold text in bright colors

### Install Git

```sh
$ sudo apt install git
```

#### Setup signing key

Basically need to follow steps [here](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key):

1. [Generate a new GPG key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key)
2. [Add it to your GitHub account](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-new-gpg-key-to-your-github-account)
3. [Tell Git your signing key](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)
4. [Associate email with GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/associating-an-email-with-your-gpg-key)

#### Setup SSH key

Either use Personal Access Tokens or SSH keys to authenticate with GitHub. To set up SSH key, follow the these steps:

1. [Generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
2. [Add SSH key to GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
3. [Test SSH connection](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection)

### Install Tmux

```sh
$ sudo apt install tmux
```

### Install NeoVim

```sh
$ sudo apt install neovim
```

Also, set NeoVim as editor alternatives on machine:

```sh
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
```

#### Install minpack Plugin Manager

```sh
git clone https://github.com/k-takata/minpac.git \
    ~/.config/nvim/pack/minpac/opt/minpac
```

Then run `:call minpac#update()` inside Vim.

### Install Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Also need to install `build-essential`:

```sh
$ sudo apt install build-essential
```

### Install Brave

```sh
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg \
  https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
```

#### Install Brave Extensions

1. [Unhook YouTube](https://chrome.google.com/webstore/detail/unhook-remove-youtube-rec/khncfooichmfjbepaaaebmommgaepoid)
2. [Bitwarden](https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb)

