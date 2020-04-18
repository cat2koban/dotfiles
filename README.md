# dotfiles

## Requirements 
TODO: Full Automation...

### 1. Install brew
- [ ] brew
  - `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
  - https://brew.sh/

### 2. Set up cool shell
- [ ] fish
  - ```
    $ brew install fish
    $ sudo echo $(which fish) >> /etc/shells
    $ chsh -s $(which fish)
    ```
  - Customize Command Color
    - `~/.config/fish/fish_variables`
  - https://fishshell.com/

- [ ] fisher
  - `$ curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish`
  - https://github.com/jorgebucaran/fisher

- [ ] fish-pure 
  - `$ fisher add rafaelrinaldi/pure`
  - https://github.com/rafaelrinaldi/pure

- [ ] fzf
  - `brew insatll fzf`
  - https://github.com/junegunn/fzf

- [ ] ghq
  - `brew install ghq`
  - https://github.com/x-motemen

- [ ] fish-ghq
  - `fisher add decors/fish-ghq`

### 3. Install Awesome Editor
- [ ] nvim
  - `$ brew install nvim` 
  - https://neovim.io/

- [ ] vim-plug
  - ```
    $ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    $ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

## Setup
- `$ ghq get cat2koban/dotfiles`
- Ctrl+r > cat2koba/dotfiles
- `./setup.sh`


