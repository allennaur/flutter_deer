# Flutter Deer

<img src="preview/logo.jpg"/>

## English | [中文](README.md)

A continuously maintained, practice-oriented Flutter project that targets real-world business scenarios. It focuses on essential capabilities and engineering best practices through configuration, encapsulation, and moderate customization. Design assets are located in the `design` directory for guided implementation.

## Preview

Some of the page effects are as follows:

| ![](./preview/Screenshot_1.png)    |  ![](./preview/Screenshot_2.png)    | ![](./preview/Screenshot_3.png)   |  ![](./preview/Screenshot_4.png)   |
| :--------------------------------: | :---------------------------------: | :-------------------------------: | :-------------------------------:  |
| ![](./preview/Screenshot_5.png)    |  ![](./preview/Screenshot_6.png)    | ![](./preview/Screenshot_7.png)   |  ![](./preview/Screenshot_8.png)   |
| ![](./preview/Screenshot_9.png)    |  ![](./preview/Screenshot_10.png)   | ![](./preview/Screenshot_11.png)  |  ![](./preview/Screenshot_12.png)  |
| ![](./preview/Screenshot_13.png)   |  ![](./preview/Screenshot_14.png)   | ![](./preview/Screenshot_15.png)  |  ![](./preview/Screenshot_17.png)  |
| ![](./preview/Screenshot_18.png)   |  ![](./preview/Screenshot_19.png)   | ![](./preview/Screenshot_20.png)  |  ![](./preview/Screenshot_21.png)  |
| ![](./preview/Screenshot_22.jpg)   |  ![](./preview/Screenshot_23.jpg)   | ![](./preview/Screenshot_24.jpg)  |  ![](./preview/Screenshot_25.jpg)  |
| ![](./preview/Screenshot_26.jpg)   |  ![](./preview/Screenshot_27.jpg)   | ![](./preview/lottie.gif)         |  |

**If you find this project satisfactory, kindly show your support by giving it a Star or Fork. Rest assured, this project is being continuously maintained and any issues can be brought to our attention by submitting an Issue.**

## Features

- Routing: migrated to Navigator 2.0 using `go_router`, with a compatibility layer for gradual adoption
- Networking: `dio` encapsulation with unified error handling
- State: `provider` for state management, theme and locale
- UI/UX: dark mode, localization, complex scrolling (Sliver), WebView
- Device: image picking, vibration, device info
- Map: AMap 2D (Web supported)
- Engineering: integration & accessibility tests, modularized route management
- Animations/Charts: Lottie, line/pie charts, more demos (ripple, scratch card, etc.)
- QR scanning: `qr_code_scanner` (enable on demand)

You may download and experience it specifically by accessing the following links:

For the Android version, kindly click on the link provided: [Download here](https://www.pgyer.com/oEm8me), and enter the password: `111111`.

As for iOS, you will need to download and run the code on your own.

For web experience, please visit: https://simplezhli.github.io/flutter_deer/

## Requirements

[![flutter_deer driver](https://github.com/simplezhli/flutter_deer/actions/workflows/flutter-drive.yml/badge.svg?branch=master)](https://github.com/simplezhli/flutter_deer/actions/workflows/flutter-drive.yml)

- Flutter 3.38.x (stable)
- Dart 3.10.x
- iOS minimum `iOS 14.0+`
- Android `compileSdk/targetSdk 36`

Note: On Windows/macOS, the project mainly serves UI preview; verify native capabilities on device/simulator.

## Getting Started

1. Install Flutter (stable channel), ensure `flutter --version` is 3.38.x
2. Fetch dependencies: `flutter pub get`
3. Run
   - Android: `flutter run -d android`
   - iOS: `flutter run -d ios` (for native libs, run `cd ios && pod install` first)
   - Web: `flutter run -d chrome`
4. Build
   - Android: `flutter build apk`
   - iOS: `flutter build ios`

Optional: to enable QR scanning, uncomment the related entries in `pubspec.yaml` and configure platform permissions.

## Routing Migration

- Introduced `go_router` for Navigator 2.0
- Existing `NavigatorUtils` calls remain functional via a compatibility layer
- Modules including WebView, Login, Goods, Orders, Store, Account, Settings, and Statistics are integrated with the new routing configuration

## Build & Testing

- For best performance, build release packages: `flutter build apk` / `flutter build ios`
- Integration tests and demo: `flutter drive --target=test_driver/driver.dart`
 
## Troubleshooting

- iOS CocoaPods/FFI architecture mismatch: use ARM-native `ffi 1.15.5` and ensure Pod sources are accessible; consider using mirrors when needed
- `qr_code_scanner` may fail to fetch sub-dependencies under certain network conditions; temporarily disable or configure mirrors before re-enabling
- Refer to `docs` for iOS/Android issue summaries

## Summary of Experience

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
    
## Tripartite library used

| library                         | Functionality             |
| -------------------------- | --------------- |
| [dio](https://github.com/cfug/dio)                            | **Networking library**       |
| [provider](https://github.com/rrousselGit/provider)                   | **State management**     |
| [flutter_2d_amap](https://github.com/simplezhli/flutter_2d_amap)      | **2D map from Amap**   |
| [cached_network_image](https://github.com/renefloor/flutter_cached_network_image)       | **Image loading**       |
| [go_router](https://github.com/flutter/packages/tree/main/packages/go_router) | **Routing (Navigator 2.0)**     |
| [flutter_oktoast](https://github.com/OpenFlutter/flutter_oktoast)     | **Toast notifications**        |
| [common_utils](https://github.com/Sky24n/common_utils)                | **Common Dart utility library**     |
| [flutter_slidable](https://github.com/letsar/flutter_slidable)        | **Swipe-to-delete**     |
| [flustars](https://github.com/Sky24n/flustars)                        | **Common Flutter utility library**       |
| [flutter_swiper](https://github.com/best-flutter/flutter_swiper)      | **Flutter carousel component**       |
| [url_launcher](https://github.com/flutter/plugins/tree/master/packages/url_launcher)   | **Plugin for launching URLs**       |
| [image_picker](https://github.com/flutter/plugins/tree/master/packages/image_picker)   | **Plugin for selecting images** |
| [rxdart](https://github.com/ReactiveX/rxdart)                         | **Reactive extensions for Dart** |
| [webview_flutter](https://github.com/flutter/plugins/tree/master/packages/webview_flutter)    | **WebView plugin**       |
| [keyboard_actions](https://github.com/diegoveloper/flutter_keyboard_actions)                  | **Handling keyboard events**       |
| [azlistview](https://github.com/flutterchina/azlistview)              | **City selection list**   |
| [date_utils](https://github.com/apptreesoftware/date_utils)           | **Common date utility classes** |
| [bezier_chart](https://github.com/aeyrium/bezier-chart)               | **Bezier chart**       |
| [sprintf](https://github.com/Naddiseo/dart-sprintf)                   | **String formatting**   |
| [qr_code_scanner](https://github.com/juliuscanute/qr_code_scanner)     | **Scanning QR codes** |
| [intl](https://github.com/dart-lang/intl)     | **Localization** |
| [device_info_plus](https://github.com/fluttercommunity/plus_plugins/tree/main/packages/device_info_plus)     | **Getting device information** |
| [vibration](https://github.com/benjamindean/flutter_vibration)     | **Vibration** |
| [lottie](https://github.com/xvrh/lottie-flutter)     | **Animation effects** |

For details, please refer to the [pubspec.yaml](https://github.com/simplezhli/flutter_deer/blob/master/pubspec.yaml) file.  

## Plan

- [x] Web support
- [x] Null-safety migration
- [x] Navigator 2.0 (go_router) migration & compatibility
- [ ] Ongoing modular improvements and cross-platform validation

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
