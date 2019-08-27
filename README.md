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

  2019年亚冠联赛1/4决赛即将揭开战幕，上海上港与广州恒大将代表中超联赛向本年度亚冠桂冠发起冲击。本年度亚冠联赛八强球队中，两支中国球队（广州恒大、上海上港），两支日本球队（鹿岛鹿角、浦和红钻），三支沙特球队（伊蒂哈德、希拉尔、纳斯尔），一支卡塔尔球队（多哈萨德）。
  根据权威媒体《转会市场》评估，亚冠八强球队中，上海上港与广州恒大分享身价榜前2。而最贵球员榜单当中，排名前5的球星中皆出于中超双雄。而身价情况，往往能从一个侧面反映出球队的综合实力与竞争力。故而就这一点来看，亦难怪外界会将上海上港与广州恒大视为夺冠热门。

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

如果您使用 ZYKit，您需要将所有的文件导入您的工程中；如果您使用 ZYLib，您需要导入除 RongIMKit.framework 和 RongCloud.bundle 之外的所有文件。

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

在亚冠八强球队身价排名中，上海上港（9500万欧）排名第1，广州恒大（9033万欧）排名第2。三支沙特球队紧随中超双雄身后，纳斯尔（5803万欧）排名第3，希拉尔（4550万欧）排名第4，伊蒂哈德（3235万欧）排名第5。浦和红钻（2980万欧）排名第6，多哈萨德（2918万欧）排名第7，鹿岛鹿角（2110万欧）排名第8。可见，中超双雄不仅领跑亚冠八强身价榜，且优势巨大。
亚冠八强最贵球员榜单中，前5皆出于中超双雄。据《转会市场》最新一期评估，保利尼奥（广州恒大、3800万欧）排名第1，阿瑙托维奇（上海上港、3500万欧）排名第2，奥斯卡（上海上港、2800万欧）排名第3，塔利斯卡（广州恒大、2500万欧）排名第4，胡尔克（上海上港、2000万欧）排名5。
至于排名第6-10的球员，分别为久利亚诺（纳斯尔、1200万欧），麦孔（纳斯尔、800万欧），乔文科（希拉尔、800万欧），卡里约（希拉尔、600万欧）与艾哈迈多夫（上海上港、600万欧）。值得一提的是，上海上港1/4决赛的对手是浦和红钻，其队内最贵球员法布里西奥身价为350万欧。广州恒大1/4决赛的对手是鹿岛鹿角，其队内最贵球员土居圣真身价则为200万欧。
