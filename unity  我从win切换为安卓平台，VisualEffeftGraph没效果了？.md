---
typora-copy-images-to: doc
---



## unity  我从win切换为安卓平台，VisualEffeftGraph没效果了？

1. 在Unity中打开**" Edit /  ProjectSetting / Player "**

2. 在"Other Settings" 中有一个"**Scripting Define Symbols**"，在这里加入 **UNITY_VFX_GRAPH_RENDERER_MOBILE**。
3. 最后，**重启**项目即可。

这样就可以在安卓平台上使用Visual Effect Graph了。

还需要注意的是, 您需要使用Unity版本2019.3或更高版本，并且安装了Visual Effect Graph包才能在安卓平台上使用Visual Effect Graph。

![image-20230115034855597](doc/image-20230115034855597.png)