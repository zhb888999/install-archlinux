# 制作启动U盘
## 下载ISO镜像
https://archlinux.org/download/

## 制作U盘启动镜像
TODO

# 开始安装

## 创建硬盘分区

### 选择创建分区的硬盘

```shell
fdisk -l  # 查看硬盘，以便选择系统安装硬盘
fdisk /dev/sda  # 开始格式化/dev/sda硬盘, 之后将进入fdisk操作界面 
```

### fdisk格式化命令

设置硬盘格式分区
```fdisk
Commad (m for help): g  # 创建GPT硬盘格式
```

创建EFI分区
```fdisk
Commad (m for help): n  # 创建分区
Partition number (1-128, default 1):  # 直接回车, 创建分区1
First sector (2048-104857566, default 2048):  # 直接回车, 设置第一个分区的开始磁道号
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-104857566, default 104857566): +1G  # +1G是设置分区的大小为1G，如果直接回车则默认该分区占用所有剩余空间
```

创建swap分区
```fdisk
Commad (m for help): n  # 创建分区
Partition number (2-128, default 2):  # 直接回车, 创建分区2
First sector (2048-104857566, default 2099200):  # 直接回车, 设置第二个分区的开始磁道号
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2099200-104857566, default 104857566): +2G  # 分区的大小为2G，大小建议设置和内存一样大小
```

创建文件系统分区
```fdisk
Commad (m for help): n  # 创建分区
Partition number (3-128, default 3):  # 直接回车, 创建分区3
First sector (6293504-104857566, default 6293504):  # 直接回车, 设置第三个分区的开始磁道号
Last sector, +/-sectors or +/-size{K,M,G,T,P} (6293504-104857566, default 104857566): # 直接回车，使用剩余所有分区
```
写入分区信息
```fdisk
Commad (m for help): w  # 写入设置好的分区配置
```

## 格式化分区

### 格式化EFI分区 
```shell
 mkfs.fat -F32 /dev/sda1  # /dev/sda1为分区名称，分区完成后可以通过fdisk -l命令查看刚才分区的具体名称
```

### 格式化swap分区 
```shell
mkswap /dev/sda2
```

### 格式化文件系统分区 
```shell
 mkfs.ext4 /dev/sda3
```

## 挂载分区

### 挂载在交换分区
```shell
swapon /dev/sda2
```
### 挂载文件系统分区()
```shell
mount /dev/sda3 /mnt
```
### 挂载EFI分区(操作前需要先挂在文件分区)

```shell
mkdir /mnt/boot  # 创建boot目录
mount /dev/sda1 /mnt/boot  # 将EFI分区挂在到/mnt/boot目录上
```

## 国内修改镜像源

可以提高下载速度，以下以华为云源为例

```shell
vim /etc/pacman.d/mirrorlist 
# >>
# 将以下源地址放在第一位
# Server = https://mirrors.huaweicloud.com/archlinux/$repo/os/$arch
# >>
```

## 安装基础系统

```shell
pacstrap /mnt base linux linux-firmware
```

## 硬盘分区及目录挂载信息写入系统文件

```shell
genfstab -U /mnt >> /mnt/etc/fstab
```

## 切换到安装的基础系统

```shell
arch-chroot /mnt
```

## 在基础系统中安装neovim
基础系统中还未安装vim,以便编辑配置文件

```shell
pacman -S neovim
```

## 配置系统语言

```shell
nvim /etc/locale.gen
# >>
# 去掉 en_US.UTF-8 UTF-8等前面的#，打开相应的语言
# 以下为常用的打开项
#en_US.UTF-8 UTF-8
#zh_CN.GBK-8 GBK-8
#zh_CN.UTF-8 UTF-8
# >>
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf  # 设置系统语言
```

## 安装启动引导

### 安装所需的软件

```shell
pacman -S grub efibootmgr intel-ucode os-prober
# intel-ucode 为intel处理器相关，可选选装
# os-prober 为多系统自动识别，将其它系统添加到启动项中，可选选装
```

### 创建启动引导

```shell
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Archlinux
grub-mkconfig -o /boot/grub/grub.cfg
```

## 安装联网相关的服务

```shell
pacman -S dhcpcd wpa_supplicant  # dhcpcd为有线用户dhcp服务，wpa_supplicant为无线网连接程序，可选装
systemctl enable dhcpcd  # 设置dhcpcd开机服务启动
```

## 添加用户

以下以mking用户名为例，将mking添加到wheel用户组，稍后设置sudo权限

```shell
pacman -S sudo  # 安装sudo
ln -s /usr/bin/nvim /usr/bin/vim  # 对nvim创建软链接，满足visudo执行需要
visudo  # 配置sudoers
# >>
# 打开%wheel ALL=(ALL:ALL) ALL
# >>
useradd -m -g wheel -s /bin/bash mking  # 创建用户
```

## 设置登陆密码

### 设置root用户密码

```shell
passwd
```

### 设置mking用户密码

```shell
passwd mking
```

## 重启计算机

重启计算机，之后进入安装好的操作系统，进行后续配置
```shell
exit  # 退出chroot
reboot  # 重启
```

## 登陆系统
先输入用户名，之后输入密码即可
```shell
archlinux login: mking  # 输入用户名
Password:  # 输入密码，密码不回显
[mking@archlinux ~]$  # 登陆成功
```

## 启动自动安装
