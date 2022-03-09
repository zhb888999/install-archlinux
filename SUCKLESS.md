# DWM

dwm为6.3版本，添加了一些diff，在原有的快捷健基础上添加了slock锁屏、音量控制等快捷键，dwm图标需要NerdFont字体 
## diff

* dwm-alpha-20201019-61bb8b2.diff
* dwm-autostart-20210120-cb3f58a.diff
* dwm-fullscreen-6.2.diff
* dwm-scratchpads-20200414-728d397b.diff
* dwm-uselessgap-20211119-58414bee958f2.diff
* dwm-viewontag-20210312-61bb8b2.diff

## shortcut keys

* alt-1~9/mouse_left-click 切换workspace
* alt-tab 切换到上一个worksapce
* alt-shift-1~9/alt-mouse_left-click 移动当前窗口到对应的workspace
* alt-ctl-1~9 对应workspace合并显示到当前workspace
* alt-l 向右扩展主窗口
* alt-h 向左缩小主窗口
* alt-i 增加主窗口数量
* alt-d 减小主窗口数量
* alt-enter 切换当前窗口为主窗口
* alt-j 聚焦到下一个窗口
* alt-k 聚焦到上一个窗口
* alt-. 聚焦到下一个屏幕(多屏幕)
* alt-, 聚焦到上一个屏幕(多屏幕)
* alt-t 平铺显示模式
* alt-m 叠加显示模式
* alt-f 浮动显示模式
* alt-b 隐藏/显示 dwm bar
* alt-shift-enter 打开终端
* alt-shit-f 全屏显示当前窗口
* alt-shit-c 关闭当前窗口
* alt-shit-q 退出dwm，注销会话
* alt-space 切换到上一种显示模式
* alt-mouse_left-click 调节窗口大小并浮动显示，多屏时也可用于拖动窗口到其它屏幕
* alt-mouse_middle-click 恢复窗口，取消浮动特性
* alt-p 打开dmenu
* alt-shit-u 增大音量
* alt-shit-d 减小音量
* alt-shit-a 开关音量
* alt-y 显示/隐藏浮动终端
* alt-u 显示/隐藏range文件管理终端
* alt-shit-l slock锁屏

# ST

st为0.8.5版本，添加了一些diff，修改了原有的scorllback快捷键

## diff

* st-alpha-20220206-0.8.5.diff
* st-anysize-0.8.4.diff
* st-dracula-0.8.2.diff
* st-ligatures-alpha-20210824-0.8.4.diff
* st-scrollback-20210507-4536f46.diff
* st-scrollback-mouse-20220127-2c5edf2.diff

## shortcut keys

* alt-ctl-u 向上滚屏
* alt-ctl-f 向下滚屏
* shit-mouse_scroll_up 向上滚屏1行
* shit-mouse_scroll_down 向下滚屏1行

# SLOCK

slock为1.4版本，添加了dwmlogo diff，在锁屏界面直接输入用户密码按回车即可解锁，密码错误会显示红色

## diff

* slock-dwmlogo-20210324.diff

## shortcut keys

* alt-shift-l 启动锁屏

# SLSTATUS

slstatus调用了音量显示脚本，其它显示接口均为内置函数