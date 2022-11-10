# MacOS安装

- Brew(推荐)
```bash
# 必须要安装的
$ brew install neovim ripgrep lazygit

$ brew install --HEAD universal-ctags/universal-ctags/universal-ctags

$ brew tap homebrew/cask-fonts
$ brew cask install font-hack-nerd-font
$ brew install go cmake

# 非常推荐使用
$ brew cask install iterm2
```

- 安装vim-plug插件管理
```bash
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- 首次使用
```bash
$ nvim

:PlugInstall
:PlugUpdate
:TSUpdate
```
