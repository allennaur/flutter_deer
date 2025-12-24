# Flutter Deer

<img src="preview/logo.jpg"/>

## [English](README-EN.md) | 中文

一个以真实业务场景为目标的 Flutter 学习与实践项目，持续维护中。通过配置、封装与适度自定义，聚焦常见业务能力与工程化最佳实践。设计图位于 `design` 目录，便于对照练习与实现。

## 预览

部分页面效果如下：

| ![](./preview/Screenshot_1.png)    |  ![](./preview/Screenshot_2.png)    | ![](./preview/Screenshot_3.png)   |  ![](./preview/Screenshot_4.png)   |
| :--------------------------------: | :---------------------------------: | :-------------------------------: | :-------------------------------:  |
| ![](./preview/Screenshot_5.png)    |  ![](./preview/Screenshot_6.png)    | ![](./preview/Screenshot_7.png)   |  ![](./preview/Screenshot_8.png)   |
| ![](./preview/Screenshot_9.png)    |  ![](./preview/Screenshot_10.png)   | ![](./preview/Screenshot_11.png)  |  ![](./preview/Screenshot_12.png)  |
| ![](./preview/Screenshot_13.png)   |  ![](./preview/Screenshot_14.png)   | ![](./preview/Screenshot_15.png)  |  ![](./preview/Screenshot_17.png)  |
| ![](./preview/Screenshot_18.png)   |  ![](./preview/Screenshot_19.png)   | ![](./preview/Screenshot_20.png)  |  ![](./preview/Screenshot_21.png)  |
| ![](./preview/Screenshot_22.jpg)   |  ![](./preview/Screenshot_23.jpg)   | ![](./preview/Screenshot_24.jpg)  |  ![](./preview/Screenshot_25.jpg)  |
| ![](./preview/Screenshot_26.jpg)   |  ![](./preview/Screenshot_27.jpg)   | ![](./preview/lottie.gif)         |  |

**觉得还可以的话，来个Star、Fork支持一波！本项目持续维护中，有问题欢迎提Issue。**

## 主要特性

- 路由：已迁移至 Navigator 2.0（基于 `go_router`），保留兼容层便于渐进迁移
- 网络：`dio` 封装与统一错误处理
- 状态：`provider` 状态管理与主题/语言设定
- UI/UX：深色模式、本地化、复杂滚动（Sliver）、WebView
- 设备能力：图片选择、震动、设备信息
- 地图定位：高德 2D 地图（支持 Web）
- 工程化：集成测试与可访问性测试、模块化路由管理
- 动画/图表：Lottie、曲线图/饼图、更多 Demo（涟漪、刮刮卡等）
- 扫码能力：`qr_code_scanner`（按需启用）

具体可以下载体验：

Android版安装包：[点击去下载](https://github.com/simplezhli/flutter_deer/releases)。

iOS需要自行下载代码运行。

Web体验地址：https://simplezhli.github.io/flutter_deer/

## 环境与平台

[![flutter_deer driver](https://github.com/simplezhli/flutter_deer/actions/workflows/flutter-drive.yml/badge.svg?branch=master)](https://github.com/simplezhli/flutter_deer/actions/workflows/flutter-drive.yml)

- Flutter 3.38.x（稳定版）
- Dart 3.10.x
- iOS 最低版本 `iOS 14.0+`
- Android `compileSdk/targetSdk 36`

提示：本项目在 Windows、macOS 以 UI 预览为主，原生能力请在真机/模拟器验证。

## 快速开始

1. 安装 Flutter（稳定通道），确保 `flutter --version` 在 3.38.x
2. 拉取依赖：`flutter pub get`
3. 运行
   - Android：`flutter run -d android`
   - iOS：`flutter run -d ios`（若使用原生库，需先 `cd ios && pod install`）
   - Web：`flutter run -d chrome`
4. 构建发布
   - Android：`flutter build apk`
   - iOS：`flutter build ios`

可选：如需启用扫码，取消 `pubspec.yaml` 中相关注释并按平台完成权限配置。

## 构建与测试

- 体验更流畅的效果请使用 `release` 包：`flutter build apk` / `flutter build ios`
- 集成测试与演示：`flutter drive --target=test_driver/driver.dart`
 
## 疑难排查

- iOS 端 CocoaPods/FFI 架构问题：建议使用 ARM 原生 `ffi 1.15.5` 并确保 Pod 源可用；必要时使用镜像源
- `qr_code_scanner` 在国内网络环境下可能拉取子依赖失败：可先按需注释依赖或配置镜像源后再启用
- 更多问题参见 `docs` 目录的 iOS/Android 问题汇总

## 心得总结（推荐阅读）

- [Flutter开发中的一些Tips(一)](https://weilu.blog.csdn.net/article/details/90546727)

- [Flutter开发中的一些Tips(二)](https://weilu.blog.csdn.net/article/details/94849020)

- [Flutter开发中的一些Tips(三)](https://weilu.blog.csdn.net/article/details/100108123)

- [Flutter适配深色模式（DarkMode）](https://weilu.blog.csdn.net/article/details/102531559)

- [说说Flutter中的RepaintBoundary](https://weilu.blog.csdn.net/article/details/103452637)

- [说说Flutter中的Semantics](https://weilu.blog.csdn.net/article/details/103823259)

- [说说Flutter中最熟悉的陌生人 —— Key](https://weilu.blog.csdn.net/article/details/104745624)

- [说说Flutter中的无名英雄 —— Focus](https://weilu.blog.csdn.net/article/details/107132031)

- [Flutter性能优化实践 —— UI篇](https://weilu.blog.csdn.net/article/details/106046434)

- [玩玩Flutter的拖拽——实现一款万能遥控器](https://weilu.blog.csdn.net/article/details/105237677)

- [玩玩Flutter Web —— 实现高德地图插件](https://weilu.blog.csdn.net/article/details/106465792)

- [在GitHub Actions上进行Flutter 的测试和部署](https://weilu.blog.csdn.net/article/details/114744416)

- [Flutter动画曲线Curves 效果一览](https://weilu.blog.csdn.net/article/details/95632571)

- [Flutter状态管理之Riverpod](https://weilu.blog.csdn.net/article/details/108352306)

- [【译】正确操作Dart中的字符串](https://weilu.blog.csdn.net/article/details/107857569)

- [【译】学习Flutter中新的Navigator和Router系统](https://weilu.blog.csdn.net/article/details/108902282)

- [【译】Flutter 2.2中的新功能](https://weilu.blog.csdn.net/article/details/117061293)

## 使用到的三方库

| 库                         | 功能             |
| -------------------------- | --------------- |
| [dio](https://github.com/cfug/dio)                            | **网络库**       |
| [provider](https://github.com/rrousselGit/provider)                   | **状态管理**     |
| [flutter_2d_amap](https://github.com/simplezhli/flutter_2d_amap)      | **高德2D地图**   |
| [cached_network_image](https://github.com/renefloor/flutter_cached_network_image)       | **图片加载**       |
| [go_router](https://github.com/flutter/packages/tree/main/packages/go_router) | **路由管理（Navigator 2.0）**     |
| [flutter_oktoast](https://github.com/OpenFlutter/flutter_oktoast)     | **Toast**        |
| [common_utils](https://github.com/Sky24n/common_utils)                | **Dart 常用工具类库**     |
| [flutter_slidable](https://github.com/letsar/flutter_slidable)        | **侧滑删除**     |
| [flustars](https://github.com/Sky24n/flustars)                        | **Flutter 常用工具类库**       |
| [flutter_swiper](https://github.com/best-flutter/flutter_swiper)      | **Flutter 轮播组件**       |
| [url_launcher](https://github.com/flutter/plugins/tree/master/packages/url_launcher)   | **启动URL的插件**       |
| [image_picker](https://github.com/flutter/plugins/tree/master/packages/image_picker)   | **图片选择插件** |
| [rxdart](https://github.com/ReactiveX/rxdart)                         | **Dart的响应式扩展** |
| [webview_flutter](https://github.com/flutter/plugins/tree/master/packages/webview_flutter)    | **WebView插件**       |
| [keyboard_actions](https://github.com/diegoveloper/flutter_keyboard_actions)                  | **处理键盘事件**       |
| [azlistview](https://github.com/flutterchina/azlistview)              | **城市选择列表**   |
| [date_utils](https://github.com/apptreesoftware/date_utils)           | **常用的日期工具类** |
| [bezier_chart](https://github.com/aeyrium/bezier-chart)               | **曲线图表**       |
| [sprintf](https://github.com/Naddiseo/dart-sprintf)                   | **格式化String**   |
| [qr_code_scanner](https://github.com/juliuscanute/qr_code_scanner)     | **扫码功能** |
| [intl](https://github.com/dart-lang/intl)     | **本地化** |
| [device_info_plus](https://github.com/fluttercommunity/plus_plugins/tree/main/packages/device_info_plus)     | **获取设备信息** |
| [vibration](https://github.com/benjamindean/flutter_vibration)     | **振动** |
| [lottie](https://github.com/xvrh/lottie-flutter)     | **动画效果** |

详细内容可以参看[pubspec.yaml](https://github.com/simplezhli/flutter_deer/blob/master/pubspec.yaml)文件

## 计划

- [x] Web 支持
- [x] 迁移至空安全
- [x] 深色模式与可访问性
- [x] 集成测试
- [x] Navigator 2.0（go_router）迁移与兼容
- [ ] 持续完善模块化与跨端验证

## 已知存在问题：

- 部分使用的到的三方库没有适配3.0.0，flutter_swiper（flutter_swiper_null_safety_flutter3替代）、flustars（flustars_flutter3替代）、azlistview（升级scrollable_positioned_list）。

- 3.10.0 已知存在问题(#105203 #113595)

- 2.0.0 已知存在问题(#68571 #73351 #74890 #79773 #79931)

- ListView在没有设置分割线的情况下，个别Item之间存在大约1像素的间隔（[像素对齐问题](https://github.com/flutter/flutter/issues/14288)）。

- 其他历史问题见docs目录下的问题汇总。

## Thanks For

- [flutter_wanandroid](https://github.com/Sky24n/flutter_wanandroid)

## License

	Copyright 2019 simplezhli

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
