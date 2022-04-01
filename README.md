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
$ brew install neovim ripgrep

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
$ yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
$ yum update
$ yum install -y neovim ripgrep python36-neovim
```

- 安装vim-plug插件管理同Mac OS 方法一致

### 插件必要依赖，都是必须要的(Mac Linux)

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
$ cd $VIMCONFIG/plugged/youcomplete/
$ python3 install.py --all --js-completer
```

- 安装tean_for_vim node所需要支持的node_modules
```bash
$ cd $HOME/.config/nvim/plugged/tern_for_vim
$ npm i
```

- 语法高亮需要手动安装
```
$ :TSInstall c python go scss dockerfil html css json
```

## 使用

- 启动
```bash
$ nvim

$ nvim ./xx
```

## 结构说明

- init.vim(主要配置文件入口)
- plug-list(所需要的插件列表)

- common(修改自定义映射键位, 其他配置功能(无需插件的))
- colors(主题配色方案, 需要使用的时候 直接在init修改即可, 修改主题配色的插件，本人觉得没有什么必要，所以就不安装了，手动修改即可)
- plug.config(各个插件的配置文件,个人比较喜欢归类,所以每一个插件的配置文件都是单独一个vim文件的)

## 功能说明
- [x] Start Page
- [x] Airline
- [x] File System
- [x] Git Gutter
- [x] Fold && Indent tips
- [x] JavaScript
- [x] JSX
- [x] Python
- [x] Sass, Less, Css
- [x] Color render
- [x] Eslint
- [x] PyLint
- [x] Python virtualenv wrapper
- [x] find file in project
- [x] TagBar Support(js, python, md, json)

