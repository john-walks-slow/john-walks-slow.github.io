# 用automate实现的音乐小工具

automate是安卓上的一个自动化工具，可以用简单的流程图编写出很多实用的小工具，一级棒！

分享两个我用它做的音乐小工具！

（请自己下载一下automate喔~免费版最多支持三十个block，足够使用我写的这两个工具啦。想长期用建议入正。）

## 搜索我的音乐

https://llamalab.com/automate/community/flows/34854

播放音乐时，生成一条用于快速搜索音乐信息的通知。可以用来搜索歌词、乐评等。

默认提供的搜索引擎有：谷歌、百度、豆瓣、Rate Your Music、Song Meanings、Genius、AZ Lyrics。

在第一个block可以自定义其他的搜索引擎。

>  注意：由于系统限制，最多同时选择三个搜索引擎~

## 用耳机点亮红心

https://llamalab.com/automate/community/flows/34850

长按蓝牙耳机点亮红心。若当前没有播放音乐，则启动默认音乐播放器。

需要你的耳机能唤起语音助手才能用，原理是把唤起语音助手的操作替换为点击通知的上的红心按钮。如果你有用scrobbler的话（不知道这是什么请跳过~），你还可以用它同时点亮last.fm的红心。

**使用前要去block #22设置一下你使用的音乐播放器！**

测试过支持的播放器：网易云、spotify

>  注意：网易云需要在设置里把通知栏样式改为系统

测试过支持的scrobbler：pano scrobbler


