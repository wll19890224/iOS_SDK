#### 简介
-------------------
融数钱包收银台SDK

#### SDK的集成及使用
-------------------
#### 集成

@()[Pod管理集成|下载Framework]

#### 1、导入framework
##### 以下两种集成方式选择一种
- **Pod管理集成** 
在 Podfile 中加入 `pod 'rongPaySDK'`
`pod install` 即可
- **下载Framework** 
**步骤一**
下载[rongPaySDK](https://github.com/Junior-Young/rongPaySDK)，将 **rongPaySDK.framework** 和 **RongPayBundle.bundle**导入到项目中。
**步骤二**
在 Podfile 中加入 
`pod 'AFNetworking', '~> 3.1.0’
pod 'FrameAccessor'
pod 'ReactiveCocoa'
pod 'IQKeyboardManager'
pod 'YYModel'
pod 'FCUUID'
pod 'SVProgressHUD'
pod 'Masonry'`
导入第三方`pod install`

#### 2、配置plist文件
因收银台会调用摄像头，部分界面会改变状态栏颜色，需在plist文件中加入以下代码：
``` 
<key>NSCameraUsageDescription</key>
<string>应用需要您的同意,才能访问相机</string>
<key>UIViewControllerBasedStatusBarAppearance</key>
<false/>
```

-------------------
#### 使用
#### 1、初始化
``` 
[RPayManager defaultManager];
```
#### 2、调用收银台

``` 
[RPayManager pushCashierWithNavigationController:self.navigationController title:@"标题" details:@"详情" orderId:@"订单号" amount:1 customerNo:@"客户号" operator:@"操作员号" callBackBlock:^(NSString *result) {
YLog(@"支付结果：%@", result);
}];
```
参数说明
``` 
@param navigationController 导航控制栏
@param title 订单标题
@param details 订单详情
@param orderId 客户订单号
@param amount 订单金额（单位：分）
@param customerNo 客户号
@param operatorNo 操作员号
```
#### 3、另注
在推出收银台的页面中设置导航栏颜色，加入如以下示例代码：
``` 
- (void)viewWillAppear:(BOOL)animated {
[super viewWillAppear:animated];
[self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
[self.navigationController.navigationBar setShadowImage:nil];
self.navigationController.navigationBar.hidden = NO;
}
```
#### 更多
@()[下载demo工程了解更多]
- 快速体验：下载[testRongPay](https://github.com/Junior-Young/rongPaySDK)
- 查看demo，可以更好的了解如何集成，每个功能的使用。
- 离线版说明文档：使用说明.pdf

[^demo]: 这是一个示例脚注。请查阅 [MultiMarkdown 文档](https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide#footnotes) 关于脚注的说明。 **限制：** 印象笔记的笔记内容使用 [ENML][5] 格式，基于 HTML，但是不支持某些标签和属性，例如id，这就导致`脚注`和`TOC`无法正常点击。

#### 联系我们

- QQ: 2711881842
- email: <yangjunjie@rongcapital.cn>


[1]: http://maxiang.info/client_zh
[2]: https://chrome.google.com/webstore/detail/kidnkfckhbdkfgbicccmdggmpgogehop
[3]: http://adrai.github.io/flowchart.js/
[4]: http://bramp.github.io/js-sequence-diagrams/
[5]: https://dev.yinxiang.com/doc/articles/enml.php


