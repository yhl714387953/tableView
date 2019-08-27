## 这个文件夹里都是***tableView***相关的

- [dabiaoti1](#dabiaoti1)
  - [zhongbiaoti1-1](#zhongbiaoti1-1)
  - [zhongbiaoti1-2](#zhongbiaoti1-2)
  - [zhongbiaoti1-3](#zhongbiaoti1-3)
- [dabiaoti2](#dabiaoti2)
  - [zhongbiaoti2-1](#zhongbiaoti2-1)
  - [zhongbiaoti2-2](#zhongbiaoti2-2)
- [dabiaoti3](#dabiaoti3)

****

以后再陆续更新

<span id="dabiaoti1"></span>
### 大标题1

8月19日至22日，习近平总书记沿河西走廊自西向东，行程超过1000公里，为加快建设幸福美好新甘肃、不断开创富民兴陇新局面出谋划策、指明方向。考察路上，一幅幅饱含真情的动人画面，记录下陇原人民对人民领袖的衷心爱戴；一个个与人民群众心心相印的感人瞬间，彰显出人民领袖深厚的人民情怀。

<span id="zhongbiaoti1-1"></span>
#### 中标题1

有两种方式可以将 SDK 导入您的项目中：

通过 CocoaPods 管理依赖；
手动导入 SDK 并管理依赖；
CocoaPods 是目前最流行的 Cocoa 项目库依赖管理工具之一，考虑到便捷与项目的可维护性，我们更推荐您使用 CocoaPods 导入并管理 SDK。

<span id="zhongbiaoti1-2"></span>
#### 中标题2

在您的工程根目录下新建一个 Podfile 文件，或者用终端，在工程目录下，执行 pod init。然后 open -e Podfile。在文件中输入以下内容。（在此以 2.8.3 版本为例，其中 “MyApp” 为自己工程名）

<span id="zhongbiaoti1-3"></span>
#### 中标题3

完成后，CocoaPods 会在您的工程根目录下生成一个 .xcworkspace 文件。您需要通过此文件打开您的工程，而不是之前的 .xcodeproj。

<span id="dabiaoti2"></span>
### 大标题2

<span id="zhongbiaoti2-1"></span>
#### 中标题1

如果您使用 IMKit，您需要将所有的文件导入您的工程中；如果您使用 IMLib，您需要导入除 RongIMKit.framework 和 RongCloud.bundle 之外的所有文件。

<span id="zhongbiaoti2-2"></span>
#### 中标题2

您除了在工程中导入 SDK 之前，还需要添加如下系统库的引用。

AssetsLibrary.framework
AudioToolbox.framework
AVFoundation.framework
CFNetwork.framework
CoreAudio.framework
CoreGraphics.framework
CoreLocation.framework
CoreMedia.framework
CoreTelephony.framework
CoreVideo.framework
ImageIO.framework
libc++.tbd
libc++abi.tbd
libsqlite3.tbd
libstdc++.tbd
libxml2.tbd
libz.tbd
MapKit.framework
OpenGLES.framework
QuartzCore.framework
SystemConfiguration.framework
UIKit.framework
Photos.framework
SafariServices.framework

<span id="dabiaoti3"></span>
### 大标题3

请务必保证使用的 RongCloudIM 所有模块版本号一致。
关于融云 IM CocoaPods 功能模块的介绍和使用说明，可以参考说明文档。
如果您使用的是 2.8.0 之前的 SDK，请参考知识库文档。
如果搜索不到最新库，执行 pod repo update 更新一下。
特殊情况下，由于网络或者别的原因，通过 CocoaPods 下载的文件可能会有问题。 这时候您可以删除 CocoaPods 的缓存(~/Library/Caches/CocoaPods/Pods/Release 目录)，再次导入即可。
查看当前使用的 SDK 版本，您可以在 Podfile.lock 文件中看到您工程中使用的 SDK 版本。
