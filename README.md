# 这个是我个人的nvim配置
> Mac OS, Linunx 适用

欢迎大神们指导，给小弟提提建议
持续完善

## ScreenShot
![screenshot](./screenshot/main.gif)

## 安装

### MacOS

- Brew(推荐)
```bash
# 必须要安装的
$ brew install neovim

# 非常推荐使用
$ brew cask install iterm2

# 使用defx插件必须要安装
$ pip3 install pynvim
```

- 安装vim-plug插件管理
```bash
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Linunx

- Yum
```bash
$ yum install -y neovim python36-neovim
```

- 安装vim-plug插件管理同Mac OS 方法一致

## 插件必要依赖

- ctags
> 方便在vim下代码阅读工具(部分插件需要用到)
```bash
$ brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

- Fcitx-remote
> 系统检测中英文输入法
```bash
$ brew install fcitx-remote-for-osx
```

- Nerd-Font
> defx-icon 显示图标
```bash
$ brew tap homebrew/cask-fonts

$ brew cask install font-hack-nerd-font
```

- vim-plug安装
```bash
$ brew install go cmake
$ python3 install.py --all --js-completer
$ cd $VIMCONFIG/plugged/youcomplete/
```

## 使用

- 启动
```bash
$ nvim

$ nvim ./xx
```

## 结构说明

- init.vim(主要配置文件入口)

- map.vim(修改自定义映射键位)

- plug.config(各个插件的配置文件,个人比较喜欢归类,所以每一个插件的配置文件都是单独一个vim文件的)

## 功能说明

- [x] File System
- [x] File System Icon
- [x] File System Git
- [x] Fold
- [x] JavaScript
- [x] JSX
- [x] Sass, Less, Css


