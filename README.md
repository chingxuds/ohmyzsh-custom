# ohmyzsh-custom

这是一个个人定制化Oh My Zsh的项目，主要是修改了默认robbyrussell主题，使得主题呈现更多信息并保持各种终端的兼容性，同时又不依赖于各种字体。
基本效果如下，配色与原版一致

```shell
➜  app@ubuntu-server  /home/app/.oh-my-zsh git:(master)
>
```

## 使用方式

### 安装必要依赖

需要先安装`zsh`、`git`、`curl`或`wget`这些基础组件，之后再执行下面的脚本。
如果之前已经安装过原版 Oh My Zsh ，则可以只执行配置脚本。
如果使用自动安装脚本，则需要在 Oh My Zsh 安装完成并设置默认Shell后退出一次，然后再切换到zsh即可生效。

#### Ubuntu

```shell
sudo apt-get install zsh git curl wget
```

#### CentOS

```shell
sudo yum install zsh git curl wget
```

### 含 Oh My Zsh 自动安装

#### via curl

```shell
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/chingxuds/ohmyzsh-custom/master/install.sh)"
```

#### via wget

```shell
zsh -c "$(wget -O- https://raw.githubusercontent.com/chingxuds/ohmyzsh-custom/master/install.sh)"
```

### 仅配置

#### via curl

```shell
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/chingxuds/ohmyzsh-custom/master/custom.sh)"
```

#### via wget

```shell
zsh -c "$(wget -O- https://raw.githubusercontent.com/chingxuds/ohmyzsh-custom/master/custom.sh)"
```
