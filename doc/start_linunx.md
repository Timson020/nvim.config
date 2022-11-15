# Linunx安装方式

- Yum
```bash
$ yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
$ yum update
$ yum install -y neovim ripgrep lazygit python36-neovim
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
