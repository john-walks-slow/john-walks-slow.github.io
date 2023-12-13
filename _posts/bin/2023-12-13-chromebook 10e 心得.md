之前贪便宜买了块 chrome 板，主要想拿来看书，看电影。
屏幕和做工在这个价位很棒，说是 500 块以下最有性价比平板应该没问题的。

## 关于键盘

本来挺期待键盘，但实际很少用。我的键盘接触不良，只在一个特定角度可用（我看外网挺多人有这个问题，应该是某些批次的通病）。手感一般。

解决接触问题的一个方法是在键盘下面垫东西，增加高度。不过后来我嫌键盘壳太重，干脆裸奔了。我把键盘和壳剪成了两半，平板背后贴一个背贴支架，要用键盘的时候打开支架吸在键盘上。

我目前用的背贴支架角度还是不够好，容易断触。找到了完美的再来分享。

## 关于 Chrome OS

### 梯子

激活的时候装不了梯子，可以在手机上用 surfboard 共享 vpn，chromebook 上设置代理

### 安装任意 apk

默认只能从 google play 装应用，但这个限制是可以绕过的。
启用 linux，启用开发安卓应用，在 linux 终端用 adb 装上 shizuku 和 sai（split apk installer），通过无线调试启用 shizuku，shizuku 给 sai 授权。这样折腾一番后就能通过 sai 装任意 apk 了，之后关了 linux 也行。

### ARCVM / ARC++

chrome os 当初用 arc++ 运行安卓，但 android 11 开始改用 arcvm。arcvm 兼容性好点，性能差点，会多占用 1 个 g 的 ram，开机启动会慢 40 秒。

10e 最后一个使用 Andoird 9 (arc++) 的版本应该是 116。建议不要升级到 116 以上版本。在 flags 里可以关掉更新。

### 降级到 116

去这里下载 recovery [Chrome OS Builds](https://chromiumdash.appspot.com/serving-builds?deviceCategory=Chrome%20OS)，chrome 扩展商店装一个叫 Chromebook Recovery Utility 的应用，把下好的 recovery 搞到 u 盘上（选用本地镜像之类的）。然后就刷机。
（这段我还没试，之后准备搞一搞，搞定了再更新）

### 小问题

- 有时安卓应用会卡住，关不掉也打不开，必须去应用设置强行停止。
- 很多应用的浮窗不能正常显示（比如欧路词典的快捷查词），背景会变成黑色。不知道有没有人知道怎么解决。

## 个人的常用 App

### 系统

sai，shizuku，雹，killapps（类绿色守护），小企鹅输入法，nekobox

### 应用

xodo，静读天下，obsidian，tvbox，spacedesk（当副屏）
娱乐类的就不列了。
